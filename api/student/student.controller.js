const { sign } = require("jsonwebtoken");
const bcrypt = require("bcrypt");
const jwt = require("jsonwebtoken");
const pool = require("../../config/database.js");
// const logger = require("../../util/logger.js");
const uploadFile = require("./upload.js");

let date = new Date();
date = date.toUTCString();
let createHash = require("hash-generator");
function hashgenerator(num) {
  return createHash(num);
}
async function updateGuardianInfo(data) {
  const promise1 = await new Promise((resolve, reject) => {
    let sqlQuery = `UPDATE guardian SET gFirstName = '${data.gfName}', gLastName = '${data.glName}', gContact1 = '${data.contact1}', gContact2 = '${data.contact2}', gEmail = '${data.gemail}', gAddress = '${data.gAddress}', gSex = '${data.gsex}', gRelation = '${data.gRelation}' WHERE guardian.userId = '${data.id}'`;

    console.log(sqlQuery);
    pool.query(sqlQuery, (error, results, fields) => {
      if (error) {
        console.log(error);
        console.log("error inserting guardian info");

        return resolve(null);
      }

      console.log("guardian info inserted successfully");
      return resolve(true);
    });
  });
  return promise1;
}

async function register(mydata) {
  async function extractdata(mydata) {
    let data = {
      FIRST_NAME: mydata.FIRST_NAME ? mydata.FIRST_NAME : "",
      OTHER_NAMES: mydata.OTHER_NAMES ? mydata.OTHER_NAMES : "",
      LAST_NAME: mydata.LAST_NAME ? mydata.LAST_NAME : "",
      RELIGION: mydata.RELIGION ? mydata.RELIGION : "",
      GENDER: mydata.GENDER ? mydata.GENDER : "",
      DATE_OF_BIRTH_DDMMYYYY: mydata.DATE_OF_BIRTH_DDMMYYYY
        ? mydata.DATE_OF_BIRTH_DDMMYYYY
        : "",
      GUARDIAN_1_FIRST_NAME: mydata.GUARDIAN_1_FIRST_NAME
        ? mydata.GUARDIAN_1_FIRST_NAME
        : "",
      GUARDIAN_1_LAST_NAME: mydata.GUARDIAN_1_LAST_NAME
        ? mydata.GUARDIAN_1_LAST_NAME
        : "",
      GUARDIAN_1_GENDER: mydata.GUARDIAN_1_GENDER
        ? mydata.GUARDIAN_1_GENDER
        : "",
      GUARDIAN_1_RELATION: mydata.GUARDIAN_1_RELATION
        ? mydata.GUARDIAN_1_RELATION
        : "",
      GUARDIAN_1_CONTACT1: mydata.GUARDIAN_1_CONTACT1
        ? mydata.GUARDIAN_1_CONTACT1
        : "",
      GUARDIAN_1_CONTACT2: mydata.GUARDIAN_1_CONTACT2
        ? mydata.GUARDIAN_1_CONTACT2
        : "",
      GUARDIAN_1_ADDRESS: mydata.GUARDIAN_1_ADDRESS
        ? mydata.GUARDIAN_1_ADDRESS
        : "",
      GUARDIAN_1_EMAIL: mydata.GUARDIAN_1_EMAIL ? mydata.GUARDIAN_1_EMAIL : "",
      GUARDIAN_2_FIRST_NAME: mydata.GUARDIAN_2_FIRST_NAME
        ? mydata.GUARDIAN_2_FIRST_NAME
        : "",
      GUARDIAN_2_LAST_NAME: mydata.GUARDIAN_2_LAST_NAME
        ? mydata.GUARDIAN_2_LAST_NAME
        : "",
      GUARDIAN_2_GENDER: mydata.GUARDIAN_2_GENDER
        ? mydata.GUARDIAN_2_GENDER
        : "",
      GUARDIAN_2_RELATION: mydata.GUARDIAN_2_RELATION
        ? mydata.GUARDIAN_2_RELATION
        : "",
      GUARDIAN_2_CONTACT1: mydata.GUARDIAN_2_CONTACT1
        ? mydata.GUARDIAN_2_CONTACT1
        : "",
      GUARDIAN_2_CONTACT2: mydata.GUARDIAN_2_CONTACT2
        ? mydata.GUARDIAN_2_CONTACT2
        : "",
      GUARDIAN_2_ADDRESS: mydata.GUARDIAN_2_ADDRESS
        ? mydata.GUARDIAN_2_ADDRESS
        : "",
      GUARDIAN_2_EMAIL: mydata.GUARDIAN_2_EMAIL ? mydata.GUARDIAN_2_EMAIL : "",
      STUDENT_PASSWORD: mydata.STUDENT_PASSWORD ? mydata.STUDENT_PASSWORD : "",
      EMAIL: mydata.EMAIL ? mydata.EMAIL : "",
      CLASS: mydata.CLASS ? mydata.CLASS : "",
      SECTION: mydata.SECTION ? mydata.SECTION : "",
      GUARD1_PASSWORD: mydata.GUARD1_PASSWORD ? mydata.GUARD1_PASSWORD : "",
      GUARD2_PASSWORD: mydata.GUARD2_PASSWORD ? mydata.GUARD2_PASSWORD : "",
      GUARD1_USERNAME: mydata.GUARD1_USERNAME ? mydata.GUARD1_USERNAME : "",
      GUARD2_USERNAME: mydata.GUARD2_USERNAME ? mydata.GUARD2_USERNAME : "",
      CREATED_BY: mydata.CREATED_BY ? mydata.CREATED_BY : "",
    };
    return data;
  }

  let data = await extractdata(mydata);
  let hashedPass = await bcrypt.hash(data.STUDENT_PASSWORD, 10);
  console.log(data);
  const userPin = Math.floor(Math.random() * 9000 + 1000);

  let hashedPassGuard1 = await bcrypt.hash(data.GUARD1_PASSWORD, 10);
  const userPinGuard1 = Math.floor(Math.random() * 9000 + 1000);

  let hashedPassGuard2 = await bcrypt.hash(data.GUARD2_PASSWORD, 10);
  const userPinGuard2 = Math.floor(Math.random() * 9000 + 1000);

  async function idGenerator() {
    // let month = new Date().getMonth() + 1
    let year = new Date().getFullYear();
    return year;
  }

  let partId = await idGenerator();

  async function checkExistingStudent(callBack) {
    pool.query(
      `select student_id from student order by id desc limit 1`,

      (error, results, fields) => {
        console.log(results);

        if (error) {
          callBack(error);
        }
        return callBack(null, results[0]);
      }
    );
  }

  checkExistingStudent((err, result) => {
    function myresult() {
      let val = result.student_id;
      val = val.slice(-4);
      val = parseInt(val) + 1;
      return "SD" + partId + val;
    }
    // check if db is empty start with a default student_id
    let student_id = result ? myresult() : "SD" + partId + "1110";
    let sdtID = student_id;
    let studUserId = createHash(6);
    //insert into student table
    sqlQuery1 = `insert into student (userId,student_id,firstName,lastName,otherName,class,section,religion,dateofbirth,gender) values
        ('${studUserId}','${sdtID}','${data.FIRST_NAME}','${data.LAST_NAME}','${data.OTHER_NAMES}','${data.CLASS}','${data.SECTION}','${data.RELIGION}','${data.DATE_OF_BIRTH_DDMMYYYY}','${data.GENDER}')`;

    pool.query(sqlQuery1, (error, result) => {
      if (error) return console.log(error);
      // first create student into student table

      if (result.affectedRows == 1) {
        let sqlQuery = `insert into account (student_id,createdat,createdby) values
        ('${sdtID}','${date}','${data.CREATED_BY}')`;

        pool.query(sqlQuery, (error, result) => {
          if (error) {
            console.log("student account error");
            console.log(error);
          }
        });
        // insert student into users table
        let sqlQuery1 = `insert into users (email,createdAt,createdBy,pincode,role,password,userId) values
              ('${data.EMAIL}','${date}','${data.CREATED_BY}',${userPin},'student','${hashedPass}', '${studUserId}')`;

        pool.query(sqlQuery1, (error, result) => {
          if (error) {
            console.log("student eeror error");
            return res.status(500).json({ success: 0, Message: error });
          }

          ///////////////////////////////////////////////////////

          if (data.GUARDIAN_1_FIRST_NAME != "") {
            console.log("fffffffffffffffffffffff");
            let customguardian1Id = createHash(6);

            slqQuery4 = `insert into guardian (userId,originalemail,gEmail,gSex,gLastName,gFirstName,gContact1,gContact2,gAddress,student_id,gRelation ) values
  ('${customguardian1Id}','${data.GUARDIAN_1_EMAIL}','${data.GUARD1_USERNAME}','${data.GUARDIAN_1_GENDER}','${data.GUARDIAN_1_LAST_NAME}','${data.GUARDIAN_1_FIRST_NAME}','${data.GUARDIAN_1_CONTACT1}','${data.GUARDIAN_1_CONTACT2}','${data.GUARDIAN_1_ADDRESS}','${sdtID}','${data.GUARDIAN_1_RELATION}') `;

            pool.query(slqQuery4, (error, result) => {
              if (error) {
                console.log("Guardian1 GUARDIAN error");
                return res.status(500).json({ success: 0, Message: error });
              }

              let sqlQuery3 = `insert into users (userId,email,createdAt,createdBy,pincode,role,password ) values
  ('${customguardian1Id}','${data.GUARD1_USERNAME}','${date}','${data.CREATED_BY}',${userPinGuard1},'parent','${hashedPassGuard1}')`;

              pool.query(sqlQuery3, (error, result) => {
                if (error) {
                  console.log(error);

                  console.log("Guardian1 USERS  error");
                  return res.status(500).json({ success: 0, Message: error });
                }
              });
            });
          }
          if (data.GUARDIAN_2_FIRST_NAME != "") {
            let customguardian2Id = createHash(6);

            slqQuery4 = `insert into guardian (userId,originalemail,gEmail,gSex,gLastName,gFirstName,gContact1,gContact2,gAddress,student_id,gRelation ) values
  ('${customguardian2Id}','${data.GUARDIAN_2_EMAIL}','${data.GUARD2_USERNAME}','${data.GUARDIAN_2_GENDER}','${data.GUARDIAN_2_LAST_NAME}','${data.GUARDIAN_2_FIRST_NAME}','${data.GUARDIAN_2_CONTACT1}','${data.GUARDIAN_2_CONTACT2}','${data.GUARDIAN_2_ADDRESS}','${sdtID}','${data.GUARDIAN_2_RELATION}') `;

            pool.query(slqQuery4, (error, result) => {
              if (error) {
                console.log("Guardian2 GUARDIAN error");
                return res.status(500).json({ success: 0, Message: error });
              }

              let sqlQuery3 = `insert into users (userId,email,createdAt,createdBy,pincode,role,password ) values
  ('${customguardian2Id}','${data.GUARD2_USERNAME}','${date}','${data.CREATED_BY}',${userPinGuard2},'parent','${hashedPassGuard2}')`;

              pool.query(sqlQuery3, (error, result) => {
                if (error) {
                  console.log("Guardian2 USERS  error");
                  return res.status(500).json({ success: 0, Message: error });
                }
              });
            });
          }

          //////////////////////////////////////////////////////////////////////
        });
      } else {
        console.log("error along line");
        return res.status(500).json({
          success: 0,
          error: "internal server error",
          message: error,
        });
      }
    });
  });
}

