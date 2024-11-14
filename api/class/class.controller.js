const pool = require("../../config/database.js");
// const logger = require("../../util/logger.js");

function getClassByName(email, callBack) {
  pool.query(
    `select * from class where title = ? `,
    [email],
    (error, results, fields) => {
      if (error) {
        callBack(error);
      }
      return callBack(null, results[0]);
    }
  );
}

function getsectionByName(email, callBack) {
  pool.query(
    `select * from section where sectionName = ? `,
    [email],
    (error, results, fields) => {
      if (error) {
        callBack(error);
      }
      return callBack(null, results[0]);
    }
  );
}

let date = new Date();
date = date.toUTCString();
module.exports = {
  createClass: async (req, res) => {
    const data = req.body;
    const currentYear = new Date().getFullYear();

    const classId = Math.floor(Math.random() * 9000 + 1000 + currentYear);

    getClassByName(data.title, (err, results) => {
      if (results) {
        return res.status(200).json({
          success: 0,
          message: "Class Name Already Exists",
          data: [],
        });
      }

      // if not create user
      else {
        console.log(data.sections);
        if (data.sections[0] == null) {

          let sqlQuery = `insert into class (classId,title,createdAt,createdBy,isActive,instructor) values
          ('${classId}','${data.title}','${date}','${data.createdBy}','true','${data.instructor}')`;
          pool.query(sqlQuery, (error, result) => {
            if (error) {
              console.log(error)
              // logger.info(
              //   `${req.method} ${req.originalUrl},'DB error:'${error.sqlMessage}, Error create new Class`
              // );
              return res
                .status(500)
                .json({ success: 0, error: "internal server error", message: error });

            }

            let sqlQuery = `select * from class where isActive = 'true' group by title`;

            pool.query(sqlQuery, (error, result) => {
              console.log(result)
              res.status(200).json({ success: 1, data: result });
            });

          });
        }
        else {
          let datas = data.sections;

          for (let i = 0; i < datas.length; i++) {
            let section = datas[i];
            console.log(section);

            let sqlQuery = `insert into class (classId,title,createdAt,createdBy,isActive,instructor,section) values
             ('${classId}','${data.title}','${date}','${data.createdBy}','true','${data.instructor}','${section}')`;
            pool.query(sqlQuery, (error, result) => {
              if (error) {
                // logger.info(
                //   `${req.method} ${req.originalUrl},'DB error:'${error.sqlMessage}, Error create new Class`
                // );
                return res
                  .status(500)
                  .json({ success: 0, error: "internal server error", message: error });

              }

              if (datas.length - 1 == i) {
                let sqlQuery = `select * from class where isActive = 'true' group by title`;

                pool.query(sqlQuery, (error, result) => {
                  console.log(result)
                  res.status(200).json({ success: 1, data: result });
                });
              }
            });
          }


        }
      }
    });
  },

  // createClassSection: async (req, res) => {

  //   getsectionByName(sectiondata.sectionname, (err, results) => {
  //     if (results) {
  //       return res.status(200).json({
  //         success: 0,
  //         message: "Section Name Already Exists",
  //         data: [],
  //       });
  //     }

  //     // if not create user
  //     else {

  //   const data = req.body;

  //

  //   let sqlQuery = `insert into section (classId,sectionName,createdAt,createdBy,isActive) values
  //          ('${data.classId}','${data.sectionName}','${date}','${data.createdBy}','${data.isActive}')`;
  //   pool.query(sqlQuery, (error, result) => {
  //     if (error) {
  //       logger.info(
  //         `${req.method} ${req.originalUrl},'DB error:'${error.sqlMessage}, create new Class section`
  //       );
  //       return res
  //         .status(500)
  //                  .json({ success: 0, error: "internal server error",message:error });

  //     }

  //     if (result.affectedRows == 1) {
  //       logger.info(`${req.method} ${req.originalUrl}, create new Class section`);
  //       res.status(200)
  //       .json({ success: 1, Message: "create new Class section successful" });
  //     }
  //   });
  // }

  // });

  // },
  createClassSection: async (req, res) => {
    const data = req.body;

    getsectionByName(data.sectionName, (err, results) => {
      if (results) {
        return res.status(200).json({
          success: 0,
          message: "Section Name Already Exists",
          data: [],
        });
      }

      // if not create user
      else {
        const data = req.body;

        let sqlQuery = `insert into sectiongroup (sectionName,createdAt,createdBy,isActive) values
           ('${data.sectionName}','${date}','${data.createdBy}','true')`;
        pool.query(sqlQuery, (error, result) => {
          if (error) {
            // logger.info(
            //   `${req.method} ${req.originalUrl},'DB error:'${error.sqlMessage}, create new Class section`
            // );
            return res
              .status(500)
              .json({ success: 0, error: "internal server error", message: error });

          }

          if (result.affectedRows == 1) {
            // logger.info(
            //   `${req.method} ${req.originalUrl}, create new Class section`
            // );
            let sqlQuery = `select * from sectiongroup where isActive = 'true'`;
            pool.query(sqlQuery, (error, result) => {
              res.status(200).json({ success: 1, data: result });
            });
          }
        });
      }
    });
  },

  getClassByClassId: async (req, res) => {
    const Id = req.body.classId;
    const title = req.body.classTitle;

    let sqlQuery1 = `select count(student.student_id) as number from student where class = '${title}' and isActive ='true'`;

    pool.query(sqlQuery1, (error, result1) => {
      console.log(result1);

      //////////

      let sqlQuery = `select * from class left join section on class.classId = section.classId where class.classId = '${Id}' `;
      pool.query(sqlQuery, (error, result) => {
        if (error) {
          // logger.info(
          //   `${req.method} ${req.originalUrl},'DB error:'${error.sqlMessage}, fetch Class by id`
          // );
          return res
            .status(500)
            .json({ success: 0, error: "internal server error", message: error });

        }

        if (!result) {
          // logger.info(
          //   `${req.method} ${req.originalUrl}, fetch Class by id: no record found`
          // );
          return res
            .status(200)
            .json({ success: 1, error: "fetch Class by id: no record found" });
        } else {
          res.status(200).json({ success: 1, data: result, nos: result1 });

          console.log(result);

          // logger.info(
          //   `${req.method} ${req.originalUrl}, success fetch Class by id`
          // );
        }
      });

      //////////
    });
  },
  getClassTudentStat: (req, res) => {
    let sqlQuery =
      `SELECT class,count(student_id) from student where isActive='true' group by student.class`;

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
  getAllClassNo: (req, res) => {
    let sqlQuery =
      `SELECT * from class where isActive='true' order by class.title`;

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
  allclassexam: (req, res) => {
    let data = req.body
    console.log(data)
    let sqlQuery = `select * from examresultcode where class = '${data.classes}' and section = '${data.section}' and session = '${data.session}' and examgroup = '${data.examgroup}' and subject = '${data.subject}' `
    console.log(sqlQuery)
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
      console.log('result is sssss');
      console.log(result);


      res.status(200).json({ success: 1, data: result });
    });
  },
  getAllClass: (req, res) => {
    let sqlQuery = `select * from class where isActive = 'true' group by title`;
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
    let data = req.body
    let sqlQuery = `select * from class where title ='${data.title}'`;
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

      if (!result) {
        // logger.info(
        //   `${req.method} ${req.originalUrl}, update Class data: no record found`
        // );
        return res
          .status(200)
          .json({ success: 0, error: "update Class data: no record found" });
      }

      // logger.info(`${req.method} ${req.originalUrl}, delete Class  by id`);
      //return table data
      let sqlQuery = `SELECT * from class where isActive='true' order by class.title`;
      pool.query(sqlQuery, (error, result) => {
        res.status(200).json({ success: 1, data: result });
      });

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
    let sqlQuery = `delete from class where title = '${id.title}' and section = '${id.section}'`;

    pool.query(sqlQuery, (error, result) => {
      console.log(result);
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

        let sqlQuery = `select * from class where title ='${id.title}'`;
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
      }
    });
  },
};
