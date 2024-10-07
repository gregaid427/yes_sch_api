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
function getresult(data, res) {
  let sqlQuery =
    data.section != null
      ? `select student_id, firstName,lastName,otherName  from student where class = '${data.clazz}' and section = '${data.section}'  `
      : `select student_id, firstName,lastName,otherName  from student where class = '${data.clazz}'  `;

  pool.query(sqlQuery, async (error, result) => {
    console.log(sqlQuery);

    if (error) {
      // logger.info(
      //   `${req.method} ${req.originalUrl} ${error}, 'server error', fetch all sections`
      // );
      console.log(error);

      return res
        .status(500)
        .json({ success: 0, error: "internal server error", message: error });
    }
    if (!result) {
      // logger.info(
      //   `${req.method} ${req.originalUrl} ${error}, 'server error', fetch all sections`
      // );
      console.log("No results");

      return res
        .status(200)
        .json({ success: 0, data: [], message: "No reults Available" });
    }
    let finalArray = [];
    for (let i = 0; i < result.length; i++) {
      console.log(result[i].student_id);

      let datas = {
        id: result[i].student_id,
        session: data.session,
        examgroup: data.examgroup,
      };
      let retrieved = await getStudentsubjectresult(datas);
      console.log(retrieved);

      if (retrieved.length != 0) finalArray.push(retrieved);

      if (i + 1 == result.length) {
        let value = retrieved;
        console.log("done retrieval");
        res.status(200).json({ success: 1, data: finalArray });
      }
    }

    // let sqlQuery = `select * from examresult where session = '${data.session}' and examgroup = '${data.examgroup}' and student_id = '${data.stdid}'  `;
    // pool.query(sqlQuery, async (error, result) => {
    //   console.log(error);

    //   if (error) {
    //     // logger.info(
    //     //   `${req.method} ${req.originalUrl} ${error}, 'server error', fetch all sections`
    //     // );
    //     console.log(error);

    //     return res
    //       .status(500)
    //       .json({
    //         success: 0,
    //         error: "internal server error",
    //         message: error,
    //       });
    //   }

    // logger.info(
    //   `${req.method} ${req.originalUrl},'success', fetch all sections`
    // );

    //   res.status(200).json({ success: 1, data: result });
    // });
  });
}
async function setposition(val) {
  const promise1 = await new Promise((resolve, reject) => {
    let scores = val.sort((a, b) => b.totalscore - a.totalscore);
    let currentPosition = 1;
    let previousScore = null;
    for (let i = 0; i < scores.length; i++) {
      if (scores[i].totalscore !== previousScore) {
        currentPosition = i + 1;
      }
      scores[i].classposition = currentPosition;
      previousScore = scores[i].totalscore;

      if (i + 1 == scores.length) {
        // console.log(scores);
        console.log(" promise 1 isssssssssss");

        return resolve(scores);
      }
    }
  });
  console.log(promise1)
  return promise1;
}