module.exports = {
  bulkAdmission: async (req, res) => {
    let datas = req.body;
    let length = datas.length;

    for (let i = 0; i < length; i++) {
      const kk = await register(datas[i]);
      if (datas.length - 1 == i) {
        let sqlQuery = `SELECT * from class where isActive='true' order by class.title`;

        pool.query(sqlQuery, (error, result) => {
          return res.status(200).json({
            success: 1,
            data: result,
            message: "Bulk Students created successfully",
          });
        });
      }
    }
  },

  setstudentwaiting: (req, res) => {
    let sqlQuery = `update student set status = 'Awaiting Promotion'`;
    pool.query(sqlQuery, (error, result) => {
      if (error) {
        // logger.info(
        //   `${req.method} ${req.originalUrl},'DB error:'${error.sqlMessage}, fetch user by id`
        // );
        return res
          .status(500)
          .json({ success: 0, error: "internal server error", message: error });
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
          .json({ success: 0, error: "internal server error", message: error });
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
          .json({ success: 0, error: "internal server error", message: error });
      }
      console.log("result.affectedRows");
      console.log(result.affectedRows);

      if (result.affectedRows) {
        if (0 == myArray.length)
          return res.status(200).json({
            success: 1,
            message: "updated students class successfully",
          });
        let i = 0;
        while (i < myArray.length) {
          let sqlQuery = `update student set status = 'current' ,class='${data.prevclass}' where student_id ='${myArray[i]}'`;
          pool.query(sqlQuery, (error, result) => { });
          i++;
          if (i == myArray.length)
            res.status(200).json({
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

  getstudent: (req, res) => {
    let sqlQuery = `select * from student where isActive='true'`;
    pool.query(sqlQuery, (error, result) => {
      if (error) {
        // logger.info(
        //   `${req.method} ${req.originalUrl}, 'server error', fetch all student`
        // );

        return res
          .status(500)
          .json({ success: 0, error: "internal server error", message: error });
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

  getstudentbyClass: (req, res) => {
    const clazz = req.body.class;
    console.log(clazz);
    let sqlQuery = `select userId,student_id,firstName,otherName, lastName,gender, class,section,dateofbirth,religion,imagelink,filename  from student where class = '${clazz}' and isActive='true' and status='current'`;
    pool.query(sqlQuery, (error, result) => {
      if (error) {
        // logger.info(
        //   `${req.method} ${req.originalUrl} ${error}, 'server error', fetch all student by class`
        // );

        return res
          .status(500)
          .json({ success: 0, error: "internal server error", message: error });
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

    let sqlQuery = `select userId,student_id,firstName,otherName, lastName,gender, class,section from student where class = '${clazz}' and section = '${section}' and isActive='true' and status='current'`;
    pool.query(sqlQuery, (error, result) => {
      if (error) {
        // logger.info(
        //   `${req.method} ${req.originalUrl} ${error}, 'server error', fetch all student by class`
        // );

        return res
          .status(500)
          .json({ success: 0, error: "internal server error", message: error });
      }

      // logger.info(
      //   `${req.method} ${req.originalUrl},'success', fetch all student by class`
      // );

      res.status(200).json({ success: 1, data: result });
    });
  },
  getstudentcustom: (req, res) => {
    let data = req.body;

    function getresulttype(data) {
      if (data.section == null) {
        return `select student.student_id,student.firstName,student.otherName, student.lastName,student.gender,student.section, student.class from student where student.class = '${data.class}'`;
      }
      if (data.section == "All Sections") {
        return `select student.student_id,student.firstName,student.otherName, student.lastName,student.gender,student.section, student.class from student where student.class = '${data.class}'`;
      } else {
        return `select student.student_id,student.firstName,student.otherName, student.lastName,student.gender,student.section, student.class from student where student.class = '${data.class}'  and student.section = '${data.section}'`;
      }
    }
    pool.query(getresulttype(data), async (error, resultz) => {
      if (error) {
        console.log(
          `${req.method} ${req.originalUrl} ${error}, 'server error', fetch all student by class`
        );
      } else {
        let result = [{ jjj: "pppppp" }, { jjj: "pppppp" }, { jjj: "pppppp" }];
        async function jsonConvert(result) {
          console.log("result");
          console.log(result);

          result.map((obj, index) => {
            obj.examScore = "";
            obj.classWorkScore = "";
            obj.othersScore = "";
          });
          return result;
        }
        let bnb = await jsonConvert(resultz);
        res.status(200).json({ success: 1, data: bnb });
        console.log(bnb);
      }
    });
  },
  getstudentbyClassbal: (req, res) => {
    const clazz = req.body.class;
    console.log(clazz);
    let sqlQuery = `select student.userId,student.student_id,student.firstName,student.otherName, student.lastName,student.gender, student.class,student.section,account.* from student left join account on student.student_id=account.student_id where student.class = '${clazz}'`;
    pool.query(sqlQuery, async (error, result) => {
      if (error) {
        logger.info(
          `${req.method} ${req.originalUrl} ${error}, 'server error', fetch all student by class`
        );
      }
      console.log(result);

      const promise1 = await new Promise((resolve, reject) => {
        let sqlQuery = `select * from assignfeecartegory where class = '${clazz}'`;
        pool.query(sqlQuery, (error, results) => {
          if (error) {
            logger.info(
              `${req.method} ${req.originalUrl} ${error}, 'server error', fetch all student by class`
            );

            // return res
            //   .status(500)
            //            .json({ success: 0, error: "internal server error",message:error });
          }
          console.log(results);

          resolve(results);
        });
      });

      let info = await promise1;
      //  console.log(info)

      // logger.info(
      //   `${req.method} ${req.originalUrl},'success', fetch all student by class`
      // );

      res.status(200).json({ success: 1, data: result, info: info });
    });
  },
  getstudentbyClassCustomBal: async (req, res) => {
    const clazz = req.body.class;
    const section = req.body.section;

    let sqlQuery = `select student.userId,student.student_id,student.firstName,student.otherName, student.lastName,student.gender, student.class,student.section,account.accountbalance from student left join account on student.student_id=account.student_id where student.class = '${clazz}' and student.section = '${section}'`;
    pool.query(sqlQuery, async (error, result) => {
      if (error) {
        logger.info(
          `${req.method} ${req.originalUrl} ${error}, 'server error', fetch all student by class`
        );
      }
      console.log(result);
      const promise1 = await new Promise((resolve, reject) => {
        let sqlQuery = `select * from assignfeecartegory where class = '${clazz}'`;
        pool.query(sqlQuery, (error, results) => {
          if (error) {
            console.log(
              `${req.method} ${req.originalUrl} ${error}, 'server error', fetch all student by class`
            );

            // return res
            //   .status(500)
            //            .json({ success: 0, error: "internal server error",message:error });
          }
          resolve(results);
        });
      });

      let info = await promise1;
      console.log(info);

      // logger.info(
      //   `${req.method} ${req.originalUrl},'success', fetch all student by class`
      // );

      res.status(200).json({ success: 1, data: result, info: info });
    });
  },

  getstudentbyClassPromote: (req, res) => {
    const clazz = req.body.class;
    console.log(clazz);
    let sqlQuery = `select * from student where class = '${clazz}' and isActive='true' `;
    pool.query(sqlQuery, (error, result) => {
      if (error) {
        logger.info(
          `${req.method} ${req.originalUrl} ${error}, 'server error', fetch all student by class`
        );

        return res
          .status(500)
          .json({ success: 0, error: "internal server error", message: error });
      }

      // logger.info(
      //   `${req.method} ${req.originalUrl},'success', fetch all student by class`
      // );

      res.status(200).json({ success: 1, data: result });
    });
  },
  getstudentbyClassCustomPromote: (req, res) => {
    const clazz = req.body.class;
    const section = req.body.section;

    let sqlQuery = `select * from student where class = '${clazz}' and section = '${section}' and isActive='true' `;
    pool.query(sqlQuery, (error, result) => {
      if (error) {
        // logger.info(
        //   `${req.method} ${req.originalUrl} ${error}, 'server error', fetch all student by class`
        // );

        return res
          .status(500)
          .json({ success: 0, error: "internal server error", message: error });
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
  //                  .json({ success: 0, error: "internal server error",message:error });

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
          .json({ success: 0, error: "internal server error", message: error });
      }

      // logger.info(
      //   `${req.method} ${req.originalUrl},'success', fetch single student biodata`
      // );
      res.status(200).json({ success: 1, data: result });
      console.log(result);
    });
  },

  setStudentLogo: async (req, res) => {
    await uploadFile(req, res);
    const data = JSON.parse(req.body.data);

    let link = process.env.SERVERLINK + "/" + data.filename;
    let sqlQuery = `update student set filename='${data.filename}',imagelink = '${link}'
     where student_id = ${data.id} `;

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
  updatestudent: async (req, res) => {
    // console.log(res)

    const data = req.body;

    //  let link = process.env.SERVERLINK + "/uploadsstudent/" + data.filename;
    let sqlQuery = `UPDATE student SET firstName = '${data.firstName}', lastName = '${data.lastName}', otherName = '${data.otherName}', class = '${data.classes}', section = '${data.section}', religion = '${data.religion}', gender = '${data.gender}', dateofbirth = '${data.dateofbirth}' WHERE student_id = '${data.studentId}' `;

    pool.query(sqlQuery, (error, result) => {
      if (error) {
        console.log(error);
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
        let data1 = data.g1
        let data2 = data.g2
        console.log(data1)
        console.log(data2)

        if (data.g1.id) updateGuardianInfo(data1);
        if (data.g2.id) updateGuardianInfo(data2);

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
          .json({ success: 0, error: "internal server error", message: error });
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


  //////////////////////////////
  deleteSingleStudentCart: (req, res) => {
    const data = req.body;
    console.log(data);
    let sqlQuery = `delete from studentscartegory where id = '${data.id}'`;
    // let sqlQuery = `delete from fee`;

    pool.query(sqlQuery, (error, result) => {
      if (error) {
        console.log(
          `${req.method} ${req.originalUrl},'DB error:'${error.sqlMessage}, delete fee Cartegory by id`
        );
        return res
          .status(500)
          .json({ success: 0, error: "internal server error", message: error });
      }

      if (result.affectedRows != 1) {
        console.log(
          `${req.method} ${req.originalUrl}, delete fee Cartegory by  id: no fee Cartegory record found`
        );
        return res.status(200).json({
          success: 0,
          error: "delete fee Cartegory by id: no fee cartegory record found",
          message: error,
        });
      }
      if (result.affectedRows == 1) {
        let sqlQuery = `select * from studentscartegory `;
        pool.query(sqlQuery, (error, result) => {
          res.status(200).json({ success: 1, data: result });
        });
      }
    });
  },

  createstudentCartegory: (req, res) => {
    const data = req.body;
    let hash = hashgenerator(7);
    console.log(data);
    let sqlQuery = `insert into studentscartegory (title,cartid,createdby,createdat,description) values
  ('${data.name}','${hash}','${data.createdby}','${date}','${data.description}')`;
    pool.query(sqlQuery, (error, result) => {
      if (error) {
        console.log(
          `${req.method}  ${error.sqlMessage}, ${req.originalUrl}, 'server error', create  fee cartegory`
        );

        return res
          .status(500)
          .json({ success: 0, error: "internal server error", message: error });
      }

      console.log(
        `${req.method} ${req.originalUrl},'success', create  fee cartegory`
      );
      if (result.affectedRows == 1) {
        console.log(`${req.method} ${req.originalUrl},Success create new fee`);

        console.log(
          `${req.method} ${req.originalUrl},Success create new column field`
        );
        let sqlQuery = `select * from studentscartegory `;
        pool.query(sqlQuery, (error, result) => {
          res.status(200).json({ success: 1, data: result });
        });
      }
    });
  },
  getCart: (req, res) => {
    let sqlQuery = `select * from studentscartegory`;
    pool.query(sqlQuery, (error, result) => {
      if (error) {
        console.log(
          `${req.method} ${req.originalUrl}, 'server error', fetch all fee`
        );

        return res
          .status(500)
          .json({ success: 0, error: "internal server error", message: error });
      }

      console.log(`${req.method} ${req.originalUrl},'success', fetch all fee`);

      res.status(200).json({ success: 1, data: result });
    });
  },
  updatefeecart: (req, res) => {
    const data = req.body;

    let sqlQuery = `update studentscartegory set title ='${data.name}',description='${data.description}',CreatedBy='${data.createdby}',createdat='${date}' where id = ${data.id}`;

    pool.query(sqlQuery, (error, result) => {
      if (error) {
        console.log(
          `${req.method} ${req.originalUrl},'DB error:'${error.sqlMessage}, update fee data`
        );
        return res
          .status(500)
          .json({ success: 0, error: "internal server error", message: error });
      }

      if (result.affectedRows != 1) {
        console.log(
          `${req.method} ${req.originalUrl}, update fee data: no record found`
        );
        return res.status(200).json({
          success: 0,
          error: "update fee data: no record found",
        });
      }

      if (result.affectedRows == 1) {
        let sqlQuery = `select * from studentscartegory`;
        pool.query(sqlQuery, (error, result) => {
          res.status(200).json({ success: 1, data: result });
        });
      }
    });
  },
};

// thygracenaturalClinic$7
