const {
  create,
  updateStatus,
  checkUserEmailExist,
  updatePassword,
  getUserroles,
  getUserrolesByUserEmail,
} = require("./student.service.js");

const { sign } = require("jsonwebtoken");
const bcrypt = require("bcrypt");
const nodemailer = require("nodemailer");
const jwt = require("jsonwebtoken");
const pool = require("../../config/database.js");
const logger = require("../../util/logger.js");

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

function getStudentByEmail(email, callBack) {
  pool.query(
    `select * from student where email = ?`,
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
    let customId ;
    function idGenerator(){
      // let month = new Date().getMonth() + 1
      let year = new Date().getFullYear()
      return year  ;
    }

    let partId = await idGenerator();

    const saltRounds = 10;

    var hashedPass = await bcrypt.hash(data.password, saltRounds);

    const userPin = Math.floor(Math.random() * 9000 + 1000);
    let date = new Date().toString().slice(20);

    let sqlQuery1 = `select student_id from student 
    `;
 pool.query(sqlQuery1, (error, result) => {
   
  function myresult() {
    let val = (result[0].student_id)
     val= val.slice(-4)
    val = parseInt(val) + 1
    return "STD" + partId + val ;
  } 
  console.log(result[0])
// check if db is empty start with a default student_id
    const student_id =  result[0] ? myresult() :  "STD"+partId+"1111"

    let sqlQuery = `insert into student (student_id,firstName,lastName,otherName,contact1,contact2,gender,createdAt,createdBy,active,class,section,religion,dateofbirth) values
           ('${student_id}','${data.firstName}','${data.lastName}','${data.otherName}','${data.contact1}','${data.contact2}','${data.gender}','${date}','${data.createdBy}','${data.active}','${data.class}','${data.section}','${data.religion}','${data.dateofbirth}')`;
    pool.query(sqlQuery, (error, result) => {
      if (error) {
        logger.info(
          `${req.method} ${req.originalUrl},'DB error:'${error.sqlMessage}, create new student`
        );
        return res
          .status(500)
          .json({ success: 0, error: "internal server error" });
      }

      if (result.affectedRows == 1) {
        logger.info(
          `${req.method} ${req.originalUrl}, create new student successful`
        );
        res.status(200).json({ success: 1, data: result });

        const signedToken = jwt.sign(
          { data: result.email },
          process.env.JWT_KEY
        );
      }
    });
  });
  },


  getStudentByUserId: (req, res) => {
    const id = parseInt(req.params.student_idId);
    let sqlQuery = `select * from student where student_id = ${id}`;
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

  getstudent: (req, res) => {
    let sqlQuery = `select * from student`;
    pool.query(sqlQuery, (error, result) => {
      if (error) {
        logger.info(
          `${req.method} ${req.originalUrl}, 'server error', fetch all student`
        );

        return res
          .status(500)
          .json({ success: 0, error: "internal server error" });
      }

      logger.info(
        `${req.method} ${req.originalUrl},'success', fetch all student`
      );

      res.status(200).json({ success: 1, data: result });
    });
  },

  getOTPpin: (req, res) => {
    const id = parseInt(req.params.userId);
    let sqlQuery = `select pincode from student where userId = ${id}`;
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
    let sqlQuery = `update student set pincode = ${userPin} where userId = ${id}`;
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

  updatestudent: (req, res) => {
    const data = req.body;

    let sqlQuery = `update student set email ='${data.email}',firstName='${data.firstName}',lastName='${data.lastName}',otherName='${data.otherName}',contact1='${data.contact1}',contact2='${data.contact2}',gender ='${data.gender}',createdBy='${data.createdBy}',role='${data.role}',active='${data.active}' where userId = ${data.userId}`;

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
        let sqlQuery = `update student set verified='true' where email = '${body.email}'`;
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
        updatePassword(body, (err, results) => {
          if (err) {
            console.log(err);
            return;
          }
          return res.status(200).json({
            success: 1,
            message: "updated successfully",
          });
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


  deleteUser: (req, res) => {
    const id = req.body;
    let sqlQuery = `delete from student where student_id = ${id.userId}`;
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
        return res
          .status(200)
          .json({
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