async function setOverallpositions(data) {
  const promise1 = await new Promise((resolve, reject) => {
    let sqlQuery = `select  SUM(totalscore) as total from examresult where examresult.session = '${data.session}' and examresult.examgroup = '${data.examgroup}' and examresult.student_id = '${data.id}'  `;

    console.log(sqlQuery);
    pool.query(sqlQuery, (error, results, fields) => {
      if (error) {
        console.log(error);
        resolve(null);
        return console.log("result retrieve error");
      }
      if (results == null) {
        // logger.info(
        //   `${req.method} ${req.originalUrl} ${error}, 'server error', fetch all sections`
        // );
        console.log("No results");

        return res
          .status(200)
          .json({ success: 0, data: [], message: "No reults Available" });
      }
      console.log(results);

      resolve(results);
      console.log("result retrieved successfully");
    });
  });
  let val = await promise1[0].total;
  console.log("result retrieved successfullyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy");
  console.log(val);
  const promise2 = await new Promise((resolve, reject) => {
    let sqlQuery = `update examresult set overallscore = ${val} WHERE student_id = '${data.id}'`;

    console.log(sqlQuery);
    pool.query(sqlQuery, (error, results, fields) => {
      if (error) {
        console.log(error);
        resolve(null);
        return console.log("result retrieve error");
      }
      if (results == null) {
        // logger.info(
        //   `${req.method} ${req.originalUrl} ${error}, 'server error', fetch all sections`
        // );
        console.log("No results");

        return res
          .status(200)
          .json({ success: 0, data: [], message: "No reults Available" });
      }
      resolve(results);
      console.log("result retrieved successfully");
    });
  });
  return promise1;
}
async function getStudentsubjectresult(data) {
  const promise1 = await new Promise((resolve, reject) => {
    let sqlQuery = `select examresult.*,student.firstName,student.lastName,student.otherName from examresult left join student on examresult.student_id = student.student_id where examresult.session = '${data.session}' and examresult.examgroup = '${data.examgroup}' and examresult.student_id = '${data.id}'  `;

    console.log(sqlQuery);
    pool.query(sqlQuery, (error, results, fields) => {
      if (error) {
        console.log(error);
        resolve(null);
        return console.log("result retrieve error");
      }
      if (results == null) {
        // logger.info(
        //   `${req.method} ${req.originalUrl} ${error}, 'server error', fetch all sections`
        // );
        console.log("No results");

        return res
          .status(200)
          .json({ success: 0, data: [], message: "No reults Available" });
      }
      resolve(results);
      console.log("result retrieved successfully");
    });
  });
  return promise1;
}

