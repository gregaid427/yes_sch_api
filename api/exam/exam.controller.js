const pool = require("../../config/database.js");
// const logger = require("../../util/logger.js");
var createHash = require("hash-generator");

function checkGradTitleExist(data, callBack) {
  pool.query(
    `select * from grade where gradetitle = ? `,
    [data],

    (error, results, fields) => {
      if (error) {
        callBack(error);
      }
      return callBack(null, results[0]);
    }
  );
}

function checkExamGroupExist(data, callBack) {
  pool.query(
    `select * from grade where gradetitle = ? `,
    [data],

    (error, results, fields) => {
      if (error) {
        callBack(error);
      }
      return callBack(null, results[0]);
    }
  );
}
function checkExamExist(data, callBack) {
  pool.query(
    `select * from exam where class = '${data.class}' and section = '${data.section}' and session = '${data.session}' and examgroup = '${data.examgroup}' `,

    (error, results, fields) => {
      if (error) {
        callBack(error);
      }
      return callBack(null, results[0]);
    }
  );
}
async function creategradegroup(
  title,
  min,
  max,
  examscore,
  classscore,
  createdby,
  notes,
  grade,
  remarks,
  otherscore
) {
  const promise1 = await new Promise((resolve, reject) => {
    let date = new Date();
    date = date.toLocaleDateString("en-CA");
    let sqlQuery = `insert into grade (gradetitle,minscore,maxscore,exampercent,classworkpercent,createdby,createdat,notes,grades,scoreremarks,otherscore) values
 ('${title}','${min}','${max}','${examscore}','${classscore}','${createdby}','${date}','${notes}','${grade}','${remarks}','${otherscore}')`;

    pool.query(sqlQuery, (error, results, fields) => {
      if (error) {
        console.log(error);
        resolve(false);
        return console.log("error creating grade group");
      }
      resolve(true);
      console.log("grade group logged created successfully");
    });
  });

  return promise1;
}

