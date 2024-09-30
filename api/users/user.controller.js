const { sign } = require("jsonwebtoken");
const bcrypt = require("bcrypt");
const nodemailer = require("nodemailer");
const jwt = require("jsonwebtoken");
const pool = require("../../config/database");
// const logger = require("../../util/logger.js");
var createHash = require("hash-generator");
const uploadFile = require("./upload.js");
const uploadFile1 = require("./upload1.js");

let date = new Date();
date = date.toUTCString();
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
  createUserStaff: async (req, res) => {
    //await uploadFile(req, res);
    //console.log(res)

    const data = req.body;
    var customStaffId = hashgenerator(6);

    function hashgenerator(num) {
      return createHash(num);
    }

    const userPin = Math.floor(Math.random() * 9000 + 1000);

    let date = new Date();
    date = date.toUTCString();

    function idGenerator() {
      // let month = new Date().getMonth() + 1
      let year = new Date().getFullYear();
      return year;
    }

    let partId = await idGenerator();

    const saltRounds = 10;

    let password = await bcrypt.hash(data.password, saltRounds);

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
        let sqlQuery = `insert into staff (userId,sEmail,sGender,sLastName,sFirstName,contact1,contact2,address,definedRole,info) values
          ('${customStaffId}','${data.email}','${data.sex}','${data.lname}','${data.fname}','${data.contact1}','${data.contact2}','${data.address}','${data.role}','${data.info}')`;

        pool.query(sqlQuery, (error, result) => {
          console.log(error);

          /////////////////////// check if initial data insert is successful then proceed to insert general users data
          if (result.affectedRows == 1) {
            let sqlQuery1 = `insert into users (userId,email,createdAt,createdBy,pincode,role,password,rolecode ) values
              ('${customStaffId}','${data.email}','${date}','${data.createdBy}',${userPin},'staff','${password}','${data.rolecode}')`;

            pool.query(sqlQuery1, (error, result) => {
              if (error) {
                // logger.info(
                //   `${req.method} ${req.originalUrl},'DB error:'${error.sqlMessage}, create new user -error`
                // );
                return res.status(500).json({
                  success: 0,
                  error: "internal server error -create New user",
                });
              }

              if (result.affectedRows == 1) {
                console.log("create new user successful");
                let sqlQuery = `select * from staff left join users on staff.userId = users.userId  where users.role = 'staff'`;
                pool.query(sqlQuery, (error, result) => {
                  res.status(200).json({ success: 1, data: result });
                });
                const signedToken = jwt.sign(
                  { data: result.email },
                  process.env.JWT_KEY
                );

                // send mail to user email
                var mailOptions = {
                  from: 'Yes School Support "seedo@seedogh.com"',
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

                  // if (error) {
                  //   console.log("mail not sent");
                  //   console.log(signedToken);
                  //   result.password = "";
                  //   return res.status(200).json({
                  //     success: 1,
                  //     message: "sign up  successful",
                  //     userPin: userPin,
                  //     data: logInfo,
                  //     access_token: jsontoken,
                  //     Verification_mail: "mail not sent - network Connectivity",
                  //   });
                  // } else {
                  //   console.log("verification mail sent");
                  //   return res.status(200).json({
                  //     success: 1,
                  //     message: "sign up successful",
                  //     data: logInfo,
                  //     access_token: jsontoken,
                  //     Verification_mail: "mail sent",
                  //     userPin: userPin,
                  //   });
                  // }
                });
              }
            });
          } else
            res.status(500).json({
              success: 0,
              error: "internal server error",
              message: error,
            });
        });
      }
    });
  },

  setStudentPicture: async (req, res) => {
    await uploadFile(req, res);
    const data = JSON.parse(req.body.data);
    console.log(data);

    let link = process.env.SERVERLINK + "/" + data.filename;
    let sqlQuery = `update student set filename='${data.filename}',imagelink = '${link}'
     where userId = '${data.id}' `;

    pool.query(sqlQuery, (error, result) => {
      console.log(result);
      console.log(error);

      if (error) {
        return res
          .status(500)
          .json({ success: 0, Message: "Error Uploadeding Image" });
      }

      if (result.affectedRows == 1) {
        return res
          .status(200)
          .json({ success: 1, Message: "Student Image Uploaded Successfully" });
      }
    });
  },

  setSchoolLogo: async (req, res) => {
    await uploadFile1(req, res);
    const data = JSON.parse(req.body.data);

    let link = process.env.SERVERLINK + "/" + data.filename;
    let sqlQuery = `update school set filename='${data.filename}',logolink = '${link}'
     where id = '1' `;

    pool.query(sqlQuery, (error, result) => {
      //  console.log()
      if (error)
        return res
          .status(500)
          .json({ success: 0, Message: "Error Uploadeding Image" });

      if (result.affectedRows == 1) {
        return res
          .status(200)
          .json({ success: 1, Message: "Student Image Uploaded Successfully" });
      }
    });
  },

  createUserStudent: async (req, res) => {
    const data = req.body;
    const saltRounds = 10;

    var customStudentId = hashgenerator(6);
    var customguardian1Id = hashgenerator(6);
    var customguardian2Id = hashgenerator(6);

    function hashgenerator(num) {
      return createHash(num);
    }
    var studentPass = hashgenerator(5);
    var gaurdian1Pass = hashgenerator(5);
    var gaurdian2Pass = hashgenerator(5);

    var hashedPass = await bcrypt.hash(studentPass, saltRounds);
    var hashedPass1 = await bcrypt.hash(gaurdian1Pass, saltRounds);
    var hashedPass2 = await bcrypt.hash(gaurdian2Pass, saltRounds);

    const userPin = Math.floor(Math.random() * 9000 + 1000);
    const userPin1 = Math.floor(Math.random() * 9000 + 1000);

    function userCreaterStudent(
      sqlQuery,
      customStudentId,
      customguardian1Id,
      customguardian2Id,
      sqlQueryAccount
    ) {
      // first create student into student table
      pool.query(sqlQuery, (error, result) => {
        if (error) return console.log(error);

        /////////////////////// check if initial data insert is successful then proceed to insert general users data
        let GeneratedEmail = data.firstName + createHash(4);
        let GeneratedEmail1 = data.gfName1.toString() + createHash(4);
        let GeneratedEmail2 = data.gfName2.toString() + createHash(4);

        data.email = GeneratedEmail.toLowerCase();

        data.gemail1 =
          data.gemail1 == "" ? GeneratedEmail1.toLowerCase() : data.gemail1;

        data.gemail2 =
          data.gemail2 == "" ? GeneratedEmail2.toLowerCase() : data.gemail2;
        console.log(customStudentId + customguardian1Id + customguardian2Id);
        if (result.affectedRows == 1) {
          // insert first guardian into users table
          if (data.gfName1 != "") {
            let sqlQuery1 = `insert into users (email,createdAt,createdBy,pincode,role,password ,userId) values
          ('${data.gemail1}','${date}','${data.createdBy}',${userPin1},'parent','${hashedPass1}','${customguardian1Id}')`;

            pool.query(sqlQuery1, (error, result) => {
              if (error) {
                console.log("guardian 1 error");
                return res.status(500).json({ success: 0, Message: error });
              }

              if (result.affectedRows == 1) {
                const signedToken = jwt.sign(
                  { data: result.email },
                  process.env.JWT_KEY
                );

                // send mail to user email
                // var mailOptions = {
                //   from: 'Sentel Support "seedo@seedogh.com"',
                //   to: result.email,
                //   subject: "Email Verification",
                //   html: `<h2>Thanks for registering on our Platform</h2>
                //     <h4>Kindly click on the link below to verify your account</h2>

                //         <a href=" https://optimumpay.vercel.app/admin9/${result.email}/verify/${signedToken}" >click this link to verify Email </a>`,
                // };
                // transporter.sendMail(mailOptions, function (error, info) {
                //   const jsontoken = sign(
                //     { result: result.userId },
                //     process.env.JWT_KEY3
                //   );

                //   let logInfo;
                //   if (data.role == "student") {
                //     logInfo = { user: data.email, pass: data.password };
                //   } else {
                //     logInfo = "";
                //   }
                //   if (error) {
                //     console.log("mail not sent");
                //     console.log(signedToken);
                //     result.password = "";
                //     return res.status(200).json({
                //       success: 1,
                //       message: "sign up  successful",
                //       userPin: userPin,
                //       data: logInfo,
                //       access_token: jsontoken,
                //       Verification_mail: "mail not sent - network Connectivity",
                //     });
                //   } else {
                //     console.log("verification mail sent");
                //     return res.status(200).json({
                //       success: 1,
                //       message: "sign up successful",
                //       data: logInfo,
                //       access_token: jsontoken,
                //       Verification_mail: "mail sent",
                //       userPin: userPin,
                //     });
                //   }
                // });
              }
            });
          }

          // insert second guardian into users table
          if (data.gfName2 != "") {
            let sqlQuery1 = `insert into users (email,createdAt,createdBy,pincode,role,password,userId ) values
          ('${data.gemail2}','${date}','${data.createdBy}',${userPin1},'parent','${hashedPass2}','${customguardian2Id}')`;

            pool.query(sqlQuery1, (error, result) => {
              if (error) {
                console.log("parent1 success");
                return res.status(500).json({ success: 0, Message: error });
              }

              if (result.affectedRows == 1) {
                const signedToken = jwt.sign(
                  { data: result.email },
                  process.env.JWT_KEY
                );

                // send mail to user email
                // var mailOptions = {
                //   from: 'Sentel Support "seedo@seedogh.com"',
                //   to: result.email,
                //   subject: "Email Verification",
                //   html: `<h2>Thanks for registering on our Platform</h2>
                //     <h4>Kindly click on the link below to verify your account</h2>

                //         <a href=" https://optimumpay.vercel.app/admin9/${result.email}/verify/${signedToken}" >click this link to verify Email </a>`,
                // };
                // transporter.sendMail(mailOptions, function (error, info) {
                //   const jsontoken = sign(
                //     { result: result.userId },
                //     process.env.JWT_KEY3
                //   );

                //   let logInfo;
                //   if (data.role == "student") {
                //     logInfo = { user: data.email, pass: data.password };
                //   } else {
                //     logInfo = "";
                //   }
                //   if (error) {
                //     console.log("mail not sent");
                //     console.log(signedToken);
                //     result.password = "";
                //     return res.status(200).json({
                //       success: 1,
                //       message: "sign up  successful",
                //       userPin: userPin,
                //       data: logInfo,
                //       access_token: jsontoken,
                //       Verification_mail: "mail not sent - network Connectivity",
                //     });
                //   } else {
                //     console.log("verification mail sent");
                //     return res.status(200).json({
                //       success: 1,
                //       message: "sign up successful",
                //       data: logInfo,
                //       access_token: jsontoken,
                //       Verification_mail: "mail sent",
                //       userPin: userPin,
                //     });
                //   }
                // });
              }
            });
          }

          // insert student into users table
          if (data.firstName != "") {
            let sqlQuery1 = `insert into users (email,createdAt,createdBy,pincode,role,password,userId) values
          ('${data.email}','${date}','${data.createdBy}',${userPin},'student','${hashedPass}','${customStudentId}')`;

            pool.query(sqlQuery1, (error, result) => {
              if (error) {
                console.log("student eeror error");
                return res.status(500).json({ success: 0, Message: error });
              }

              if (result.affectedRows == 1) {
                pool.query(sqlQueryAccount, (error, result) => {
                  if (error) {
                    console.log("student account error");
                    console.log(error);

                    return res.status(500).json({ success: 0, Message: error });
                  }
                });

                const signedToken = jwt.sign(
                  { data: result.email },
                  process.env.JWT_KEY
                );

                // send mail to user email
                // var mailOptions = {
                //   from: 'Sentel Support "seedo@seedogh.com"',
                //   to: result.email,
                //   subject: "Email Verification",
                //   html: `<h2>Thanks for registering on our Platform</h2>
                //     <h4>Kindly click on the link below to verify your account</h2>

                //         <a href=" https://optimumpay.vercel.app/admin9/${result.email}/verify/${signedToken}" >click this link to verify Email </a>`,
                // };
                // transporter.sendMail(mailOptions, function (error, info) {
                //   const jsontoken = sign(
                //     { result: result.userId },
                //     process.env.JWT_KEY3
                //   );

                //   let logInfo;
                //   if (data.role == "student") {
                //     logInfo = { user: data.email, pass: data.password };
                //   } else {
                //     logInfo = "";
                //   }
                //   if (error) {
                //     console.log("mail not sent");
                //     console.log(signedToken);
                //     result.password = "";
                //     return res.status(200).json({
                //       success: 1,
                //       message: "sign up  successful",
                //       userPin: userPin,
                //       data: logInfo,
                //       access_token: jsontoken,
                //       Verification_mail: "mail not sent - network Connectivity",
                //     });
                //   } else {
                //     console.log("verification mail sent");
                //     return res.status(200).json({
                //       success: 1,
                //       message: "sign up successful",
                //       data: logInfo,
                //       access_token: jsontoken,
                //       Verification_mail: "mail sent",
                //       userPin: userPin,
                //     });
                //   }
                // });
              }
            });
          }

          let studName =
            data.firstName + " " + data.otherName + " " + data.lastName;
          let guardian1 = data.gfName1 + " " + data.glName1;
          let guardian2 = data.gfName2 + " " + data.glName2;

          let dataArray = [
            {
              id: customStudentId,
              studentName: studName,
              studentEmail: data.email,
              studentPass: studentPass,
            },
            {
              guardian1Name: guardian1 != " " ? guardian1 : null,
              guardian1Email: data.gemail1,
              guardian1Pass: gaurdian1Pass,
            },
            {
              guardian2Name: guardian2 != " " ? guardian2 : null,
              guardian2Email: data.gemail2,
              guardian2Pass: gaurdian2Pass,
            },
          ];

          return res.status(200).json({
            success: 1,
            data: dataArray,
            message: "Student and/or Guardian created successfully",
          });
        } else
          res.status(500).json({
            success: 0,
            error: "internal server error",
            message: error,
          });
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

        // check if db is empty start with a default student_id

        let sqlQuery3 = `select student_id from student order by id desc limit 1  `;

        pool.query(sqlQuery3, (error, result) => {
          function myresult() {
            let val = result[0].student_id;
            val = val.slice(-4);
            val = parseInt(val) + 1;
            return "SD" + partId + val;
          }

          // check if db is empty start with a default student_id
          const student_id = result[0] ? myresult() : "SD" + partId + "1110";

          //inserting to guardian table when guardian info is posted together with student
          //after generating student id we need it to insert into guardian table for reference
          if (data.gfName1 != "") {
            sqlQuery = `insert into guardian (gEmail,gSex,gLastName,gFirstName,gContact1,gContact2,gAddress,student_id,gRelation,userId ) values
              ('${data.gemail1}','${data.gsex1}','${data.glName1}','${data.gfName1}','${data.contact1}','${data.contact2}','${data.gAddress1}','${student_id}','${data.gRelation1}','${customguardian1Id}') `;

            pool.query(sqlQuery, (error, result) => {
              console.log("guardian1 created successfully");
            });
          }

          //inserting to guardian table when guardian info is posted together with student
          //after generating student id we need it to insert into guardian table for reference
          if (data.gfName2 != "") {
            sqlQuery = `insert into guardian (gEmail,gSex,gLastName,gFirstName,gContact1,gContact2,gAddress,student_id,gRelation,userId ) values
              ('${data.gemail2}','${data.gsex2}','${data.glName2}','${data.gfName2}','${data.contact3}','${data.contact4}','${data.gAddress2}','${student_id}','${data.gRelation2}','${customguardian2Id}') `;

            pool.query(sqlQuery, (error, result) => {
              console.log("guardian2 created successfully");
            });
          }

          let link = process.env.SERVERLINK + "/" + data.filename;

          //insert into student table
          sqlQuery = `insert into student (userId,student_id,firstName,lastName,otherName,class,section,religion,dateofbirth,gender) values
            ('${customStudentId}','${student_id}','${data.firstName}','${data.lastName}','${data.otherName}','${data.class}','${data.section}','${data.religion}','${data.dateofbirth}','${data.gender}')`;
          let sqlQueryAccount = `insert into account (student_id,createdat,createdby) values ('${student_id}','${date}','${data.createdBy}')`;

          userCreaterStudent(
            sqlQuery,
            customStudentId,
            customguardian1Id,
            customguardian2Id,
            sqlQueryAccount
          );
        });
      }
    });
  },

  createUserGuardian: async (req, res) => {
    //  await uploadFile(req, res);
    // console.log(res)

    const data = req.body;
    var customguardian1Id = hashgenerator(6);

    function hashgenerator(num) {
      return createHash(num);
    }

    const userPin = Math.floor(Math.random() * 9000 + 1000);

    const saltRounds = 10;
    function generatemail() {
      return data.firstName + hashgenerator(3);
    }

    let custompassword = data.password == null ? hashgenerator(7) : data.email;

    let password = await bcrypt.hash(custompassword, saltRounds);
    let customEmail = data.email == null ? generatemail() : data.email;
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

        // when user is parent u need to post student id from client side
        sqlQuery = `insert into guardian (userId,gEmail,gSex,gLastName,gFirstName,gContact1,gContact2,gAddress,student_id,gRelation ) values
          ('${customguardian1Id}','${customEmail}','${data.sex}','${data.lastName}','${data.firstName}','${data.contact1}','${data.contact2}','${data.address}','${data.userId}','${data.relation}') `;

        pool.query(sqlQuery, (error, result) => {
          console.log(error);
          /////////////////////// check if initial data insert is successful then proceed to insert general users data
          if (result.affectedRows == 1) {
            let sqlQuery1 = `insert into users (userId,email,createdAt,createdBy,pincode,role,password ) values
              ('${customguardian1Id}','${customEmail}','${date}','${data.createdBy}',${userPin},'${data.role}','${password}')`;

            pool.query(sqlQuery1, (error, result) => {
              if (error) {
                // logger.info(
                //   `${req.method} ${req.originalUrl},'DB error:'${error.sqlMessage}, create new user -error`
                // );
                return res.status(500).json({
                  success: 0,
                  error: "internal server error -create New user",
                });
              }

              if (result.affectedRows == 1) {
                // logger.info(
                //   `${req.method} ${req.originalUrl}, create new user successful`
                // );
                let data1 = {
                  name: data.firstName + " " + data.lastName,
                  username: customEmail,
                  password: custompassword,
                };
                res.status(200).json({
                  success: 1,
                  Message: "create New user successful ",
                  data: data1,
                });

                const signedToken = jwt.sign(
                  { data: result.email },
                  process.env.JWT_KEY
                );

                // send mail to user email
                var mailOptions = {
                  from: 'Yes School Support "seedo@seedogh.com"',
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

                  // if (error) {
                  //   console.log("mail not sent");
                  //   console.log(signedToken);
                  //   result.password = "";
                  //   return res.status(200).json({
                  //     success: 1,
                  //     message: "sign up  successful",
                  //     userPin: userPin,
                  //     data: logInfo,
                  //     access_token: jsontoken,
                  //     Verification_mail: "mail not sent - network Connectivity",
                  //   });
                  // } else {
                  //   console.log("verification mail sent");
                  //   return res.status(200).json({
                  //     success: 1,
                  //     message: "sign up successful",
                  //     data: logInfo,
                  //     access_token: jsontoken,
                  //     Verification_mail: "mail sent",
                  //     userPin: userPin,
                  //   });
                  // }
                });
              }
            });
          } else
            res.status(500).json({
              success: 0,
              error: "internal server error",
              message: error,
            });
        });
      }
    });
  },

  login: async (req, res) => {
    const body = req.body;
    getUserByEmail(body.email, async (err, results) => {
      if (err) {
        // logger.info(
        //   `${req.originalUrl},'DB error:'${err.sqlMessage}, server error`
        // );
        return res.status(500).json({
          success: 0,
          message: "Database Connection Error",
          data: [],
        });
      }

      if (results == undefined) {
        // logger.info(
        //   `${req.method} ${req.originalUrl}, user doesn't exist, authentication `
        // );
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

      const resultz = await compareReseult();

      if (resultz == true) {
        // logger.info(
        //   `${req.method} ${req.originalUrl}, correct credentials, authentication`
        // );
        const jsontoken = sign({ result: results.email }, process.env.JWT_KEY);

        if (results.role == "student") {
          let sqlQuery = `select * from student where userId ='${results.userId}'  `;
          pool.query(sqlQuery, (error, result) => {
            let returnData = [
              {
                userId: results.userId,
                rolecode: results.rolecode,
                data: result,
                role: results.role,
                email: results.email,
                token: jsontoken,
              },
            ];
            if (error) {
              return res.status(201).json({
                success: 1,
                data: returnData,
                token: jsontoken,
                message: "User data Does not Exist",
              });
            }

            return res.status(200).json({
              success: 1,
              data: returnData,
              token: jsontoken,
            });
          });
        }

        if (results.role == "parent") {
          let sqlQuery = `select * from guardian where userId ='${results.userId}'  `;
          pool.query(sqlQuery, (error, result) => {
            let returnData = [
              {
                userId: results.userId,
                rolecode: results.rolecode,
                data: result,
                role: results.role,
                email: results.email,
                token: jsontoken,
              },
            ];
            if (error) {
              return res.status(201).json({
                success: 1,
                data: returnData,
                token: jsontoken,
                message: "User data Does not Exist",
              });
            }

            return res.status(200).json({
              success: 1,
              data: returnData,
              token: jsontoken,
            });
          });
        }

        if (results.role == "staff") {
          let sqlQuery = `select * from staff where userId ='${results.userId}'  `;
          pool.query(sqlQuery, (error, result) => {
            let returnData = [
              {
                userId: results.userId,
                rolecode: results.rolecode,
                data: result,
                role: results.role,
                email: results.email,
                token: jsontoken,
              },
            ];
            if (error) {
              return res.status(201).json({
                success: 1,
                data: returnData,
                token: jsontoken,
                message: "User data Does not Exist",
              });
            }

            return res.status(200).json({
              success: 1,
              data: returnData,
            });
          });
        }

        // });
      } else {
        // logger.info(
        //   `${req.method} ${req.originalUrl}, Incorrect Email and Password combination`
        // );
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
        // logger.info(
        //   `${req.method} ${req.originalUrl},'DB error:'${error.sqlMessage}, fetch user by id`
        // );
        return res
          .status(500)
          .json({ success: 0, error: "internal server error", message: error });
      }

      if (!result) {
        // logger.info(
        //   `${req.method} ${req.originalUrl}, fetch user by id: no record found`
        // );
        return res
          .status(200)
          .json({ success: 1, error: "fetch user by id: no record found" });
      }
      // logger.info(`${req.method} ${req.originalUrl}, fetch user by id`);
      res.status(200).json({ success: 1, data: result });
    });
  },

  getUserByUserIdRole: (req, res) => {
    const id = req.body.id;
    const role = req.body.role;

    let query =
      role == "student"
        ? `select * from student where userId = '${id}'`
        : role == "staff"
        ? `select * from staff where userId = '${id}'`
        : `select * from guardian where userId = '${id}'`;

    pool.query(query, (error, result) => {
      if (error) {
        // logger.info(
        //   `${req.method} ${req.originalUrl},'DB error:'${error.sqlMessage}, fetch user by id`
        // );
        return res
          .status(500)
          .json({ success: 0, error: "internal server error", message: error });
      }

      if (!result) {
        // logger.info(
        //   `${req.method} ${req.originalUrl}, fetch user by id: no record found`
        // );
        return res
          .status(200)
          .json({ success: 1, error: "fetch user by id: no record found" });
      }
      // logger.info(`${req.method} ${req.originalUrl}, fetch user by id`);
      res.status(200).json({ success: 1, data: result });
    });
  },

  getUsers: (req, res) => {
    let sqlQuery = `select * from users`;
    pool.query(sqlQuery, (error, result) => {
      if (error) {
        // logger.info(
        //   `${req.method} ${req.originalUrl}, 'server error', fetch all users`
        // );

        return res
          .status(500)
          .json({ success: 0, error: "internal server error", message: error });
      }

      // logger.info(
      //   `${req.method} ${req.originalUrl},'success', fetch all users`
      // );

      res.status(200).json({ success: 1, data: result });
    });
  },
  schoolinfo: (req, res) => {
    let sqlQuery = `select * from school`;
    pool.query(sqlQuery, (error, result) => {
      if (error) {
        // logger.info(
        //   `${req.method} ${req.originalUrl}, 'server error', fetch all users`
        // );

        return res
          .status(500)
          .json({ success: 0, error: "internal server error", message: error });
      }

      // logger.info(
      //   `${req.method} ${req.originalUrl},'success', fetch all users`
      // );

      res.status(200).json({ success: 1, data: result });
    });
  },
  schoolinfoupdate: (req, res) => {
    let data = req.body;

    let sqlQuery =
      data.id == null
        ? `insert into school (name,address,contact1,contact2,email) values('${data.name}','${data.address}','${data.contact1}','${data.contact2}','${data.email}')`
        : `update school set name='${data.name}',address='${data.address}',contact1='${data.contact1}',contact2='${data.contact2}',email='${data.email}',name='${data.name}' where id = '1'`;
    pool.query(sqlQuery, (error, result) => {
      if (error) {
        // logger.info(
        //   `${req.method} ${req.originalUrl}, 'server error', fetch all users`
        // );

        return res
          .status(500)
          .json({ success: 0, error: "internal server error", message: error });
      }

      // logger.info(
      //   `${req.method} ${req.originalUrl},'success', fetch all users`
      // );
      let sqlQuery = `select * from school limit 1 `;
      pool.query(sqlQuery, (error, result) => {
        res.status(200).json({ success: 1, data: result });
      });
    });
  },

  getAllStaff: (req, res) => {
    let sqlQuery = `select * from staff left join users on staff.userId = users.userId  where users.role = 'staff'`;
    pool.query(sqlQuery, (error, result) => {
      if (error) {
        // logger.info(
        //   `${req.method} ${req.originalUrl}, 'server error', fetch all users`
        // );

        return res
          .status(500)
          .json({ success: 0, error: "internal server error", message: error });
      }

      // logger.info(
      //   `${req.method} ${req.originalUrl},'success', fetch all users`
      // );

      res.status(200).json({ success: 1, data: result });
    });
  },
  getuserdata: (req, res) => {
    let data = req.body;
    //  if(data.role=='student')
    // select * from student left join users on student.userId = users.userId where student.userId = 'z0puvv';
    let sqlQuery = `select * from guardian  where student_id = '${data.id}' `;
    console.log(sqlQuery);

    pool.query(sqlQuery, (error, result) => {
      if (error) {
        // logger.info(
        //   `${req.method} ${req.originalUrl}, 'server error', fetch all users`
        // );

        return res
          .status(500)
          .json({ success: 0, error: "internal server error", message: error });
      }

      // logger.info(
      //   `${req.method} ${req.originalUrl},'success', fetch all users`
      // );
      result.password = "";
      res.status(200).json({ success: 1, data: result });
    });
  },
  getOTPpin: (req, res) => {
    const id = parseInt(req.params.userId);
    let sqlQuery = `select pincode from users where userId = ${id}`;
    pool.query(sqlQuery, (error, result) => {
      if (error) {
        // logger.info(
        //   `${req.method} ${req.originalUrl},'DB error:'${error.sqlMessage}, get pin user by id`
        // );
        return res
          .status(500)
          .json({ success: 0, error: "internal server error", message: error });
      }

      if (!result) {
        // logger.info(
        //   `${req.method} ${req.originalUrl}, fetch pin by user id: no record found`
        // );
        return res
          .status(200)
          .json({ success: 1, error: "fetch pin by id: no record found" });
      }
      // logger.info(`${req.method} ${req.originalUrl}, fetch pin by id`);
      res.status(200).json({ success: 1, data: result });
    });
  },

  resetOTP: (req, res) => {
    const userPin = Math.floor(Math.random() * 9000 + 1000);
    const id = parseInt(req.params.userId);
    let sqlQuery = `update users set pincode = ${userPin} where userId = ${id}`;
    pool.query(sqlQuery, (error, result) => {
      if (error) {
        // logger.info(
        //   `${req.method} ${req.originalUrl},'DB error:'${error.sqlMessage}, reset pin user by id`
        // );
        return res
          .status(500)
          .json({ success: 0, error: "internal server error", message: error });
      }

      if (result.affectedRows != 1) {
        logger.info(
          `${req.method} ${req.originalUrl}, fetch pin by user id: no user record found`
        );
        return res
          .status(200)
          .json({ success: 1, error: "fetch pin by id: no user record found" });
      }

      // logger.info(`${req.method} ${req.originalUrl}, update user pin by id`);
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
        // logger.info(
        //   `${req.method} ${req.originalUrl},'DB error:'${error.sqlMessage}, update user data`
        // );
        return res
          .status(500)
          .json({ success: 0, error: "internal server error", message: error });
      }

      if (result.affectedRows != 1) {
        // logger.info(
        //   `${req.method} ${req.originalUrl}, update user data: no record found`
        // );
        return res
          .status(200)
          .json({ success: 0, error: "update user data: no record found" });
      }

      if (result.affectedRows == 1) {
        // logger.info(`${req.method} ${req.originalUrl}, update user data`);
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
            // logger.info(
            //   `${req.method} ${req.originalUrl},'DB error:'${error.sqlMessage}, verify email by token`
            // );
            return res.status(500).json({
              success: 0,
              error: "internal server error",
              message: error,
            });
          }

          // logger.info(
          //   `${req.method} ${req.originalUrl}, verify email by jwt signed token successful`
          // );
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
            // logger.info(
            //   `${req.method} ${req.originalUrl},'DB error:'${error.sqlMessage}, update user password`
            // );
            return res.status(500).json({
              success: 0,
              error: "internal server error",
              message: error,
            });
          }

          if (result.affectedRows != 1) {
            // logger.info(
            //   `${req.method} ${req.originalUrl}, update user password: no user record found`
            // );
            return res.status(200).json({
              success: 0,
              error: "update user password: no user record found",
            });
          }
          if (result.affectedRows == 1) {
            // logger.info(
            //   `${req.method} ${req.originalUrl}, update user password success`
            // );
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
  activeStaff: (req, res) => {
    const id = req.params.id;
    console.log(id);
    let sqlQuery = `update staff set active ='True' where userId = '${id}'`;

    pool.query(sqlQuery, (error, result) => {
      if (error) {
        // logger.info(
        //   `${req.method} ${req.originalUrl},'DB error:'${error.sqlMessage}, delete subject by id`
        // );
        return res
          .status(500)
          .json({ success: 0, error: "internal server error", message: error });
      }

      if (result.affectedRows != 1) {
        // logger.info(
        //   `${req.method} ${req.originalUrl}, delete subject by  id: no subject record found`
        // );
        return res.status(200).json({
          success: 0,
          error: "delete subject by id: no subject record found",
        });
      }
      if (result.affectedRows == 1) {
        // logger.info(`${req.method} ${req.originalUrl}, delete subject  by id`);
        let sqlQuery1 = `update users set isActive ='True' where userId = '${id}'`;
        pool.query(sqlQuery1, (error, result) => {
          console.log(result.affectedRows);
        });

        let sqlQuery = `select * from staff left join users on staff.userId = users.userId  where users.role = 'staff'`;
        pool.query(sqlQuery, (error, result) => {
          res.status(200).json({ success: 1, data: result });
        });
      }
    });
  },
  InactiveStaff: (req, res) => {
    const id = req.params.id;
    console.log(id);
    let sqlQuery = `update staff set active ='false' where userId = '${id}'`;

    pool.query(sqlQuery, (error, result) => {
      if (error) {
        // logger.info(
        //   `${req.method} ${req.originalUrl},'DB error:'${error.sqlMessage}, delete subject by id`
        // );
        return res
          .status(500)
          .json({ success: 0, error: "internal server error", message: error });
      }

      if (result.affectedRows != 1) {
        // logger.info(
        //   `${req.method} ${req.originalUrl}, delete subject by  id: no subject record found`
        // );
        return res.status(200).json({
          success: 0,
          error: "delete subject by id: no subject record found",
        });
      }
      if (result.affectedRows == 1) {
        // logger.info(`${req.method} ${req.originalUrl}, delete subject  by id`);
        let sqlQuery1 = `update users set isActive ='False' where userId = '${id}'`;
        pool.query(sqlQuery1, (error, result) => {});

        let sqlQuery = `select * from staff left join users on staff.userId = users.userId  where users.role = 'staff'`;
        pool.query(sqlQuery, (error, result) => {
          res.status(200).json({ success: 1, data: result });
        });
      }
    });
  },
  deleteStaff: (req, res) => {
    const id = req.params.id;
    console.log(id);
    let sqlQuery = `delete from staff where userId = '${id}'`;

    pool.query(sqlQuery, (error, result) => {
      if (error) {
        // logger.info(
        //   `${req.method} ${req.originalUrl},'DB error:'${error.sqlMessage}, delete subject by id`
        // );
        return res
          .status(500)
          .json({ success: 0, error: "internal server error", message: error });
      }

      if (result.affectedRows != 1) {
        // logger.info(
        //   `${req.method} ${req.originalUrl}, delete subject by  id: no subject record found`
        // );
        return res.status(200).json({
          success: 0,
          error: "delete subject by id: no subject record found",
        });
      }
      if (result.affectedRows == 1) {
        // logger.info(`${req.method} ${req.originalUrl}, delete subject  by id`);
        let sqlQuery1 = `delete from users where userId = '${id}'`;
        pool.query(sqlQuery1, (error, result) => {});

        let sqlQuery = `select * from staff left join users on staff.userId = users.userId  where users.role = 'staff'`;
        pool.query(sqlQuery, (error, result) => {
          res.status(200).json({ success: 1, data: result });
        });
      }
    });
  },

  deleteUser: (req, res) => {
    const id = req.body;
    let sqlQuery = `delete from users where userId = '${id.userId}'`;
    pool.query(sqlQuery, (error, result) => {
      if (error) {
        // logger.info(
        //   `${req.method} ${req.originalUrl},'DB error:'${error.sqlMessage}, delete user by id`
        // );
        return res
          .status(500)
          .json({ success: 0, error: "internal server error", message: error });
      }

      if (result.affectedRows != 1) {
        // logger.info(
        //   `${req.method} ${req.originalUrl}, delete user by user id: no user record found`
        // );
        return res.status(200).json({
          success: 0,
          error: "delete user by id: no user record found",
        });
      }
      if (result.affectedRows == 1) {
        // logger.info(`${req.method} ${req.originalUrl}, delete user pin by id`);
        return res.status(200).json({
          success: 1,
          message: "user deleted successfully",
        });
      }
    });
  },
};