async function updateResultposition(position, examid, student_id) {
  const promise1 = await new Promise((resolve, reject) => {
    let sqlQuery = `update examresult set position = '${position}' where examid = '${examid}' and student_id = '${student_id}' `;
    console.log(sqlQuery);
    pool.query(sqlQuery, (error, results, fields) => {
      if (error) {
        console.log(error);
        resolve(false);
        return console.log("error Inserting result group");
      }
      resolve(true);
      console.log("result inserted successfully");
    });
  });
  return promise1;
}
async function updateOverallposition(position, examclasscode, student_id) {
  const promise1 = await new Promise((resolve, reject) => {
    let sqlQuery = `update examresult set overallposition = '${position}' where examclasscode = '${examclasscode}' and student_id = '${student_id}' `;
    console.log(sqlQuery);
    pool.query(sqlQuery, (error, results, fields) => {
      if (error) {
        console.log(error);
        resolve(false);
        return console.log("error Inserting result group");
      }
      resolve(true);
      console.log("result inserted successfully");
    });
  });
  return promise1;
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
function checkExamResultCodeExist(data, callBack) {
  console.log(" data  isssssssssssssssssssssss ");
  let query = `select * from examresultcode where class = '${data.classes}' and section = '${data.section}' and session = '${data.session}' and examgroup = '${data.examgroup}' and subject = '${data.subject}' `;
  console.log(query);

  pool.query(query, (error, results, fields) => {
    console.log(results);
    if (error) {
      callBack(error);
    }

    return callBack(null, results[0]);
  });
}
function checkResultTableExist(data, callBack) {
  pool.query(
    `SELECT
   resultid
FROM
   ${data}`,

    (error, results, fields) => {
      console.log("result");
      console.log(results);

      if (error) {
        callBack(error);
        return console.log("results is error");
      }
      console.log("results is perfect");

      return callBack(null, results);
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
    let sqlQuery = `insert into grade (gradetitle,minscore,maxscore,exampercent,classworkpercent,createdby,createdat,notes,grades,scoreremarks,otherscorepercent) values
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
async function gradeMaker(val, gradeArray) {
  let myarr = ["", ""];
  for (let i = 0; i < gradeArray.length; i++) {
    if (gradeArray[i].minscore <= val && val <= gradeArray[i].maxscore) {
      myarr[0] = gradeArray[i].scoreremarks;
      myarr[1] = gradeArray[i].grades;
    }
  }
  return myarr;
}
async function insertResult(
  examid,
  subject,
  student_id,
  totalscore,
  classscore,
  examscore,
  grade,
  remarks,
  otherscore,
  examtable,
  session,
  examgroup,
  classcode,size
) {
  const promise1 = await new Promise((resolve, reject) => {
    let date = new Date();
    date = date.toLocaleDateString("en-CA");
    let sqlQuery = `insert into examresult (examid,examclasscode,subject,student_id,totalscore,examscore,classworkscore,grade,examremark,othersscore,session,examgroup,classize) values
                                            ('${examid}','${classcode}','${subject}','${student_id}','${totalscore}','${examscore}','${classscore}','${grade}','${remarks}','${otherscore}','${session}','${examgroup}','${size}')`;

    pool.query(sqlQuery, (error, results, fields) => {
      if (error) {
        console.log(error);
        resolve(false);
        return console.log("error Inserting result group");
      }
      resolve(true);
      console.log("result inserted successfully");
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
    let resultTable = data.examtable;

    checkExamExist(data, (err, results) => {
      if (results) {
        console.log("Create new Exam  Exists For Academic Session");
        return res.status(200).json({
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

        if (data.section == "None") {
          let sqlQuery1 = `insert into exam (examcode,createdat,createdby,notes,examgroup,class,subject,session,examtable,gradingtype) values
          ('${code}','${date}','${data.createdby}','${data.notes}','${data.examgroup}','${data.class}','${data.subjects}','${data.session}','${resultTable}','${data.chosengrade}')`;
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
        } else {
          let sqlQuery1 = `insert into exam (examcode,createdat,createdby,notes,examgroup,class,section,subject,session,examtable,gradingtype) values
          ('${code}','${date}','${data.createdby}','${data.notes}','${data.examgroup}','${data.class}','${data.section}','${data.subjects}','${data.session}','${resultTable}','${data.chosengrade}')`;
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
        let sqlQuery1 = `insert into examgroup (grouptitle,createdat,createdby) values
          ('${data.title}','${date}','${data.createdby}')`;
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
                success: 1,
                data: resultz,
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
    let sqlQuery = `SELECT * from examresultcode order by id desc  `;

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
  getexamgroup: async (req, res) => {
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
  getexamresult: (req, res) => {
    let data = req.body;
    let sqlQuery = `select examresult.* , student.student_id,student.firstName,student.otherName, student.lastName,student.section, student.class from examresult  left join student on examresult.student_id = student.student_id  where examresult.examid = '${data.examid}'`;
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
  addexamresult: async (req, res) => {
    let data = req.body;
    let examid = data.examid;
    //let createdby = data.createdby;
    let session = data.session;
    let subject = data.subject;
    let examtable = data.examtable;
    let examgroup = data.examgroup;
    let classcode = data.classcode;
    let size =  data.classsize
    let exampercent = data.exampercent;
    let classpercent = data.classpercent;
    let otherpercent = data.otherpercent;

    let sqlQuery = `insert into examresultcode (code,subject,class,section,session,examgroup,createdat,createdby) values
          ('${data.examid}','${subject}','${data.classes}','${data.section}','${data.session}','${data.examgroup}','${date}','${data.createdby}')`;

    checkExamResultCodeExist(data, (err, results) => {
      if (results) {
        console.log("Create new Exam  Exists For Academic Session");
        return res.status(200).json({
          success: 0,
          data: null,
          message: "Exam Already Exist For Academic Session",
        });
      } else {
        console.log("exam code is not registered");

        pool.query(sqlQuery, async (error, resulty) => {
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
          } else if (resulty.affectedRows == 1) {
            for (let i = 0; i < data.result.length; i++) {
              let title = data.title;
              let notes = data.notes;
              let student_id = data.result[i].student_id;
              let examscore =
                data.result[i].examScore == "" ? 0 : data.result[i].examScore;
              let classscore =
                data.result[i].classWorkScore == ""
                  ? 0
                  : data.result[i].classWorkScore;
              let otherscore =
                data.result[i].othersScore == ""
                  ? 0
                  : data.result[i].othersScore;
              let totalscore = Math.ceil(
                (examscore == 0 ? 0 : examscore * (exampercent / 100)) +
                  (otherscore == 0 ? 0 : otherscore * (otherpercent / 100)) +
                  (classscore == 0 ? 0 : classscore * (classpercent / 100))
              );

              let Grader = await gradeMaker(totalscore, data.gradeArray);

              let create = await insertResult(
                examid,
                subject,
                student_id,
                totalscore,
                classscore,
                examscore,
                Grader[1],
                Grader[0],
                otherscore,
                examtable,
                session,
                examgroup,
                classcode,size
              );

              if (i + 1 == data.result.length && create == true) {
                console.log(create);
                let vv = create;
                console.log("Successsssssssssssssssssssssssssssssssssss");
                //get result inorder to set positions
                let sqlQuery = `SELECT examresult.*, student.firstName,student.lastName,student.otherName from examresult left join student on examresult.student_id = student.student_id where examid = '${examid}'`;
                pool.query(sqlQuery, async (error, result) => {
                  console.log(error);

                  if (error) {
                    // logger.info(
                    //   `${req.method} ${req.originalUrl} ${error}, 'server error', fetch all Class`
                    // );
                    console.log(error);

                    return res.status(500).json({
                      success: 0,
                      error: "internal server error",
                      message: error + "result inserted but no position set",
                    });
                  }

                  console.log(
                    `${result} ${req.originalUrl},'success', fetch all result for positioning`
                  );
                  let sortedArray = await setposition(result);
                  console.log("sortedArray array is");
                  console.log(sortedArray.length);

                  if (sortedArray.length) {
                    for (let i = 0; i < sortedArray.length; i++) {
                      let cover = await updateResultposition(
                        sortedArray[i].classposition,
                        sortedArray[i].examid,
                        sortedArray[i].student_id
                      );
                      console.log(cover);
                    }
                    if (i + 1 == sortedArray.length) {
                      return res.status(200).json({
                        success: 1,
                        data: sortedArray,
                      });
                    }
                  }
                });
              }
              if (i + 1 == data.result.length && create == false) {
                console.log(create);
                let vv = create;

                return res.status(200).json({
                  success: 0,
                  data: [],
                  message: "Error inserting Result",
                });
              }
            }
          }

          // console.log(` ${req.originalUrl},'success', fetch all Class`);

          // res.status(200).json({ success: 1, data: resulty });
        });
      }
    });
  },
  getexamsubject: (req, res) => {
    let data = req.body;
    let sqlQuery = `select * from examresultcode where class = '${data.class}' and section = '${data.section}' and session = '${data.session}' and examgroup = '${data.examgroup}' `;
    console.log(sqlQuery);
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

      console.log(` ${req.originalUrl},'success', fetch all Class`);

      res.status(200).json({ success: 1, data: result });
    });
  },
  getgradegroupbyName: (req, res) => {
    let data = req.body;
    let sqlQuery = `select minscore,maxscore,grades,scoreremarks from grade where gradetitle = '${data.title}'`;

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

      console.log(` ${req.originalUrl},'success', fetch all Class`);

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
    let data = req.body;
    let sqlQuery = `select * from examresultcode where session = '${data.session}' and examgroup = '${data.examgroup}' `;
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

  singlereport: (req, res) => {
    let data = req.body;
    let sqlQuery = `select * from examresult where session = '${data.session}' and examgroup = '${data.examgroup}' and student_id = '${data.stdid}'  `;

    pool.query(sqlQuery, (error, result) => {
      console.log(result);

      if (error) {
        // logger.info(
        //   `${req.method} ${req.originalUrl} ${error}, 'server error', fetch all sections`
        // );
        console.log(error);

        return res
          .status(500)
          .json({ success: 0, error: "internal server error", message: error });
      }
      if (result.length == 0) {
        // logger.info(
        //   `${req.method} ${req.originalUrl} ${error}, 'server error', fetch all sections`
        // );

        return res
          .status(200)
          .json({ success: 0, data: [], message: "No Resullts Available" });
      }

      // logger.info(
      //   `${req.method} ${req.originalUrl},'success', fetch all sections`
      // );

      res.status(200).json({ success: 1, data: result });
    });
  },

  genrateclassreport: async (req, res) => {
    let data = req.body;
    console.log(data);
    let sqlQuery =
      data.section != null
        ? `select student_id, firstName,lastName,otherName  from student where class = '${data.clazz}' and section = '${data.section}'  `
        : `select student_id, firstName,lastName,otherName  from student where class = '${data.clazz}'  `;

    pool.query(sqlQuery, async (error, result) => {
      console.log(sqlQuery);

      if (error) {
        // logger.info(
        //   `${req.method} ${req.originalUrl} ${error}, 'server error', fetch all sections`
        // );
        console.log(error);

        return res
          .status(500)
          .json({ success: 0, error: "internal server error", message: error });
      }
      if (!result) {
        // logger.info(
        //   `${req.method} ${req.originalUrl} ${error}, 'server error', fetch all sections`
        // );
        console.log("No results");

        return res
          .status(200)
          .json({ success: 0, data: [], message: "No reults Available" });
      }
      let finalArray = [];
      for (let i = 0; i < result.length; i++) {
        console.log(result[i].student_id);

        let datas = {
          id: result[i].student_id,
          session: data.session,
          examgroup: data.examgroup,
        };
        let retrieved = await setOverallpositions(datas);
        console.log(retrieved);

        if (i + 1 == result.length) {
          let value = retrieved;
          //get all student of the class using unique classcode
          let sqlQuery = `select distinct(student_id),overallscore as totalscore,examclasscode  from examresult where examclasscode = ${data.classcode}`;
          pool.query(sqlQuery, async (error, result) => {
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
            if (result) {
              let sort = await setposition(result);
              console.log(sort);
              async function forEachAsync(sort) {
                for (const element of sort) {
                  console.log(element);
                  let kk = updateOverallposition(
                    element.classposition,
                    element.examclasscode,
                    element.student_id
                  );
                  console.log("kk");
                }
              }

              async function main(sort) {
                await forEachAsync(sort);
                console.log("Array.forEach() has finished running.");
              }
              main(sort);

              //get the result to be printed
              getresult(data, res);
            }
          });

          console.log("done retrieval");
        }
      }

     
    });
  },
  getClassreport: async (req, res) => {
    let data = req.body;
    let sqlQuery =
      data.section != null
        ? `select student_id, firstName,lastName,otherName  from student where class = '${data.clazz}' and section = '${data.section}'  `
        : `select student_id, firstName,lastName,otherName  from student where class = '${data.clazz}'  `;

    pool.query(sqlQuery, async (error, result) => {
      console.log(sqlQuery);

      if (error) {
        // logger.info(
        //   `${req.method} ${req.originalUrl} ${error}, 'server error', fetch all sections`
        // );
        console.log(error);

        return res
          .status(500)
          .json({ success: 0, error: "internal server error", message: error });
      }
      if (!result) {
        // logger.info(
        //   `${req.method} ${req.originalUrl} ${error}, 'server error', fetch all sections`
        // );
        console.log("No results");

        return res
          .status(200)
          .json({ success: 0, data: [], message: "No reults Available" });
      }
      let finalArray = [];
      for (let i = 0; i < result.length; i++) {
        console.log(result[i].student_id);

        let datas = {
          id: result[i].student_id,
          session: data.session,
          examgroup: data.examgroup,
        };
        let retrieved = await getStudentsubjectresult(datas);
        console.log(retrieved);

        if (retrieved.length != 0) finalArray.push(retrieved);

        if (i + 1 == result.length) {
          let value = retrieved;
          console.log("done retrieval");
          res.status(200).json({ success: 1, data: finalArray });
        }
      }

      // let sqlQuery = `select * from examresult where session = '${data.session}' and examgroup = '${data.examgroup}' and student_id = '${data.stdid}'  `;
      // pool.query(sqlQuery, async (error, result) => {
      //   console.log(error);

      //   if (error) {
      //     // logger.info(
      //     //   `${req.method} ${req.originalUrl} ${error}, 'server error', fetch all sections`
      //     // );
      //     console.log(error);

      //     return res
      //       .status(500)
      //       .json({
      //         success: 0,
      //         error: "internal server error",
      //         message: error,
      //       });
      //   }

      // logger.info(
      //   `${req.method} ${req.originalUrl},'success', fetch all sections`
      // );

      //   res.status(200).json({ success: 1, data: result });
      // });
    });
  },
  setremark: (req, res) => {
    let data = req.body;
    let sqlQuery = `update examresult set teacherreamark ='${data.remark}' where session = '${data.session}' and examgroup = '${data.examgroup}' and student_id = '${data.id}' `;
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

      console.log(
        `${req.method} ${req.originalUrl},'success', remark set successfully`
      );

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
