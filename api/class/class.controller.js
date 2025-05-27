const pool = require("../../config/database.js");
// const logger = require("../../util/logger.js");

function getClassByName(email, callBack) {
  try {
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
  catch (error) {
  }
}

function getsectionByName(email, callBack) {
  console.log(email)
  try {
    pool.query(
      `select * from sectiongroup where sectionName = ? `,
      [email],
      (error, results, fields) => {
        if (error) {
          console.log(error)
          callBack(error);
        }
        console.log(error)

        console.log(results)
        return callBack(null, results[0]);
      }
    );
  }
  catch (error) {
  }
}

let date = new Date();
date = date.toUTCString();
module.exports = {
  createClass: async (req, res) => {
    const data = req.body;
    const currentYear = new Date().getFullYear();

    const classId = Math.floor(Math.random() * 900000 + 100000 + currentYear);

    getClassByName(data.title, (err, results) => {
      if (results) {
        return res.status(200).json({
          success: 0,
          message: "Class Name Already Exists",
          data: [],
        });
      }

      // if not create class
      else {
        console.log(data.sections);
        if (data.sections[0] == null) {
                const classExamId = Math.floor(Math.random() * 9000000 + 100000 );

          let sqlQuery = `insert into class (classId,classexamid,title,createdAt,createdBy,isActive,instructor,sectionid) values
          ('${classId}','${classExamId}','${data.title}','${date}','${data.createdBy}','true','${data.instructor}','0')`;
          try {
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

              try {
                pool.query(sqlQuery, (error, result) => {
                  console.log(result)
                  res.status(200).json({ success: 1, data: result });
                });
              }
              catch (error) {
              }

            });
          }
          catch (error) {
          }
        }
        else {
          let datas = data.sections;

          for (let i = 0; i < datas.length; i++) {
            let section = datas[i];
                const classExamId = Math.floor(Math.random() * 9000000 + 100000 );

            // console.log(section);

            let sqlQuery = `insert into class (classId,classexamid,title,createdAt,createdBy,isActive,instructor,section,sectionid) values
             ('${classId}','${classExamId}','${data.title}','${date}','${data.createdBy}','true','${data.instructor}','${section.sectionName}','${section.id}')`;
            try {
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
                  let sqlQuery = `select * from class where isActive = 'true' group by title order by id desc`;

                  try {
                    pool.query(sqlQuery, (error, result) => {
                      console.log(result)
                      res.status(200).json({ success: 1, data: result });
                    });
                  }
                  catch (error) {
                  }
                }

              });
            }
            catch (error) {
            }
          }


        }
      }
    });
  },
  addClassSection: async (req, res) => {
    const data = req.body;
    const currentYear = new Date().getFullYear();
    console.log(data);

    // const classId = Math.floor(Math.random() * 9000 + 1000 + currentYear);

    let datas = data.sections;
    // console.log(oldsection);
    // console.log(datas);
    function getarr(val) {
      let arr = []
      for (const x of val) {
        arr.push(x.sectionName)
      }
      return arr
    }
    function getarr1(val) {
      let arr = []
      for (const x of val) {
        arr.push(x.section)
      }
      return arr
    }
    //  console.log(getarr(datas))
    // console.log(getarr1(data.oldsection))
    let old = getarr1(data.oldsection)
    let xx = getarr(datas)
    for (const val of data.sections) {
                const classExamId = Math.floor(Math.random() * 9000000 + 100000 );


      let sqlQuery = `insert into class (classId,title,classexamid,createdAt,createdBy,isActive,instructor,section,sectionid) values
      ('${data.classId}','${data.title}','${date}','${classExamId}','${data.createdBy}','true','${data.instructor}','${val.sectionName}','${val.id}')`;

      if (old.includes(val.sectionName) == false) {

        const promise1 = await new Promise((resolve, reject) => {

          try {
            pool.query(sqlQuery, (error, result) => {
              if (error) {
                // logger.info(
                //   `${req.method} ${req.originalUrl},'DB error:'${error.sqlMessage}, Error create new Class`
                // );
                return res
                  .status(500)
                  .json({ success: 0, error: "internal server error", message: error });

              }
              resolve(true)


            });

          }

          catch (error) {
          }
        });

      }


    }

   // attempt to delete class with null section when adding new section
    let sqlQueryt = `delete from class where id = '${data.id}' `;

// if(data.oldsection[0].section == null){
//   const promise1 = await new Promise((resolve, reject) => {

//     try {
//       pool.query(sqlQueryt, (error, result) => {
//         if (error) {
//           // logger.info(
//           //   `${req.method} ${req.originalUrl},'DB error:'${error.sqlMessage}, Error create new Class`
//           // );
//           return res
//             .status(500)
//             .json({ success: 0, error: "internal server error", message: error });

//         }
//         resolve(true)


//       });

//     }

//     catch (error) {
//     }
//   });

//   let promise =promise1
// }
   

    let sqlQuery = `select * from class where isActive = 'true' group by title order by id desc `;

    try {
      pool.query(sqlQuery, (error, result) => {
        console.log(result)
        res.status(200).json({ success: 1, data: result });
      });
    }
    catch (error) {
    }


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
  //   try {
  //     pool.query(sqlQuery, (error, result) => {
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

        const currentYear = new Date().getFullYear();

        const sectionId = Math.floor(Math.random() * 9000 + 1000 + currentYear);

        let sqlQuery = `insert into sectiongroup (id,sectionName,createdAt,createdBy,isActive) values
           ('${sectionId}','${data.sectionName}','${date}','${data.createdBy}','true')`;
        try {
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
              try {
                pool.query(sqlQuery, (error, result) => {
                  res.status(200).json({ success: 1, data: result });
                });
              }
              catch (error) {
              }
            }


          });
        }
        catch (error) {
        }

      }
    });
  },

  getClassByClassId: async (req, res) => {
    const Id = req.body.classId;
    const title = req.body.classTitle;

    let sqlQuery1 = `select count(student.student_id) as number from student where class = '${title}' and isActive ='true'`;

    try {
      pool.query(sqlQuery1, (error, result1) => {
        console.log(result1);

        //////////

        let sqlQuery = `select * from class left join section on class.classId = section.classId where class.classId = '${Id}' `;
        try {
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
        }
        catch (error) {
        }
        //////////
      });
    }
    catch (error) {
    }
  },
  getClassTudentStat: (req, res) => {
    let sqlQuery =
      `SELECT class,count(student_id) from student where isActive='true' group by student.class`;

    try {
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
    }
    catch (error) {
    }
  },
  getAllClassNo: (req, res) => {
    let sqlQuery =
      `SELECT * from class where isActive='true' order by class.title`;

    try {
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
    }
    catch (error) {
    }
  },
  allclassexam: (req, res) => {
    let data = req.body
    console.log(data)
    let sqlQuery = `select * from examresultcode where class = '${data.classes}' and section = '${data.section}' and session = '${data.session}' and examgroup = '${data.examgroup}' and subject = '${data.subject}' `
    console.log(sqlQuery)
    try {
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
    }
    catch (error) {
    }
  },
  getAllClass: (req, res) => {
    let sqlQuery = `select * from class where isActive = 'true' group by title`;
    try {
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
    }
    catch (error) {
    }
  },

  getAllSection: (req, res) => {
    let sqlQuery = `select * from section where isActive = 'true'`;
    try {
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
    }
    catch (error) {
    }
  },
  getsectionByClassId: (req, res) => {
    let id = req.body.classId;

    let sqlQuery = `select * from section where classId = '${id}'`;
    try {
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
    }
    catch (error) {
    }
  },
  getAllSectiongroup: (req, res) => {
    let sqlQuery = `select * from sectiongroup where isActive = 'true'`;
    try {
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
    }
    catch (error) {
    }
  },
  getAllClassWithSection: (req, res) => {
    let data = req.body
    let sqlQuery = `select * from class where title ='${data.title}'`;
    try {
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
    catch (error) {
    }
  },

  updateClass: async (req, res) => {
    const data = req.body;
    console.log(data);

    let sqlQuery1 = `update class set title ='${data.title}',instructor='${data.instructor}',updatedBy='${data.updatedBy}',updatedAt='${date}' where title ='${data.prevclass}'`;
    let sqlQuery2 = `update attendance set classid ='${data.title}' where classid ='${data.prevclass}'`;
    let sqlQuery3 = `update assignfeecartegory set class ='${data.title}' where class ='${data.prevclass}'`;
    let sqlQuery4 = `update assignfeerecord set class ='${data.title}' where class ='${data.prevclass}'`;
    let sqlQuery5 = `update deletedstudent set class ='${data.title}' where class ='${data.prevclass}'`;
    let sqlQuery6 = `update examresultcode set class ='${data.title}' where class ='${data.prevclass}'`;
    let sqlQuery7 = `update feepaymentrecords set class ='${data.title}' where class ='${data.prevclass}'`;
    let sqlQuery8 = `update graduatedstudent set class ='${data.title}' where class ='${data.prevclass}'`;
    let sqlQuery9 = `update student set class ='${data.title}' where class ='${data.prevclass}'`;
        let sqlQuery10 = `update feedetails set class ='${data.title}' where class ='${data.prevclass}'`;

    console.log(sqlQuery1)
    const promise1 = await new Promise((resolve, reject) => {
      try {
        pool.query(sqlQuery1, (error, result) => {
          if (error) {

          }
          console.log('class cleared')
          resolve(true)
        });
      }
      catch (error) {
      }
    });
    let p1 = promise1

    const promise2 = await new Promise((resolve, reject) => {
      try {
        pool.query(sqlQuery2, (error, result) => {
          if (error) {

          }
          console.log('attendance cleared')
          resolve(true)
        });
      }
      catch (error) {
      }
    });
    let p2 = promise2

    const promise3 = await new Promise((resolve, reject) => {
      try {
        pool.query(sqlQuery3, (error, result) => {
          if (error) {

          }
          console.log('assignfeecartegory cleared')
          resolve(true)
        });
      }
      catch (error) {
      }
    });
    let p3 = promise3


    const promise4 = await new Promise((resolve, reject) => {
      try {
        pool.query(sqlQuery4, (error, result) => {
          if (error) {

          }
          console.log('assignfeerecord cleared')
          resolve(true)
        });
      }
      catch (error) {
      }
    });
    let p4 = promise4

    const promise5 = await new Promise((resolve, reject) => {
      try {
        pool.query(sqlQuery5, (error, result) => {
          if (error) {

          }
          console.log('deketedstudent cleared')
          resolve(true)
        });
      }
      catch (error) {
      }
    });
    let p5 = promise5

    const promise6 = await new Promise((resolve, reject) => {
      try {
        pool.query(sqlQuery6, (error, result) => {
          if (error) {

          }
          console.log('examresultcode cleared')
          resolve(true)
        });
      }
      catch (error) {
      }
    });
    let p6 = promise6


    const promise7 = await new Promise((resolve, reject) => {
      try {
        pool.query(sqlQuery7, (error, result) => {
          if (error) {

          }
          console.log('feepayrecord cleared')
          resolve(true)
        });
      }
      catch (error) {
      }
    });
    let p7 = promise7



    const promise8 = await new Promise((resolve, reject) => {
      try {
        pool.query(sqlQuery8, (error, result) => {
          if (error) {

          }
          console.log('gradstudent cleared')
          resolve(true)
        });
      }
      catch (error) {
      }
    });
    let p8 = promise8



    const promise9 = await new Promise((resolve, reject) => {
      try {
        pool.query(sqlQuery9, (error, result) => {
          if (error) {

          }
          console.log('student cleared')
          resolve(true)
        });
      }
      catch (error) {
      }
    });
    let p9 = promise9

   const promise10 = await new Promise((resolve, reject) => {
      try {
        pool.query(sqlQuery10, (error, result) => {
          if (error) {

          }
          console.log('student cleared')
          resolve(true)
        });
      }
      catch (error) {
      }
    });
    let p10 = promise10



    let sqlQuery = `SELECT * from class where isActive='true' order by class.title`;
    try {
      pool.query(sqlQuery, (error, result) => {
        res.status(200).json({ success: 1, data: result });
      });
    }
    catch (error) {
    }

  },

  updateSection: async (req, res) => {
    const data = req.body;

    console.log(data);
    // let sqlQuery = `update sectiongroup set sectionName ='${data.sectionName}' where id = ${data.id}`;








  let sqlQuery1 = `update sectiongroup set sectionName ='${data.sectionName}',createdAt='${date}' where id ='${data.id}'`;
    let sqlQuery2 = `update attendance set section ='${data.sectionName}' where section ='${data.prevclass}'`;
    let sqlQuery3 = `update class set section ='${data.sectionName}' where section ='${data.prevclass}'`;
    let sqlQuery4 = `update student set section ='${data.sectionName}' where section ='${data.prevclass}'`;
    let sqlQuery5 = `update examresultcode set section ='${data.sectionName}' where section ='${data.prevclass}'`;
    let sqlQuery6 = `update feedetails set section ='${data.sectionName}' where section ='${data.prevclass}'`;
    let sqlQuery7 = `update graduatedstudent set section ='${data.sectionName}' where section ='${data.prevclass}'`;
    

   const promise1 = await new Promise((resolve, reject) => {
      try {
        pool.query(sqlQuery1, (error, result) => {
          if (error) {

          }
          console.log('class cleared')
          resolve(true)
        });
      }
      catch (error) {
      }
    });
    let p1 = promise1

    const promise2 = await new Promise((resolve, reject) => {
      try {
        pool.query(sqlQuery2, (error, result) => {
          if (error) {

          }
          console.log('attendance cleared')
          resolve(true)
        });
      }
      catch (error) {
      }
    });
    let p2 = promise2

    const promise3 = await new Promise((resolve, reject) => {
      try {
        pool.query(sqlQuery3, (error, result) => {
          if (error) {

          }
          console.log('assignfeecartegory cleared')
          resolve(true)
        });
      }
      catch (error) {
      }
    });
    let p3 = promise3


    const promise4 = await new Promise((resolve, reject) => {
      try {
        pool.query(sqlQuery4, (error, result) => {
          if (error) {

          }
          console.log('assignfeerecord cleared')
          resolve(true)
        });
      }
      catch (error) {
      }
    });
    let p4 = promise4

    const promise5 = await new Promise((resolve, reject) => {
      try {
        pool.query(sqlQuery5, (error, result) => {
          if (error) {

          }
          console.log('deketedstudent cleared')
          resolve(true)
        });
      }
      catch (error) {
      }
    });
    let p5 = promise5

    const promise6 = await new Promise((resolve, reject) => {
      try {
        pool.query(sqlQuery6, (error, result) => {
          if (error) {

          }
          console.log('examresultcode cleared')
          resolve(true)
        });
      }
      catch (error) {
      }
    });
    let p6 = promise6


    const promise7 = await new Promise((resolve, reject) => {
      try {
        pool.query(sqlQuery7, (error, result) => {
          if (error) {

          }
          console.log('feepayrecord cleared')
          resolve(true)
         return res.status(200).json({ success: 1 });

        });
      }
      catch (error) {
      }
    });
    let p7 = promise7























    

    // try {
    //   pool.query(sqlQuery, (error, result) => {
    //     if (error) {
    //       // logger.info(
    //       //   `${req.method} ${req.originalUrl},'DB error:'${error.sqlMessage}, update section data`
    //       // );
    //       return res
    //         .status(500)
    //         .json({ success: 0, error: "internal server error", message: error });

    //     }

    //     if (!result.affectedRows) {
    //       // logger.info(
    //       //   `${req.method} ${req.originalUrl}, update section data: no record found`
    //       // );
    //       return res
    //         .status(200)
    //         .json({ success: 0, error: "update section data: no record found" });
    //     }

    //     if (result.affectedRows) {
    //       // logger.info(`${req.method} ${req.originalUrl}, update section data`);


    //       let sqlQuery = `update class set section ='${data.sectionName}' where sectionid ='${data.id}'`;

    //       try {
    //         pool.query(sqlQuery, (error, result) => {



    //           // logger.info(`${req.method} ${req.originalUrl}, delete Class  by id`);
    //           //return table data
    //           // let sqlQuery = `SELECT * from class where isActive='true' order by class.title`;
    //           // try {
    //           //   pool.query(sqlQuery, (error, result) => {
    //           return res.status(200).json({ success: 1 });
    //         });
    //       }
    //       catch (error) {
    //       }

    //     }





    //   });
    // }
    // catch (error) {
    // }


  },
  updateClassStatus: (req, res) => {
    let sqlQuery = `update class set isActive ='false'`;

    try {
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
    }
    catch (error) {
    }
  },

  deleteAllClass: (req, res) => {
    const id = req.body;
    // let sqlQuery = `delete from Class where userId = ${id.Class_id}`;
    let sqlQuery = `delete from class`;

    try {
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
    }
    catch (error) {
    }
  },
  deleteSingleClass: (req, res) => {
    const id = req.params.classId;
    let sqlQuery = `delete from class where classId = '${id}'`;

    try {
      pool.query(sqlQuery, (error, result) => {
        if (error) {
          // logger.info(
          //   `${req.method} ${req.originalUrl},'DB error:'${error.sqlMessage}, delete Class by id`
          // );
          return res
            .status(500)
            .json({ success: 0, error: "internal server error", message: error });

        }

        if (!result.affectedRows) {
          // logger.info(
          //   `${req.method} ${req.originalUrl}, delete Class by  id: no Class record found`
          // );
          return res.status(200).json({
            success: 0,
            error: "delete Class by id: no Class record found",
          });
        }
        if (result.affectedRows) {
          // logger.info(`${req.method} ${req.originalUrl}, delete Class  by id`);
          //return table data
          let sqlQuery = `SELECT * from class where isActive='true'  order by id desc`;
          try {
            pool.query(sqlQuery, (error, result) => {
              res.status(200).json({ success: 1, data: result });
            });
          }
          catch (error) {
          }
        }
      });
    }
    catch (error) {
    }
  },

  deletesinglegroup: (req, res) => {
    const id = req.params.id;
    let sqlQuery = `delete from sectiongroup where id = '${id}'`;

    try {
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
          try {
            pool.query(sqlQuery, (error, result) => {
              res.status(200).json({ success: 1, data: result });
            });
          }
          catch (error) {
          }
        }

      });
    }
    catch (error) {
    }

  },

  truncateTable: (req, res) => {
    let sqlQuery = `truncate table class`;
    try {
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
    }
    catch (error) {
    }
  },

  deleteSectionbyClass: (req, res) => {
    const id = req.body;
    console.log(id);
    let sqlQuery = `delete from class where id ='${id.id}'`;

    try {
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
          try {
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
          catch (error) {
          }
        }

      });
    }
    catch (error) {
    }
  },
};
