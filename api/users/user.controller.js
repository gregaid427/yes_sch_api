const { sign } = require("jsonwebtoken");
const bcrypt = require("bcrypt");
const nodemailer = require("nodemailer");
const jwt = require("jsonwebtoken");
const pool = require("../../config/database");
const logger = require("../../util/logger.js");
var createHash = require("hash-generator");

// mail sender details
var transporter = nodemailer.createTransport({
  // service: "gmail",
  host: process.env.MAILING_HOST,
  port: 465,
  auth: {
    user: process.env.MAILING_USER,
    pass: process.env.MAILING_PASSWORD,
  },
  secure: true,
  tls: {
    rejectUnauthorized: false,
  },
});

function getUserByEmail(email, callBack) {
  pool.query(
    `select * from users where email = ? `,
    [email],
    (error, results, fields) => {
      if (error) {
        callBack(error);
      }
      return callBack(null, results[0]);
    }
  );
}
module.exports = {
  createUser: async (req, res) => {
    const data = req.body;

    const saltRounds = 10;

    var hashedPass = await bcrypt.hash(data.password, saltRounds);

    const userPin = Math.floor(Math.random() * 9000 + 1000);
    let date = new Date();
    date = date.toUTCString();

    const parent = data.parent != undefined ? "100" : 0;
    const student = data.student != undefined ? "200" : 0;
    const expenseManage = data.examManage != undefined ? "400" : 0;
    const examManage = data.examManage != undefined ? "500" : 0;
    const feesManage = data.feesManage != undefined ? "600" : 0;
    const teacher = data.teacher != undefined ? "300" : 0;
    const admin = data.admin != undefined ? "700" : 0;
    const superAdmin = data.superAdmin != undefined ? "800" : 0;

    function userCreater(sqlQuery) {
      pool.query(sqlQuery, (error, result) => {
        /////////////////////// check if initial data insert is successful then proceed to insert general users data

        if (result.affectedRows == 1) {
          let sqlQuery1 = `insert into users (email,createdAt,createdBy,pincode,role,password,parent,student,admin,superAdmin,feesManage,expenseManage,examManage,teacher ) values
          ('${data.email}','${date}','${data.createdBy}',${userPin},'${data.role}','${hashedPass}','${parent}','${student}','${admin}','${superAdmin}','${feesManage}','${examManage}','${expenseManage}','${teacher}')`;

          pool.query(sqlQuery1, (error, result) => {
            if (error) {
              logger.info(
                `${req.method} ${req.originalUrl},'DB error:'${error.sqlMessage}, create new user`
              );
              return res
                .status(500)
                .json({ success: 0, error: "internal server error" });
            }

            if (result.affectedRows == 1) {
              logger.info(
                `${req.method} ${req.originalUrl}, create new user successful`
              );

              const signedToken = jwt.sign(
                { data: result.email },
                process.env.JWT_KEY
              );

              // send mail to user email
              var mailOptions = {
                from: 'Sentel Support "seedo@seedogh.com"',
                to: result.email,
                subject: "Email Verification",
                html: `<h2>Thanks for registering on our Platform</h2>
                  <h4>Kindly click on the link below to verify your account</h2>
    
                  
                      <a href=" https://optimumpay.vercel.app/admin9/${result.email}/verify/${signedToken}" >click this link to verify Email </a>`,
              };
              transporter.sendMail(mailOptions, function (error, info) {
                const jsontoken = sign(
                  { result: result.userId },
                  process.env.JWT_KEY3
                );

                let logInfo;
                if (data.role == "student") {
                  logInfo = { user: data.email, pass: data.password };
                } else {
                  logInfo = "";
                }
                if (error) {
                  console.log("mail not sent");
                  console.log(signedToken);
                  result.password = "";
                  return res.status(200).json({
                    success: 1,
                    message: "sign up  successful",
                    userPin: userPin,
                    data: logInfo,
                    access_token: jsontoken,
                    Verification_mail: "mail not sent - network Connectivity",
                  });
                } else {
                  console.log("verification mail sent");
                  return res.status(200).json({
                    success: 1,
                    message: "sign up successful",
                    data: logInfo,
                    access_token: jsontoken,
                    Verification_mail: "mail sent",
                    userPin: userPin,
                  });
                }
              });
            }
          });
        } else
          res.status(500).json({ success: 0, error: "internal server error" });
      });
    }

    function idGenerator() {
      // let month = new Date().getMonth() + 1
      let year = new Date().getFullYear();
      return year;
    }

    let partId = await idGenerator();

    //check if email/username exists
    getUserByEmail(data.email, (err, results) => {
      if (results) {
        return res.status(200).json({
          success: 0,
          message: "Email Already Taken",
          data: [],
        });
      }

      // if not create user
      else {
        let sqlQuery;

        //when user is parent
        if (data.role == "parent") {
          sqlQuery = `insert into parent (pEmail,pGender,pLastName,pFirstName,pOtherName,contact1,contact2,address,student_id ) values
          ('${data.email}','${data.gender}','${data.lastName}','${data.firstName}','${data.otherName}','${data.contact1}','${data.contact2}','${data.address}','${data.student_id}')`;

          userCreater(sqlQuery);
        }

        //when user is student
        if (data.role == "student") {
          let sqlQuery3 = `select student_id from student order by id desc limit 1  `;

          pool.query(sqlQuery3, (error, result) => {
            function myresult() {
              let val = result[0].student_id;
              val = val.slice(-4);
              val = parseInt(val) + 1;
              return "std" + partId + val;
            }

            // check if db is empty start with a default student_id
            const student_id = result[0] ? myresult() : "STD" + partId + "1110";

            sqlQuery = `insert into student (student_id,firstName,lastName,otherName,contact1,contact2,class,section,religion,dateofbirth,gender) values
                 ('${student_id}','${data.firstName}','${data.lastName}','${data.otherName}','${data.contact1}','${data.contact2}','${data.class}','${data.section}','${data.religion}','${data.dateofbirth}','${data.gender}')`;

            let GeneratedEmail = data.firstName.slice(0, 3) + createHash(4);
            let GeneratedPassword = createHash(6);

            data.email = GeneratedEmail.toLowerCase();
            data.password = GeneratedPassword;
            userCreater(sqlQuery);
          });
        }

        //when user is staff
        if (data.role == "staff") {
          let sqlQuery3 = `select staff_id from staff order by id desc limit 1  `;
          pool.query(sqlQuery3, (error, result) => {
            console.log(error);

            function myresult() {
              let val = result[0].staff_id;
              console.log(val);

              val = val.slice(-4);
              val = parseInt(val) + 1;
              return "stf" + partId + val;
            }

            // check if db is empty start with a default student_id
            const staff_id = result[0] ? myresult() : "stf" + partId + "1110";

            sqlQuery = `insert into staff (sEmail,sGender,sLastName,sFirstName,sOtherName,contact1,contact2,address,staff_id ,definedRole,info) values
          ('${data.email}','${data.gender}','${data.lastName}','${data.firstName}','${data.otherName}','${data.contact1}','${data.contact2}','${data.address}','${staff_id}','${data.definedRole}','${data.info}')`;

            userCreater(sqlQuery);
          });
        }
      }
    });
  },

  login: async (req, res) => {
    const body = req.body;
    getUserByEmail(body.email, async (err, results) => {
      if (err) {
        logger.info(
          `${req.originalUrl},'DB error:'${error.sqlMessage}, server error`
        );
        return res.status(500).json({
          success: 0,
          message: "Database Connection Error",
          data: [],
        });
      }

      if (results == undefined) {
        logger.info(
          `${req.method} ${req.originalUrl}, user doesn't exist, authentication `
        );
        return res.status(200).json({
          success: 0,
          data: [],
          message: "Incorrect Email or Password",
        });
      }

      var compare;
      async function compareReseult() {
        compare = await bcrypt.compare(body.password, results.password);
        return compare;
      }
      console.log(compare);

      const resultz = await compareReseult();

      if (resultz == true) {
        logger.info(
          `${req.method} ${req.originalUrl}, correct credentials, authentication`
        );
        const jsontoken = sign({ result: results.email }, process.env.JWT_KEY);
        results.password = "";
        results.pincode = "";

        return res.status(200).json({
          success: 1,
          data: results,
          access_token: jsontoken,
          roles: [
            results.admin,
            results.superAdmin,
            results.teacher,
            results.student,
            results.examManage,
            results.expenseManage,
            results.feesManage,
            results.parent,
            results.student,
          ],
        });
        // });
      } else {
        logger.info(
          `${req.method} ${req.originalUrl}, Incorrect Email and Password combination`
        );
        return res.status(200).json({
          success: 0,
          message: "Invalid Email or Password",
          data: [],
        });
      }
    });
  },

  getUserByUserId: (req, res) => {
    const id = parseInt(req.params.userId);
    let sqlQuery = `select * from users where userId = ${id}`;
    pool.query(sqlQuery, (error, result) => {
      if (error) {
        logger.info(
          `${req.method} ${req.originalUrl},'DB error:'${error.sqlMessage}, fetch user by id`
        );
        return res
          .status(500)
          .json({ success: 0, error: "internal server error" });
      }

      if (!result) {
        logger.info(
          `${req.method} ${req.originalUrl}, fetch user by id: no record found`
        );
        return res
          .status(200)
          .json({ success: 1, error: "fetch user by id: no record found" });
      }
      logger.info(`${req.method} ${req.originalUrl}, fetch user by id`);
      res.status(200).json({ success: 1, data: result });
    });
  },

  getUsers: (req, res) => {
    let sqlQuery = `select * from users`;
    pool.query(sqlQuery, (error, result) => {
      if (error) {
        logger.info(
          `${req.method} ${req.originalUrl}, 'server error', fetch all users`
        );

        return res
          .status(500)
          .json({ success: 0, error: "internal server error" });
      }

      logger.info(
        `${req.method} ${req.originalUrl},'success', fetch all users`
      );

      res.status(200).json({ success: 1, data: result });
    });
  },

  getOTPpin: (req, res) => {
    const id = parseInt(req.params.userId);
    let sqlQuery = `select pincode from users where userId = ${id}`;
    pool.query(sqlQuery, (error, result) => {
      if (error) {
        logger.info(
          `${req.method} ${req.originalUrl},'DB error:'${error.sqlMessage}, get pin user by id`
        );
        return res
          .status(500)
          .json({ success: 0, error: "internal server error" });
      }

      if (!result) {
        logger.info(
          `${req.method} ${req.originalUrl}, fetch pin by user id: no record found`
        );
        return res
          .status(200)
          .json({ success: 1, error: "fetch pin by id: no record found" });
      }
      logger.info(`${req.method} ${req.originalUrl}, fetch pin by id`);
      res.status(200).json({ success: 1, data: result });
    });
  },

  resetOTP: (req, res) => {
    const userPin = Math.floor(Math.random() * 9000 + 1000);
    const id = parseInt(req.params.userId);
    let sqlQuery = `update users set pincode = ${userPin} where userId = ${id}`;
    pool.query(sqlQuery, (error, result) => {
      if (error) {
        logger.info(
          `${req.method} ${req.originalUrl},'DB error:'${error.sqlMessage}, reset pin user by id`
        );
        return res
          .status(500)
          .json({ success: 0, error: "internal server error" });
      }

      if (result.affectedRows != 1) {
        logger.info(
          `${req.method} ${req.originalUrl}, fetch pin by user id: no user record found`
        );
        return res
          .status(200)
          .json({ success: 1, error: "fetch pin by id: no user record found" });
      }

      logger.info(`${req.method} ${req.originalUrl}, update user pin by id`);
      return res.status(200).json({
        success: 1,
        message: "OTP updated successfully",
        data: userPin,
      });
    });
  },

  updateUsers: (req, res) => {
    const data = req.body;

    let sqlQuery = `update users set email ='${data.email}',firstName='${data.firstName}',lastName='${data.lastName}',otherName='${data.otherName}',contact1='${data.contact1}',contact2='${data.contact2}',gender ='${data.gender}',createdBy='${data.createdBy}',role='${data.role}',active='${data.active}' where userId = ${data.userId}`;

    pool.query(sqlQuery, (error, result) => {
      if (error) {
        logger.info(
          `${req.method} ${req.originalUrl},'DB error:'${error.sqlMessage}, update user data`
        );
        return res
          .status(500)
          .json({ success: 0, error: "internal server error" });
      }

      if (result.affectedRows != 1) {
        logger.info(
          `${req.method} ${req.originalUrl}, update user data: no record found`
        );
        return res
          .status(200)
          .json({ success: 0, error: "update user data: no record found" });
      }

      if (result.affectedRows == 1) {
        logger.info(`${req.method} ${req.originalUrl}, update user data`);
        return res
          .status(200)
          .json({ success: 1, error: "update user data success" });
      }
    });
  },

  verifymail: (req, res) => {
    const body = req.body;

    //check if email exists
    getUserByEmail(body.email, (err, results) => {
      if (results == undefined) {
        console.log(err);
        return res.status(200).json({
          success: 0,
          message: "Link Error: Email Mismatch",
          data: [],
        });
      }
      console.log(body.email);
      console.log(body.token);
      // console.log(results.token);

      //check if token code matches code in db
      try {
        var decoded = jwt.verify(body.token, process.env.JWT_KEY);
      } catch (err) {
        return res.status(200).json({
          success: 0,
          message: "Lnk Expired/Error",
        });
      }

      console.log(decoded);
      if (results.email === decoded.data) {
        //update status in db
        let sqlQuery = `update users set verified='true' where email = '${body.email}'`;
        pool.query(sqlQuery, (error, result) => {
          if (error) {
            logger.info(
              `${req.method} ${req.originalUrl},'DB error:'${error.sqlMessage}, verify email by token`
            );
            return res
              .status(500)
              .json({ success: 0, error: "internal server error" });
          }

          logger.info(
            `${req.method} ${req.originalUrl}, verify email by jwt signed token successful`
          );
          res.status(200).json({ success: 1, data: result });
        });
      } else {
        //throw error when code mismatches
        return res.status(200).json({
          success: 0,
          message: "Link Error - code mismatch",
        });
      }
      const data = results.email;
      console.log(data);
    });
  },
  //it takes email, token sent by mail and new password to update existing password
  resetPassword: (req, res) => {
    const body = req.body;
    getUserByEmail(body.email, (err, results) => {
      if (err) {
        console.log(err);
      }
      if (!results) {
        return res.status(200).json({
          success: 0,
          data: "Invalid email or password",
        });
      }
      //checking wether posted token is the correct signed token
      try {
        var decoded = jwt.verify(body.token, process.env.JWT_KEY);
      } catch (err) {
        return res.status(200).json({
          success: 0,
          message: "Lnk Expired/Error",
        });
      }

      console.log(decoded);
      if (decoded.data === results.email) {
        const salt = bcrypt.genSaltSync(10);
        body.password = bcrypt.hashSync(body.password, salt);
        let sqlQuery = `update users set password = ${body.password} where email = ${body.email}`;
        pool.query(sqlQuery, (error, result) => {
          if (error) {
            logger.info(
              `${req.method} ${req.originalUrl},'DB error:'${error.sqlMessage}, update user password`
            );
            return res
              .status(500)
              .json({ success: 0, error: "internal server error" });
          }

          if (result.affectedRows != 1) {
            logger.info(
              `${req.method} ${req.originalUrl}, update user password: no user record found`
            );
            return res.status(200).json({
              success: 0,
              error: "update user password: no user record found",
            });
          }
          if (result.affectedRows == 1) {
            logger.info(
              `${req.method} ${req.originalUrl}, update user password success`
            );
            return res.status(200).json({
              success: 1,
              message: "update user password successfully",
            });
          }
        });
      } else {
        return res.status(200).json({
          success: 1,
          message: "link Error",
        });
      }
    });
  },

  //responsible for verifying email exist and then send out an email
  mailPasswordreset: (req, res) => {
    const body = req.body;
    getUserByUserEmail(body.email, (err, results) => {
      if (!results) {
        return res.status(200).json({
          success: 0,
          message: "Invalid email or password",
          data: [],
        });
      }
      if (!err) {
        const signedToken = jwt.sign(
          { data: results.email },
          process.env.JWT_KEY,
          {
            expiresIn: "1h",
          }
        );
        console.log(signedToken);
        var mailOptions = {
          from: 'Support "seedo@seedogh.com"',
          to: body.email,
          subject: "Password Reset",
          html: `<h2>Kindly follow link to reset your password</h2>
      <h4>Please ignore this mail if you did not request for password reset</h2>
      <h4>Link expires in 1 hour</h2>
      `,
        };
        transporter.sendMail(mailOptions, function (error, info) {
          if (error) {
            console.log("mail not sent");
            return res.status(200).json({
              success: 0,
              Error: "mail not sent - internet Connectivity issue",
              data: [],
            });
          } else {
            console.log("verification mail sent");
            return res.status(200).json({
              success: 1,
              message: "verification mail sent",
              data: [],
            });
          }
        });
      }
    });
  },

  deleteUser: (req, res) => {
    const id = req.body;
    let sqlQuery = `delete from users where userId = ${id.userId}`;
    pool.query(sqlQuery, (error, result) => {
      if (error) {
        logger.info(
          `${req.method} ${req.originalUrl},'DB error:'${error.sqlMessage}, delete user by id`
        );
        return res
          .status(500)
          .json({ success: 0, error: "internal server error" });
      }

      if (result.affectedRows != 1) {
        logger.info(
          `${req.method} ${req.originalUrl}, delete user by user id: no user record found`
        );
        return res.status(200).json({
          success: 0,
          error: "delete user by id: no user record found",
        });
      }
      if (result.affectedRows == 1) {
        logger.info(`${req.method} ${req.originalUrl}, delete user pin by id`);
        return res.status(200).json({
          success: 1,
          message: "user deleted successfully",
        });
      }
    });
  },
};