let date = new Date();
module.exports = {
  creategradegroup: async (req, res) => {
    let data = req.body;

    const promise1 = await new Promise((resolve, reject) => {
      checkGradTitleExist(data.title, (err, results) => {
        if (results) {
          console.log("Create Grade Group Title Exists");
          resolve(true);
          return res
            .status(200)
            .json({ success: 0, data: null, message: "Group Title Exists" });
        } else {
          for (let i = 0; i < data.grades.length; i++) {
            let title = data.title;
            let notes = data.notes;
            let examscore = data.examScore;
            let classscore = data.classscore;
            let otherscore = data.otherScore;

            let createdby = data.createdby;

            let min = data.grades[i][0];
            let max = data.grades[i][1];
            let grade = data.grades[i][2];
            let remarks = data.grades[i][3];
            console.log(data.grades[i]);
            let create = creategradegroup(
              title,
              min,
              max,
              examscore,
              classscore,
              createdby,
              notes,
              grade,
              remarks,
              otherscore
            );
            if (create == false)
              res.status(200).json({
                success: 0,
                data: undefined,
                message: "Internal Server Error",
              });

            if (i + 1 == data.grades.length) {
              let bb = create;
              console.log(bb);
              console.log("successful creation");

              let sqlQuery = `SELECT DISTINCT(grade.gradetitle), exampercent,classworkpercent,gradeid,createdby,otherscorepercent from grade group by gradetitle order by gradeid desc`;
              pool.query(sqlQuery, (error, result) => {
                console.log(error);

                if (error) {
                  // logger.info(
                  //   `${req.method} ${req.originalUrl} ${error}, 'server error', fetch all Class`
                  // );
                  console.log(error);

                  return res.status(500).json({
                    success: 0,
                    error: "internal server error",
                    message: error,
                  });
                }

                // logger.info(
                //   `${req.method} ${req.originalUrl},'success', fetch all Class`
                // );

                res.status(200).json({ success: 1, data: result });
              });
            }
          }
        }
      });
    });
  },
  createnewexam: async (req, res) => {
    let data = req.body;
    checkExamExist(data, (err, results) => {
      if (results) {
        console.log("Create new Exam  Exists For Academic Session");
        return res
          .status(200)
          .json({
            success: 0,
            data: null,
            message: "Exam Already Exist For Academic Session",
          });
      } else {
        function hashgenerator(num) {
          return createHash(num);
        }
        var code = hashgenerator(6);
        let date = new Date();
        date = date.toLocaleDateString("en-CA");

      if(data.section == 'None'){
        let sqlQuery1 = `insert into exam (examcode,createdat,createdby,notes,examgroup,class,subject,session) values
        ('${code}','${date}','${data.createdby}','${data.notes}','${data.examgroup}','${data.class}','${data.subjects}','${data.session}')`;
      pool.query(sqlQuery1, (error, result) => {
        if (error) {
          // logger.info(
          //   `${req.method} ${req.originalUrl} ${error}, 'server error', fetch all Class`
          // );
          console.log("Error creating examgroup");
          console.log(error);

          return res.status(500).json({
            success: 0,
            error: "internal server error",
            message: error,
          });
        }
        let sqlQuery = `SELECT * from exam order by examsid desc `;
        pool.query(sqlQuery, (error, resultz) => {
          console.log(error);

          if (error) {
            // logger.info(
            //   `${req.method} ${req.originalUrl} ${error}, 'server error', fetch all Class`
            // );
            console.log(error);

            return res.status(500).json({
              success: 0,
              error: "internal server error",
              message: error,
            });
          }

          console.log(
            `${req.method} ${req.originalUrl},'success', fetch all exam`
          );

          res.status(200).json({ success: 1, data: resultz });
        });
      });
      }else{
        let sqlQuery1 = `insert into exam (examcode,createdat,createdby,notes,examgroup,class,section,subject,session) values
        ('${code}','${date}','${data.createdby}','${data.notes}','${data.examgroup}','${data.class}','${data.section}','${data.subjects}','${data.session}')`;
      pool.query(sqlQuery1, (error, result) => {
        if (error) {
          // logger.info(
          //   `${req.method} ${req.originalUrl} ${error}, 'server error', fetch all Class`
          // );
          console.log("Error creating examgroup");
          console.log(error);

          return res.status(500).json({
            success: 0,
            error: "internal server error",
            message: error,
          });
        }
        let sqlQuery = `SELECT * from exam order by examsid desc `;
        pool.query(sqlQuery, (error, resultz) => {
          console.log(error);

          if (error) {
            // logger.info(
            //   `${req.method} ${req.originalUrl} ${error}, 'server error', fetch all Class`
            // );
            console.log(error);

            return res.status(500).json({
              success: 0,
              error: "internal server error",
              message: error,
            });
          }

          console.log(
            `${req.method} ${req.originalUrl},'success', fetch all exam`
          );

          res.status(200).json({ success: 1, data: resultz });
        });
      });
      }
      }
    });
  },
  createexamgroup: async (req, res) => {
    let data = req.body;

    checkExamGroupExist(data.title, (err, results) => {
      if (results) {
        console.log("Create Exam Group Title Exists");
        resolve(true);
        return res
          .status(200)
          .json({ success: 0, data: null, message: "Group Title Exists" });
      } else {
        let sqlQuery1 = `insert into examgroup (grouptitle,createdat,createdby,session) values
          ('${data.title}','${date}','${data.createdby}','${data.session}')`;
        pool.query(sqlQuery1, (error, result) => {
          if (error) {
            // logger.info(
            //   `${req.method} ${req.originalUrl} ${error}, 'server error', fetch all Class`
            // );
            console.log("Error creating examgroup");

            return res.status(500).json({
              success: 0,
              error: "internal server error",
              message: error,
            });
          }
          let sqlQuery = `SELECT * from examgroup `;
          pool.query(sqlQuery, (error, resultz) => {
            console.log(error);

            if (error) {
              // logger.info(
              //   `${req.method} ${req.originalUrl} ${error}, 'server error', fetch all Class`
              // );
              console.log(error);

              return res.status(500).json({
                success: 0,
                error: "internal server error",
                message: error,
              });
            }

            // logger.info(
            //   `${req.method} ${req.originalUrl},'success', fetch all Class`
            // );

            res.status(200).json({ success: 1, data: resultz });
          });
        });
      }
    });
  },
  getexamlist: (req, res) => {
    let sqlQuery = `SELECT * from exam order by examsid desc  `;

    pool.query(sqlQuery, (error, result) => {
      console.log(error);

      if (error) {
        // logger.info(
        //   `${req.method} ${req.originalUrl} ${error}, 'server error', fetch all Class`
        // );
        console.log(error);

        return res
          .status(500)
          .json({ success: 0, error: "internal server error", message: error });
      }

      console.log(`${result} ${req.originalUrl},'success', fetch all Exam`);

      res.status(200).json({ success: 1, data: result });
    });
  },
  getexamgroup: (req, res) => {
    let sqlQuery = `SELECT * from examgroup  `;

    pool.query(sqlQuery, (error, result) => {
      console.log(error);

      if (error) {
        // logger.info(
        //   `${req.method} ${req.originalUrl} ${error}, 'server error', fetch all Class`
        // );
        console.log(error);

        return res
          .status(500)
          .json({ success: 0, error: "internal server error", message: error });
      }

      console.log(`${result} ${req.originalUrl},'success', fetch all Class`);

      res.status(200).json({ success: 1, data: result });
    });
  },
  getgradegroup: (req, res) => {
    let sqlQuery = `SELECT DISTINCT(grade.gradetitle), exampercent,classworkpercent,gradeid,createdby,otherscorepercent from grade group by gradetitle order by gradeid desc`;

    pool.query(sqlQuery, (error, result) => {
      console.log(error);

      if (error) {
        // logger.info(
        //   `${req.method} ${req.originalUrl} ${error}, 'server error', fetch all Class`
        // );
        console.log(error);

        return res
          .status(500)
          .json({ success: 0, error: "internal server error", message: error });
      }

      console.log(`${result} ${req.originalUrl},'success', fetch all Class`);

      res.status(200).json({ success: 1, data: result });
    });
  },
  searchcustom: (req, res) => {
    let data = req.body
    let sqlQuery = `select * from exam where session = '${data.session}' and examgroup = '${data.examgroup}' `;
    pool.query(sqlQuery, (error, result) => {
      console.log(error);

      if (error) {
        // logger.info(
        //   `${req.method} ${req.originalUrl} ${error}, 'server error', fetch all sections`
        // );
        console.log(error);

        return res
          .status(500)
          .json({ success: 0, error: "internal server error", message: error });
      }


      // logger.info(
      //   `${req.method} ${req.originalUrl},'success', fetch all sections`
      // );

      res.status(200).json({ success: 1, data: result });
    });
  },
  getdetailgradegroup: (req, res) => {
    let sqlQuery = `select * from grade`;
    pool.query(sqlQuery, (error, result) => {
      console.log(error);

      if (error) {
        // logger.info(
        //   `${req.method} ${req.originalUrl} ${error}, 'server error', fetch all Class`
        // );
        console.log(error);

        return res
          .status(500)
          .json({ success: 0, error: "internal server error", message: error });
      }

      // logger.info(
      //   `${req.method} ${req.originalUrl},'success', fetch all Class`
      // );

      res.status(200).json({ success: 1, data: result });
    });
  },

  getAllSection: (req, res) => {
    let sqlQuery = `select * from section where isActive = 'true'`;
    pool.query(sqlQuery, (error, result) => {
      console.log(error);

      if (error) {
        // logger.info(
        //   `${req.method} ${req.originalUrl} ${error}, 'server error', fetch all sections`
        // );
        console.log(error);

        return res
          .status(500)
          .json({ success: 0, error: "internal server error", message: error });
      }

      // logger.info(
      //   `${req.method} ${req.originalUrl},'success', fetch all sections`
      // );

      res.status(200).json({ success: 1, data: result });
    });
  },
  getsectionByClassId: (req, res) => {
    let id = req.body.classId;

    let sqlQuery = `select * from section where classId = '${id}'`;
    pool.query(sqlQuery, (error, result) => {
      console.log(error);

      if (error) {
        // logger.info(
        //   `${req.method} ${req.originalUrl} ${error}, 'server error', fetch all sections`
        // );
        console.log(error);

        return res
          .status(500)
          .json({ success: 0, error: "internal server error", message: error });
      }

      // logger.info(
      //   `${req.method} ${req.originalUrl},'success', fetch all sections`
      // );
      console.log(result);
      res.status(200).json({ success: 1, data: result });
    });
  },
  getAllSectiongroup: (req, res) => {
    let sqlQuery = `select * from sectiongroup where isActive = 'true'`;
    pool.query(sqlQuery, (error, result) => {
      console.log(error);

      if (error) {
        // logger.info(
        //   `${req.method} ${req.originalUrl} ${error}, 'server error', fetch all sections`
        // );
        console.log(error);

        return res
          .status(500)
          .json({ success: 0, error: "internal server error", message: error });
      }

      // logger.info(
      //   `${req.method} ${req.originalUrl},'success', fetch all sections`
      // );

      res.status(200).json({ success: 1, data: result });
    });
  },
  getAllClassWithSection: (req, res) => {
    let sqlQuery = `select class.classId, class.title ,section.sectionName from class inner join section on class.classId = section.classId  order by class.title asc`;
    pool.query(sqlQuery, (error, result) => {
      if (error) {
        // logger.info(
        //   `${req.method} ${req.originalUrl} ${error}, 'server error', fetch all Class with section`
        // );

        return res
          .status(500)
          .json({ success: 0, error: "internal server error", message: error });
      }

      // logger.info(
      //   `${req.method} ${req.originalUrl},'success', fetch all Class with section`
      // );

      res.status(200).json({ success: 1, data: result });
    });
  },

  updateClass: (req, res) => {
    const data = req.body;

    console.log(data);
    let sqlQuery = `update class set title ='${data.title}',instructor='${data.instructor}',updatedBy='${data.updatedBy}',updatedAt='${date}' where classId = ${data.classId}`;

    pool.query(sqlQuery, (error, result) => {
      if (error) {
        // logger.info(
        //   `${req.method} ${req.originalUrl},'DB error:'${error.sqlMessage}, update Class data`
        // );
        return res
          .status(500)
          .json({ success: 0, error: "internal server error", message: error });
      }

      if (result.affectedRows != 1) {
        // logger.info(
        //   `${req.method} ${req.originalUrl}, update Class data: no record found`
        // );
        return res
          .status(200)
          .json({ success: 0, error: "update Class data: no record found" });
      }
      if (result.affectedRows == 1) {
        // logger.info(`${req.method} ${req.originalUrl}, delete Class  by id`);
        //return table data
        let sqlQuery = `SELECT * from class where isActive='true' order by class.title`;
        pool.query(sqlQuery, (error, result) => {
          res.status(200).json({ success: 1, data: result });
        });
      }
    });
  },

  updateSection: (req, res) => {
    const data = req.body;

    console.log(data);
    let sqlQuery = `update sectiongroup set sectionName ='${data.sectionName}' where id = ${data.id}`;

    pool.query(sqlQuery, (error, result) => {
      if (error) {
        // logger.info(
        //   `${req.method} ${req.originalUrl},'DB error:'${error.sqlMessage}, update section data`
        // );
        return res
          .status(500)
          .json({ success: 0, error: "internal server error", message: error });
      }

      if (result.affectedRows != 1) {
        // logger.info(
        //   `${req.method} ${req.originalUrl}, update section data: no record found`
        // );
        return res
          .status(200)
          .json({ success: 0, error: "update section data: no record found" });
      }

      if (result.affectedRows == 1) {
        // logger.info(`${req.method} ${req.originalUrl}, update section data`);
        return res
          .status(200)
          .json({ success: 1, data: "update section data success" });
      }
    });
  },
  updateClassStatus: (req, res) => {
    let sqlQuery = `update class set isActive ='false'`;

    pool.query(sqlQuery, (error, result) => {
      if (error) {
        // logger.info(
        //   `${req.method} ${req.originalUrl},'DB error:'${error.sqlMessage}, update Class data`
        // );
        return res
          .status(500)
          .json({ success: 0, error: "internal server error", message: error });
      }

      if (result.affectedRows != 1) {
        // logger.info(
        //   `${req.method} ${req.originalUrl}, update Class data: no record found`
        // );
        return res
          .status(200)
          .json({ success: 0, error: "update class data: no record found" });
      }

      if (result.affectedRows == 1) {
        // logger.info(`${req.method} ${req.originalUrl}, update Class data`);
        return res
          .status(200)
          .json({ success: 1, error: "update class data success" });
      }
    });
  },

  deleteAllClass: (req, res) => {
    const id = req.body;
    // let sqlQuery = `delete from Class where userId = ${id.Class_id}`;
    let sqlQuery = `delete from class`;

    pool.query(sqlQuery, (error, result) => {
      if (error) {
        // logger.info(
        //   `${req.method} ${req.originalUrl},'DB error:'${error.sqlMessage}, delete Class by id`
        // );
        return res
          .status(500)
          .json({ success: 0, error: "internal server error", message: error });
      }

      if (result.affectedRows != 1) {
        // logger.info(
        //   `${req.method} ${req.originalUrl}, delete Class by  id: no Class record found`
        // );
        return res.status(200).json({
          success: 0,
          error: "delete Class by id: no Class record found",
        });
      }
      if (result.affectedRows == 1) {
        // logger.info(`${req.method} ${req.originalUrl}, delete Class  by id`);
        return res.status(200).json({
          success: 1,
          message: "Class deleted successfully",
        });
      }
    });
  },
  deleteSingleClass: (req, res) => {
    const id = req.params.classId;
    let sqlQuery = `delete from class where classId = '${id}'`;

    pool.query(sqlQuery, (error, result) => {
      if (error) {
        // logger.info(
        //   `${req.method} ${req.originalUrl},'DB error:'${error.sqlMessage}, delete Class by id`
        // );
        return res
          .status(500)
          .json({ success: 0, error: "internal server error", message: error });
      }

      if (result.affectedRows != 1) {
        // logger.info(
        //   `${req.method} ${req.originalUrl}, delete Class by  id: no Class record found`
        // );
        return res.status(200).json({
          success: 0,
          error: "delete Class by id: no Class record found",
        });
      }
      if (result.affectedRows == 1) {
        // logger.info(`${req.method} ${req.originalUrl}, delete Class  by id`);
        //return table data
        let sqlQuery = `SELECT * from class where isActive='true' order by class.title`;
        pool.query(sqlQuery, (error, result) => {
          res.status(200).json({ success: 1, data: result });
        });
      }
    });
  },

  deletesinglegroup: (req, res) => {
    const id = req.params.id;
    let sqlQuery = `delete from sectiongroup where id = '${id}'`;

    pool.query(sqlQuery, (error, result) => {
      if (error) {
        // logger.info(
        //   `${req.method} ${req.originalUrl},'DB error:'${error.sqlMessage}, delete Class by id`
        // );
        return res
          .status(500)
          .json({ success: 0, error: "internal server error", message: error });
      }

      if (result.affectedRows != 1) {
        // logger.info(
        //   `${req.method} ${req.originalUrl}, delete Class by  id: no Class record found`
        // );
        return res.status(200).json({
          success: 0,
          error: "delete Class by id: no Class record found",
        });
      }
      if (result.affectedRows == 1) {
        // logger.info(`${req.method} ${req.originalUrl}, delete Class  by id`);
        //return table data
        let sqlQuery = `select * from sectiongroup `;
        pool.query(sqlQuery, (error, result) => {
          res.status(200).json({ success: 1, data: result });
        });
      }
    });
  },

  truncateTable: (req, res) => {
    let sqlQuery = `truncate table class`;
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

  deleteSectionbyClass: (req, res) => {
    const id = req.body;
    console.log(id);
    let sqlQuery = `delete from section where classId = '${id.class}' and sectionName = '${id.section}'`;

    pool.query(sqlQuery, (error, result) => {
      console.log(result.affectedRows);
      if (error) {
        // logger.info(
        //   `${req.method} ${req.originalUrl} ${req.sqlQuery},'DB error:'${error.sqlMessage}, delete Class section by id`
        // );
        return res
          .status(500)
          .json({ success: 0, error: "internal server error", message: error });
      }

      if (result.affectedRows != 1) {
        // logger.info(
        //   `${req.method} ${req.originalUrl}, delete Class section by  id: no  record found`
        // );
        return res.status(200).json({
          success: 0,
          error: "delete class section by id: no  record found",
        });
      }
      if (result.affectedRows == 1) {
        // logger.info(
        //   `${req.method} ${req.originalUrl}, delete Class section  by id`
        // );
        return res.status(200).json({
          success: 1,
          message: "Class section deleted successfully",
        });
      }
    });
  },
};
