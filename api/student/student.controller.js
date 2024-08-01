const { sign } = require("jsonwebtoken");
const bcrypt = require("bcrypt");
const jwt = require("jsonwebtoken");
const pool = require("../../config/database.js");
// const logger = require("../../util/logger.js");
const uploadFile = require("./upload.js");
let date = new Date();
date = date.toUTCString();

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
  setstudentwaiting: (req, res) => {
    let sqlQuery = `update student set status = 'waiting'`;
    pool.query(sqlQuery, (error, result) => {
      if (error) {
        // logger.info(
        //   `${req.method} ${req.originalUrl},'DB error:'${error.sqlMessage}, fetch user by id`
        // );
        return res
          .status(500)
          .json({ success: 0, error: "internal server error" });
      }

      if (result.affectedRows > 0) {
        res.status(200).json({ success: 1, data: result });
        console.log("students status updated");
      }
      // logger.info(`${req.method} ${req.originalUrl}, fetch user by id`);
    });
  },
  allpromote: (req, res) => {
    let data = req.body;

    let sqlQuery = `update student set status = 'current' ,class='${data.nextclass}' where class ='${data.prevclass}'`;
    pool.query(sqlQuery, (error, result) => {
      if (error) {
        // logger.info(
        //   `${req.method} ${req.originalUrl},'DB error:'${error.sqlMessage}, fetch user by id`
        // );
        return res
          .status(500)
          .json({ success: 0, error: "internal server error" });
      }

      if (result.affectedRows) {
        res.status(200).json({ success: 1, data: result });
        console.log("students status updated");
      }
      // logger.info(`${req.method} ${req.originalUrl}, fetch user by id`);
    });
  },
  selectedpromote: (req, res) => {
    let data = req.body;

    let myArray = req.body.value;

    let sqlQuery = `update student set status = 'current' ,class='${data.nextclass}' where class ='${data.prevclass}'`;
    pool.query(sqlQuery, (error, result) => {
      if (error) {
        console.log(error);
        // logger.info(
        //   `${req.method} ${req.originalUrl},'DB error:'${error.sqlMessage}, fetch user by id`
        // );
        return res
          .status(500)
          .json({ success: 0, error: "internal server error" });
      }

      if (result.affectedRows) {
        if (0 == myArray.length)
          return res
            .status(200)
            .json({
              success: 1,
              message: "updated students class successfully",
            });
        let i = 0;
        while (i < myArray.length) {
          console.log(i);
          let sqlQuery = `update student set status = 'current' ,class='${data.prevclass}' where student_id ='${myArray[i]}'`;
          pool.query(sqlQuery, (error, result) => {});
          i++;
          if (i+1 == myArray.length)
            return res
              .status(200)
              .json({
                success: 1,
                message: "updated students class successfully",
              });
        }
      }

      // logger.info(`${req.method} ${req.originalUrl}, fetch user by id`);
    });
  },
  getStudentByUserId: (req, res) => {
    const id = req.params.student_id;
    let sqlQuery = `select * from student where student_id = '${id}'`;
    pool.query(sqlQuery, (error, result) => {
      if (error) {
        // logger.info(
        //   `${req.method} ${req.originalUrl},'DB error:'${error.sqlMessage}, fetch user by id`
        // );
        return res
          .status(500)
          .json({ success: 0, error: "internal server error" });
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

  getstudent: (req, res) => {
    let sqlQuery = `select * from student where isActive='true'`;
    pool.query(sqlQuery, (error, result) => {
      if (error) {
        // logger.info(
        //   `${req.method} ${req.originalUrl}, 'server error', fetch all student`
        // );

        return res
          .status(500)
          .json({ success: 0, error: "internal server error" });
      }

      // logger.info(
      //   `${req.method} ${req.originalUrl},'success', fetch all student`
      // );

      res.status(200).json({ success: 1, data: result });
    });
  },

  getStudentByUserId: (req, res) => {
    const id = req.params.student_id;
    let sqlQuery = `select * from student where student_id = '${id}'`;
    pool.query(sqlQuery, (error, result) => {
      if (error) {
        // logger.info(
        //   `${req.method} ${req.originalUrl},'DB error:'${error.sqlMessage}, fetch user by id`
        // );
        return res
          .status(500)
          .json({ success: 0, error: "internal server error" });
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

  getstudentbyClass: (req, res) => {
    const clazz = req.body.class;
    console.log(clazz);
    let sqlQuery = `select student_id,firstName,otherName, lastName,gender, class,section  from student where class = '${clazz}' and isActive='true'`;
    pool.query(sqlQuery, (error, result) => {
      if (error) {
        // logger.info(
        //   `${req.method} ${req.originalUrl} ${error}, 'server error', fetch all student by class`
        // );

        return res
          .status(500)
          .json({ success: 0, error: "internal server error" });
      }

      // logger.info(
      //   `${req.method} ${req.originalUrl},'success', fetch all student by class`
      // );

      res.status(200).json({ success: 1, data: result });
    });
  },
  getstudentbyClassCustom: (req, res) => {
    const clazz = req.body.class;
    const section = req.body.section;

    let sqlQuery = `select student_id,firstName,otherName, lastName,gender, class,section from student where class = '${clazz}' and section = '${section}' and isActive='true'`;
    pool.query(sqlQuery, (error, result) => {
      if (error) {
        // logger.info(
        //   `${req.method} ${req.originalUrl} ${error}, 'server error', fetch all student by class`
        // );

        return res
          .status(500)
          .json({ success: 0, error: "internal server error" });
      }

      // logger.info(
      //   `${req.method} ${req.originalUrl},'success', fetch all student by class`
      // );

      res.status(200).json({ success: 1, data: result });
    });
  },

  // getstudentlimiteddata: (req, res) => {
  //   const id = req.params.student_id;
  //   console.log(id);
  //   let sqlQuery = `select student from student where student_id = '${id}'`;
  //   pool.query(sqlQuery, (error, result) => {
  //     if (error) {
  //       logger.info(
  //         `${req.method} ${req.originalUrl} ${req.error}, 'server error', fetch single student biodata`
  //       );

  //       return res
  //         .status(500)
  //         .json({ success: 0, error: "internal server error" });
  //     }

  //     logger.info(
  //       `${req.method} ${req.originalUrl},'success', fetch single student biodata`
  //     );

  //     res.status(200).json({ success: 1, data: result });
  //   });
  // },

  getstudentbiodata: (req, res) => {
    const id = req.params.student_id;
    console.log(id);
    let sqlQuery = `select * from student where student_id = '${id}'`;
    pool.query(sqlQuery, (error, result) => {
      if (error) {
        // logger.info(
        //   `${req.method} ${req.originalUrl} ${req.error}, 'server error', fetch single student biodata`
        // );

        return res
          .status(500)
          .json({ success: 0, error: "internal server error" });
      }

      // logger.info(
      //   `${req.method} ${req.originalUrl},'success', fetch single student biodata`
      // );
      res.status(200).json({ success: 1, data: result });
      console.log(result);
    });
  },
  updatestudent: async (req, res) => {
    await uploadFile(req, res);
    // console.log(res)

    const data = JSON.parse(req.body.data);
    console.log(data);

    let link = process.env.SERVERLINK + "/uploadsstudent/" + data.filename;
    let sqlQuery = `UPDATE student SET firstName = '${data.firstName}', lastName = '${data.lastName}', otherName = '${data.otherName}', class = '${data.classes}', section = '${data.section}', religion = '${data.religion}', gender = '${data.gender}', dateofbirth = '${data.dateofbirth}', g1fname = '${data.gfName1}', g1lastname = '${data.glName1}', g1sex = '${data.gsex1}', g1address = '${data.gAddress1}', g1email = '${data.gemail1}', g1contact1 = '${data.contact1}', g1relation = '${data.gRelation1}', g1contact2 = '${data.contact2}', g2fname = '${data.gfName2}', g2lastname = '${data.glName2}', g2sex = '${data.gsex2}', g2address = '${data.gAddress2}', g2email = '${data.gemail2}', g2contact1 = '${data.contact3}', g2relation = '${data.gRelation2}', g2contact2 = '${data.contact4}',imagelink = '${link}',filename = '${data.filename}' WHERE student_id = '${data.studentId}' `;

    pool.query(sqlQuery, (error, result) => {
      if (error) {
        // logger.info(
        //   `${req.method} ${req.originalUrl},'DB error:'${error.sqlMessage}, update user data`
        // );
        return res
          .status(500)
          .json({ success: 0, Message: "internal server error" });
      }

      if (result.affectedRows != 1) {
        // logger.info(
        //   `${req.method} ${req.originalUrl}, update user data: no record found`
        // );
        return res
          .status(200)
          .json({ success: 0, message: "update user data: no record found" });
      }

      if (result.affectedRows == 1) {
        // logger.info(`${req.method} ${req.originalUrl}, update user data`);
        return res
          .status(200)
          .json({ success: 1, Message: "update student data success" });
      }
    });
  },

  deleteStudentsingle: (req, res) => {
    const studentId = req.body.id;
    const clazz = req.body.class;
    const section = req.body.section;

    let sqlQuery = `update  student  set isActive='false' WHERE student_id = '${studentId}'`;
    pool.query(sqlQuery, (error, result) => {
      if (error) {
        // logger.info(
        //   `${req.method} ${req.originalUrl},'DB error:'${error.sqlMessage}, delete user by id`
        // );
        return res
          .status(500)
          .json({ success: 0, error: "internal server error" });
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

        let sectionz = section == "All Sections" ? "none" : section;

        let sqlQuery = `select student_id,firstName,otherName, lastName,gender, class,section from student where class = '${clazz}' and section = '${sectionz}' and isActive='true'`;
        pool.query(sqlQuery, (error, result) => {
          // logger.info(
          //   `${req.method} ${sqlQuery},'success', fetch all student by class`
          // );
          console.log(result);
          res.status(200).json({ success: 1, data: result });
        });
      }
    });
  },

  truncateTable: (req, res) => {
    let sqlQuery = `truncate table student`;
    pool.query(sqlQuery, (error, result) => {
      if (error) {
        // logger.info(
        //   `${req.method} ${req.originalUrl},'DB error:'${error.sqlMessage}, delete all records`
        // );
        return res
          .status(500)
          .json({ success: 0, error: "internal server error" });
      }
      if (result.affectedRows == 1) {
        // logger.info(`${req.method} ${req.originalUrl}, delete all records`);
        return res.status(200).json({
          success: 1,
          message: "delete all record success",
        });
      }
    });
  },
};

// thygracenaturalClinic$7
