const pool = require("../../config/database.js");
// const logger = require("../../util/logger.js");
var createHash = require("hash-generator");

let date = new Date();
date = date.toLocaleDateString("en-CA");

async function AssignFeeByClass(data) {
  return new Promise(async (resolve2, reject) => {
    let feedata = data;
    console.log(feedata);
    for (const feedatas of feedata) {
      console.log('fee datas isssssssssssssssssssssssssssssssssssssssssssssssssssssssssss')

      console.log(feedata)
      let name = feedatas.name;
      let amt = feedatas.amt;
      let clazz = feedatas.class;
      let cart = feedatas.cart;


      const promise4 = await new Promise((resolve1, reject) => {
        let sqlQuery1 = `select  account.preference,account.student_id from student left join account on student.student_id = account.student_id where student.class ='${clazz}' and student.cartegory ='${cart}' `;

        pool.query(sqlQuery1, async (error, resultz) => {
          if (error) {
            console.log(
              `${req.method} ${req.originalUrl}, 'server error', fetch all fee`
            );
          }
          let ss = await resultz;

          if (resultz.length == 0) {
            return resolve1("none");
          }

          console.log(ss);
          for (const result of resultz) {
            let singlestudent = result.student_id;
            let preference = result.preference;

            let bb = ss;
            let feedata = data.fee;

            console.log("fee running" + name);

            async function update(name, singlestudent) {
              console.log(singlestudent);
              let sqlQuery2 = `select feepayable as feepay, scholarship from account where student_id='${singlestudent}' `;
              const promise = await new Promise((resolve, reject) => {
                pool.query(sqlQuery2, async (error, resulty) => {
                  if (error) {
                    console.log(
                      `${req.method} ${req.originalUrl}, 'server error', fetch all fee`
                    );
                  }
                  console.log(
                    "feeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee paaaaaaaaaaaaaaaaaaaaaaable"
                  );
                  resolve(resulty);
                });
              });

              const promise1 = await new Promise((resolve, reject) => {
                console.log(singlestudent);
                let splitPreference = preference.split(",");
                if (splitPreference.includes(name)) {
                  resolve(false);
                } else {
                  resolve(true);
                }
              });

              let prom = await promise1;
              console.log(promise);

              let val = await promise[0].feepay;
              let scholarship = await promise[0].scholarship;

              let amount = eval(amt + val);

              let sqlQuery6 = `update account set feepayable = '${amount}'  where student_id = '${singlestudent}' `;
              console.log(prom);
              if (prom == true) {
                console.log("update running" + val);

                console.log("amount is" + amount);


                pool.query(sqlQuery6, async (error, result) => {
                  if (error) {
                    console.log(
                      `${req.method} ${req.originalUrl}, 'server error', fetch all fee`
                    );
                  }

                  resolve1("done");
                });
              } else {
                console.log(
                  "faaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaalllllllllllseeeeeeee"
                );
                return reject("done");
              }
            }

            let hh = await update(name, singlestudent);
            console.log(hh)
          }
        });
      });
      let set = await promise4;


    }
    // if (i == feedata.length - 1) {
    ActivityregisterLog(
      "Assign Fee",
      data.createdby,
      "none",
      "Applied",
      date,
      `Assign fee for ${data.class}`,
      'set'
    );

    setTimeout(() => {
      resolve2(true);
    }, 3000);

    // let sqlQuery = `select * from assignfeecartegory order by id desc`;
    // pool.query(sqlQuery, (error, result) => {
    //   res.status(200).json({ success: 1, data: result });
    // });
    // console.log("Fees Assign logged Successfully");
  }




    //}
  );
}

async function AssignFeeByStudent(data, id) {
  return new Promise(async (resolve2, reject) => {
    let feedata = data;
    console.log(feedata);
    for (const feedatas of feedata) {
      console.log('fee datas isssssssssssssssssssssssssssssssssssssssssssssssssssssssssss')

      console.log(feedata)
      let name = feedatas.name;
      let amt = feedatas.amt;
      let clazz = feedatas.class;
      let cart = feedatas.cart;


      const promise4 = await new Promise((resolve1, reject) => {
        let sqlQuery1 = `select * from account where student_id ='${id}' `;

        pool.query(sqlQuery1, async (error, resultz) => {
          console.log(sqlQuery1)

          if (error) {
            console.log(
              `${req.method} ${req.originalUrl}, 'server error', fetch all fee`
            );
          }
          let ss = await resultz;
          console.log('rrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrr')
          console.log(ss)

          if (resultz.length == 0) {
            return resolve1("none");
          }

          console.log(ss);
          for (const result of resultz) {
            let singlestudent = result.student_id;
            let preference = result.preference;

            let bb = ss;
            let feedata = data.fee;

            console.log("fee running" + name);

            async function update(name, singlestudent) {
              console.log(singlestudent);
              let sqlQuery2 = `select feepayable as feepay, scholarship from account where student_id='${singlestudent}' `;
              const promise = await new Promise((resolve, reject) => {
                pool.query(sqlQuery2, async (error, resulty) => {
                  if (error) {
                    console.log(
                      `${req.method} ${req.originalUrl}, 'server error', fetch all fee`
                    );
                  }
                  console.log(
                    "feeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee paaaaaaaaaaaaaaaaaaaaaaable"
                  );
                  resolve(resulty);
                });
              });

              const promise1 = await new Promise((resolve, reject) => {
                console.log(singlestudent);
                let splitPreference = preference.split(",");
                if (splitPreference.includes(name)) {
                  resolve(false);
                } else {
                  resolve(true);
                }
              });

              let prom = await promise1;
              console.log(promise);

              let val = await promise[0].feepay;
              let scholarship = await promise[0].scholarship;

              let amount = eval(amt + val);

              let sqlQuery6 = `update account set feepayable = '${amount}'  where student_id = '${singlestudent}' `;
              console.log(prom);
              if (prom == true) {
                console.log("update running" + val);

                console.log("amount is" + amount);


                pool.query(sqlQuery6, async (error, result) => {
                  if (error) {
                    console.log(
                      `${req.method} ${req.originalUrl}, 'server error', fetch all fee`
                    );
                  }

                  resolve1("done");
                });
              } else {
                console.log(
                  "faaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaalllllllllllseeeeeeee"
                );
                return reject("done");
              }
            }

            let hh = await update(name, singlestudent);
            console.log(hh)
          }
        });
      });
      let set = await promise4;


    }
    // if (i == feedata.length - 1) {
    ActivityregisterLog(
      "Assign Fee",
      data.createdby,
      "none",
      "Applied",
      date,
      `Assign fee for ${data.class}`,
      'set'
    );

    setTimeout(() => {
      resolve2(true);
    }, 3000);

    // let sqlQuery = `select * from assignfeecartegory order by id desc`;
    // pool.query(sqlQuery, (error, result) => {
    //   res.status(200).json({ success: 1, data: result });
    // });
    // console.log("Fees Assign logged Successfully");
  }




    //}
  );
}

async function RecordAssignFee(data) {
  let sqlQuery = `insert into assignfeerecord (class,total,cartegory,createdat,status,createdby) values
     ('${data.class}','${data.total}','${data.scartegory}','${date}','pending','${data.createdby
    }')`;

  pool.query(sqlQuery, (error, results, fields) => {
    if (error) {
      console.log(error);
      return console.log("assignfeerecord log error");
    }
    console.log("assignfeerecord logged successfully");
  });
}
function checkFeeExist(data, callBack) {
  console.log(data)
  let qry = `select * from assignfeecartegory where feename = '${data.name}' and where class = '${data.class}' and where scartegory ='${data.cart}' `
  pool.query(qry
    ,

    (error, results, fields) => {
      console.log('yyyyyyyyyyyyyyy')
      console.log(results)

      console.log(qry)

      if (error) {
        callBack(error);
      }

      return callBack(null, results[0]);
    }
  );
}



async function getfee(custom) {
  let Val = []
  let kk = custom.name
  let tt = custom.class
  let uu = custom.cart
  let sqlQuery = `select id from assignfeecartegory where feename = '${kk}' and class = '${tt}' and scartegory = '${uu}' `
  pool.query(sqlQuery, (error, results, fields) => {
    console.log(sqlQuery);
    console.log(results);
    if (error) {
      console.log(error);
      return console.log(
        " error deleting initial records "
      );
    }
    if (results) {
      val.push()
      resolve(results);
      console.log(results);
      return console.log(
        " the value exist "
      );
    }



  });
  return result

}



async function CreateAssignFeeClass(data) {

  //clear initial asigned fee record for chosen class(es)
let cartid = hashgenerator(9)
  const promise = await new Promise((resolve, reject) => {
    for (let i = 0; i < data.fee.length; i++) {

      let sqlQuery = `delete from assignfeecartegory where class = '${data.class}' and scartegory = '${data.scartegory}' `;

      pool.query(sqlQuery, (error, results, fields) => {
        if (error) {
          console.log(error);
          return console.log(
            " error deleting initial assign fee records "
          );
        }
        resolve(results);
      });
    }
  });

  const val = await promise

  console.log(data)
  for (const val of data.fee) {


    const promise2 = await new Promise((resolve, reject) => {
      function setrec(val) {

        console.log(val)

        let name = val[0];
        let amt = val[1];

        let date = new Date();
        date = date.toLocaleDateString("en-CA");
        console.log(date);
        let sqlQuery = `insert into assignfeecartegory (class,scartegory,feename,amount,createdat,createdby,total,cartgroupid) values
     ('${data.class}','${data.scartegory}','${name}','${amt}','${date}','${data.createdby}','${data.total}','${cartid}')`;

        try {
          pool.query(sqlQuery, (error, results, fields) => {
            if (error) {
              console.log(error);
              resolve('false')

              return console.log("assignfeecartegory4 log error --new fee cart");
            }
            // resolve(results);
            console.log(
              "assignfeecartegory logged successfully --new fee cart"
            );
          });

        } catch (error) {
        }
        ;
      }
      setTimeout(() => {
        setrec(val)
        resolve(true);

      }, 1000);
    }

    )
    let result = promise2
    console.log(result)


  }

}



function ActivityregisterLog(activity, user, amount, status, date, description) {
  let sqlQuery = `insert into financelog (activity,user,amount,createdAt,status,description) values
     ('${activity}','${user}','${amount}','${date}','applied','${description}')`;

  pool.query(sqlQuery, (error, results, fields) => {
    if (error) {
      console.log(error);
      return console.log("financelog log error");
    }
    console.log("financelog logged successfully");
  });
}
async function getfeepayable(stdid, callBack) {
  pool.query(
    `select feepayable  from account where student_id = '${stdid.student_id}' `,
    (error, results, fields) => {
      if (error) {
        callBack(error);
      }
      console.log(results);
      return callBack(null, results[0].feepayable);
    }
  );
}
async function getFeecart({ stdid, name }, callBack) {
  pool.query(
    `select ${name} as no from account  where student_id = '${stdid.student_id}' `,

    (error, results, fields) => {
      if (error) {
        callBack(error);
      }
      return callBack(null, results[0].no);
    }
  );
}
async function updatefeepayable({ stdid, amount }, callBack) {
  pool.query(
    `update account set feepayable = '${amount}'  where student_id = '${stdid.student_id}' `,
    (error, results, fields) => {
      if (error) {
        callBack(error);
      }
      return callBack(null, results[0].no);
    }
  );
}
function hashgenerator(num) {
  return createHash(num);
}
module.exports = {
  createfee: async (req, res) => {
    const data = req.body;
    console.log(data);

    function hashgenerator(num) {
      return createHash(num);
    }

    let code = hashgenerator(6);

    let sqlQuery = `insert into fee (itemName,itemId,cartegory,quantity,CreatedBy,supplier,createdAt,supplierContact1,supplierContact2,SupplierInfo,isActive,description) values
 ('${data.itemName}','${code}','${data.cartegory}',${data.quantity},'${data.CreatedBy}','${data.supplier}','${date}','${data.supplierContact1}','${data.supplierContact2}','${data.SupplierInfo}','true','${data.description}')`;
    pool.query(sqlQuery, (error, result) => {
      if (error) {
        console.log(
          `${req.method} ${req.originalUrl},'DB error:'${error.sqlMessage}, create new fee`
        );
        return res
          .status(500)
          .json({ success: 0, error: "internal server error", message: error });
      }

      if (result.affectedRows == 1) {
        console.log(`${req.method} ${req.originalUrl},Success create new fee`);
        let sqlQuery = `select * from fee  where isActive = 'true'`;
        pool.query(sqlQuery, (error, result) => {
          res.status(200).json({ success: 1, data: result });
        });
      }
    });
  },
  updatescholarship: async (req, res) => {
    const data = req.body;
    console.log(data);


    let sqlQuery = `update scholarshiplist set title = '${data.title}',amount = '${data.amount}',createdby='${data.CreatedBy}',createdat='${date}',percent ='${data.percent}',feecartapplicable ='${data.applicable}',applicable ='${data.applicable}',type='${data.type}' where id='${data.id}' `;
    console.log(sqlQuery)
    pool.query(sqlQuery, (error, result) => {
      if (error) {
        console.log(
          `${req.method} ${req.originalUrl},'DB error:'${error.sqlMessage}, update scholarship`
        );
        return res
          .status(500)
          .json({ success: 0, error: "internal server error", message: error });
      }
      if (result.affectedRows == 1) {
        console.log(
          `${req.method} ${req.originalUrl},Success update scholarship`
        );
        let sqlQuery = `select * from scholarshiplist `;
        pool.query(sqlQuery, (error, result) => {
          res.status(200).json({ success: 1, data: result });
        });
      }
    });
  },

  addScholarship: async (req, res) => {
    const data = req.body;
    console.log(data);

    let sqlQuery = `insert into scholarshiplist (title,amount,CreatedBy,createdAt,percent,applicable,type) values
   ('${data.title}','${data.amount}','${data.CreatedBy}','${date}','${data.percent}','${data.applicable}','${data.type}')`;

    pool.query(sqlQuery, (error, result) => {
      if (error) {
        console.log(
          `${req.method} ${req.originalUrl},'DB error:'${error.sqlMessage}, create scholarship`
        );
        return res
          .status(500)
          .json({ success: 0, error: "internal server error", message: error });
      }
      if (result.affectedRows == 1) {
        console.log(
          `${req.method} ${req.originalUrl},Success create scholarship`
        );
        let sqlQuery = `select * from scholarshiplist `;
        pool.query(sqlQuery, (error, result) => {
          res.status(200).json({ success: 1, data: result });
        });
      }
    });
  },

  enrollScholarship: async (req, res) => {
    const data = req.body;
    console.log(data);

    let sqlQuery = `update account set scholarship = '${data.amount}' where student_id ='${data.id}' `;

    pool.query(sqlQuery, (error, result) => {
      if (error) {
        console.log(
          `${req.method} ${req.originalUrl},'DB error:'${error.sqlMessage}, create enroll scholarship`
        );
        return res
          .status(500)
          .json({ success: 0, error: "internal server error", message: error });
      }
      if (result.affectedRows == 1) {
        // res.status(200).json({ success: 1 });
        let sqlQuery = `insert into scholarshipenroll (student_id,scholarshiptitle,scholarshipid,createdat,createdby,amount,cartegorycovering) values
        ('${data.id}','${data.scholarship}','${data.scholarId}','${date}','${data.createdby}','${data.amount}','${data.cover}')`;

        pool.query(sqlQuery, (error, result) => {
          if (error) {
            console.log(
              `${req.method} ${req.originalUrl},'DB error:'${error.sqlMessage}, create enroll scholarship`
            );
            console.log(
              `${req.method} ${req.originalUrl},Success create enroll scholarship`
            );

            return res.status(500).json({
              success: 0,
              error: "internal server error",
              message: error,
            });
          }
          return res.status(200).json({
            success: 1,
          });
        });

        // let sqlQuery = `select * from scholarshipenroll `;
        // pool.query(sqlQuery, (error, result) => {
        //   res.status(200).json({ success: 1, data: result });
        // });
      }
    });
  },
  totalfee: (req, res) => {
    let period = req.body.period
    let session = req.body.session.sessionname

    console.log(session)
    //if (period == 'Current Session') return 

    function getquery(period, session) {
      if (period == 'Current Session') return `select  sum(amountpaid) as total from feepaymentrecords where session = '${session}' `
      if (period == 'Today') return `select  sum(amountpaid) as total from feepaymentrecords where date = '${date}'`

    }
    let sqlQuery = getquery(period, session);
    pool.query(sqlQuery, (error, result) => {
      if (error) {
        console.log(error)
        console.log(
          `${req.method} ${req.originalUrl},'DB error:'${error.sqlMessage}, fetch fee by id`
        );
        return res
          .status(500)
          .json({ success: 0, error: "internal server error", message: error });
      }

      if (!result) {
        console.log(
          `${req.method} ${req.originalUrl}, fetch fee by id: no record found`
        );
        return res.status(200).json({
          success: 1,
          data: [],
        });
      }
      console.log(`${req.method} ${req.originalUrl}, fetch fee by id`);
      res.status(200).json({ success: 1, data: result });
    });
  },

  getsinglebill: (req, res) => {
    const data = req.body
    let sqlQuery = `select * from assignfeecartegory where assignfeecartegory.scartegory = '${data.cart}' and assignfeecartegory.class = '${data.class}' `;
    console.log(sqlQuery)

    pool.query(sqlQuery, (error, result) => {
      if (error) {
        console.log(error)
        console.log(
          `${req.method} ${req.originalUrl},'DB error:'${error.sqlMessage}, fetch fee by id`
        );
        return res
          .status(500)
          .json({ success: 0, error: "internal server error", message: error });
      }

      if (!result) {
        console.log(
          `${req.method} ${req.originalUrl}, fetch fee by id: no record found`
        );
        return res.status(200).json({
          success: 1,
          data: [],
        });
      }
      console.log(`${result} ${req.originalUrl}, fetch fee by id`);
      res.status(200).json({ success: 1, data: result });
    });
  },
  getbulkbill: (req, res) => {
    const data = req.body
    let sqlQuery = `select student.*,assignfeecartegory.* from student right join assignfeecartegory on student.cartegory = assignfeecartegory.scartegory where assignfeecartegory.scartegory = '${data.cart}' and assignfeecartegory.class = '${data.class}' `;
    pool.query(sqlQuery, (error, result) => {
      if (error) {
        console.log(error)
        console.log(
          `${req.method} ${req.originalUrl},'DB error:'${error.sqlMessage}, fetch fee by id`
        );
        return res
          .status(500)
          .json({ success: 0, error: "internal server error", message: error });
      }

      if (!result) {
        console.log(
          `${req.method} ${req.originalUrl}, fetch fee by id: no record found`
        );
        return res.status(200).json({
          success: 1,
          data: [],
        });
      }
      console.log(`${req.method} ${req.originalUrl}, fetch fee by id`);
      res.status(200).json({ success: 1, data: result });
    });
  },
  getAssignRecordAction: (req, res) => {
    const id = req.body.id
    let sqlQuery = `select * from assignfeerecord order by id desc limit  100 `;
    pool.query(sqlQuery, (error, result) => {
      if (error) {
        console.log(error)
        console.log(
          `${req.method} ${req.originalUrl},'DB error:'${error.sqlMessage}, fetch fee by id`
        );
        return res
          .status(500)
          .json({ success: 0, error: "internal server error", message: error });
      }

      if (!result) {
        console.log(
          `${req.method} ${req.originalUrl}, fetch fee by id: no record found`
        );
        return res.status(200).json({
          success: 1,
          data: [],
        });
      }
      console.log(`${req.method} ${req.originalUrl}, fetch fee by id`);
      res.status(200).json({ success: 1, data: result });
    });
  },
  getstudentrecord: (req, res) => {
    const id = req.body.id
    let sqlQuery = `select * from feepaymentrecords where student_id = '${id}'  order by date desc limit  10`;
    pool.query(sqlQuery, (error, result) => {
      if (error) {
        console.log(
          `${req.method} ${req.originalUrl},'DB error:'${error.sqlMessage}, fetch fee by id`
        );
        return res
          .status(500)
          .json({ success: 0, error: "internal server error", message: error });
      }

      if (!result) {
        console.log(
          `${req.method} ${req.originalUrl}, fetch fee by id: no record found`
        );
        return res.status(200).json({
          success: 1,
          data: [],
        });
      }
      console.log(`${req.method} ${req.originalUrl}, fetch fee by id`);
      res.status(200).json({ success: 1, data: result });
    });
  },

  getfeeById: (req, res) => {
    const id = parseInt(req.params.fee_id);
    let sqlQuery = `select * from fee where fee_id = ${id}`;
    pool.query(sqlQuery, (error, result) => {
      if (error) {
        console.log(
          `${req.method} ${req.originalUrl},'DB error:'${error.sqlMessage}, fetch fee by id`
        );
        return res
          .status(500)
          .json({ success: 0, error: "internal server error", message: error });
      }

      if (!result) {
        console.log(
          `${req.method} ${req.originalUrl}, fetch fee by id: no record found`
        );
        return res.status(200).json({
          success: 1,
          error: "fetch fee by id: no record found",
        });
      }
      console.log(`${req.method} ${req.originalUrl}, fetch fee by id`);
      res.status(200).json({ success: 1, data: result });
    });
  },
  resetclassaccount: async (req, res) => {
    let data = req.body;
    console.log(data);
    const promise8 = await new Promise((resolve, reject) => {
      let sqlQuery = `select student_id from student where class in (${data.class}) `;
      pool.query(sqlQuery, (error, result) => {
        if (error) {
          return res.status(500).json({
            success: 0,
            error: "internal server error",
            message: error,
          });
        }
        console.log(result);
        resolve(result);
      });
    });
    let fetchedStudent = await promise8;

    const promise2 = await new Promise((resolve, reject) => {
      let info = fetchedStudent;
      console.log(info);
      if (fetchedStudent.length == 0) {
        res.status(200).json({ success: 2, message: "Class Has No Student" });
      }
      for (let i = 0; i < info.length; i++) {
        let sdtID = info[i].student_id;

        let sqlQuery6 = `update account set accountbalance = '${data.amount}' where student_id = '${sdtID}'`;

        async function resetfeepayable(sqlQuery6) {
          const promise3 = await new Promise((resolve, reject) => {
            pool.query(sqlQuery6, async (error, result) => {
              if (error) {
                console.log(error);
                res.status(500).json({
                  success: 1,
                  message: "Internal server",
                  error: error,
                });
              }
              return resolve(result);
            });
          });
          return promise3;
        }

        let gg = resetfeepayable(sqlQuery6);

        if (i == info.length - 1) {
          resolve(gg);
          res
            .status(200)
            .json({ success: 1, message: "All Accounts Updated successfully" });

          console.log("done updating Selected Class Account bal");
        }
      }
    });

    let arrearsduplicate = promise2;
  },

  resetallaccount: (req, res) => {
    let data = req.body;
    console.log(data);
    let sqlQuery = `update account set accountbalance ='${data.amount}'`;
    pool.query(sqlQuery, (error, result) => {
      if (error) {
        console.log(
          `${req.method} ${req.originalUrl}, 'server error', fetch all fee`
        );

        return res
          .status(500)
          .json({ success: 0, error: "internal server error", message: error });
      }

      console.log(
        `${req.method} ${req.originalUrl},'success', reset all account`
      );

      res
        .status(200)
        .json({ success: 1, message: "All Accounts Updated successfully" });
    });
  },

  updatefeerecord: (req, res) => {
    let data = req.body;
    let sqlQuery = `update assignfeerecord set status = "Applied" where class='${data.class}'`;
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
  getAllfee: (req, res) => {
    let sqlQuery = `select * from fee  where isActive = 'true'`;
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
  getfeerecordgroup: (req, res) => {
    //let sqlQuery = `select DISTINCT(class.title), assignfeecartegory.* from class left join assignfeecartegory on class.title = assignfeecartegory.class group by class.title`;
    let sqlQuery = ` SELECT * FROM assignfeecartegory group by class,scartegory`;
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
  getfeerecord: (req, res) => {
    //  let sqlQuery = `select DISTINCT(class.title), assignfeecartegory.* from class left join assignfeecartegory on class.title = assignfeecartegory.class`;
    let sqlQuery = ` SELECT * FROM assignfeecartegory group by class,scartegory`;

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
  getallassignedfeerecord: async (req, res) => {
    let arr = []

    let sqlQuery = `select distinct(class.title) as title from class`;
    pool.query(sqlQuery, async (error, result) => {
      if (error) {
        console.log(
          `${req.method} ${req.originalUrl}, 'server error', fetch all fee`
        );

        return res
          .status(500)
          .json({ success: 0, error: "internal server error", message: error });
      }
      // console.log(result)
      async function getcart() {
        let sqlQuery1 = `select title from studentscartegory`;
        const promise5 = await new Promise((resolve, reject) => {
          pool.query(sqlQuery1, (error, resultz) => {
            if (error) {
              console.log(
                `${req.method} ${req.originalUrl}, 'server error', fetch all fee`
              );

              return res
                .status(500)
                .json({ success: 0, error: "internal server error", message: error });
            }

            console.log(`${req.method} ${req.originalUrl},'success', fetch all fee`);


            resolve(resultz)
            //  res.status(200).json({ success: 1, data: result });
          });
        });

        return promise5
      }
      async function getdata(data, cart) {
        let sqlQuery1 = `select * from assignfeecartegory  where class = '${data}' and scartegory = '${cart}'`;
        const promise5 = await new Promise((resolve, reject) => {
          pool.query(sqlQuery1, (error, resultz) => {
            if (error) {
              console.log(
                `${req.method} ${req.originalUrl}, 'server error', fetch all fee`
              );

              return res
                .status(500)
                .json({ success: 0, error: "internal server error", message: error });
            }

            console.log(`${req.method} ${req.originalUrl},'success', fetch all fee`);


            resolve(resultz)
            //  res.status(200).json({ success: 1, data: result });
          });
        });

        return promise5
      }

      let cart = await getcart()


      for (const element of result) {
        // console.log(element)
        let gold = []
        for (let i = 0; i < cart.length; i++) {


          let val = await getdata(element.title, cart[i].title)
          val.length == 0 ? gold.push([{ class: element.title, scartegory: cart[i].title }]) : gold.push(val)
          console.log(val)

          //  console.log(cart.length,cart.indexOf(elementz.title))
          setTimeout(() => {

            if (cart.length == i + 1) {
              arr.push(gold)
              gold = []
            }
          }, 500);

        }

      };




      console.log(arr)
      setTimeout(() => {
        res.status(200).json({ success: 1, data: arr });
      }, 3000);

    });


  },

  getAssigncustom: (req, res) => {
    let data = req.body;
    let sqlQuery = `select * from assignfeecartegory where class ='${data.class}'`;
    pool.query(sqlQuery, (error, result) => {
      if (error) {
        console.log(
          `${req.method} ${req.originalUrl}, 'server error', fetch all fee`
        );

        return res
          .status(500)
          .json({ success: 0, error: "internal server error", message: error });
      }

      console.log(
        `${req.method} ${req.originalUrl},'success', fetch all assigned fee`
      );

      res.status(200).json({ success: 1, data: result });
    });
  },

  getAssignfeerecord: (req, res) => {
    let sqlQuery = `select * from assignfeecartegory order by id desc`;
    pool.query(sqlQuery, (error, result) => {
      if (error) {
        console.log(
          `${req.method} ${req.originalUrl}, 'server error', fetch all fee`
        );

        return res
          .status(500)
          .json({ success: 0, error: "internal server error", message: error });
      }

      console.log(
        `${req.method} ${req.originalUrl},'success', fetch all assigned fee`
      );

      res.status(200).json({ success: 1, data: result });
    });
  },

  getPaymentRecords: (req, res) => {
    let sqlQuery = `select feepaymentrecords.*, student.firstName, student.otherName, student.lastName ,student.class from feepaymentrecords left join student on feepaymentrecords.student_id = student.student_id order by id desc `;
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
  getScholarship: (req, res) => {
    let sqlQuery = `select * from scholarshiplist`;
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
  revokeScholarship: (req, res) => {
    let data = req.body;

    let sqlQuery = `Delete  from scholarshipenroll where id = '${data.id}'`;
    pool.query(sqlQuery, (error, result) => {
      if (error) {
        console.log(
          `${req.method} ${req.originalUrl}, 'server error', fetch all fee`
        );

        return res
          .status(500)
          .json({ success: 0, error: "internal server error", message: error });
      }

      console.log(
        `${req.method} ${req.originalUrl},'success', 'revoked scholarship`
      );
      if (result.affectedRows == 1) {
        res.status(200).json({ success: 1, data: "Revoked Successfully" });
      }
    });
  },
  getScholarshipEnroll: async (req, res) => {
    let data = req.body;

    async function query(data) {
      if (data.type == "All") {
        console.log("all");

        return `select scholarshipenroll.*, student.class, student.firstName,student.lastName, student.otherName from scholarshipenroll left join student on scholarshipenroll.student_id = student.student_id`;
      } else {
        console.log("custom");
        return `select scholarshipenroll.*, student.class,  student.firstName,student.lastName, student.otherName from scholarshipenroll left join student on scholarshipenroll.student_id = student.student_id where student.class = '${data.class}'`;
      }
    }

    pool.query(await query(data), (error, result) => {
      if (error) {
        console.log(`${req.method} ${error}, 'server error', fetch all fee`);

        return res
          .status(500)
          .json({ success: 0, error: "internal server error", message: error });
      }

      console.log(
        `${req.method} ${req.originalUrl},'success', fetch scholarship list`
      );
      console.log(result);
      res.status(200).json({ success: 1, data: result, type: data.type });
    });
  },

  createfeeCartegory: (req, res) => {
    const data = req.body;
    let hash = hashgenerator(7);
    console.log(data);
    let sqlQuery = `insert into feesgroup (name,feeid,createdby,createdat,status,description) values
    ('${data.name}','${hash}','${data.createdby}','${date}','true','${data.description}')`;
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
        let sqlQuery = `select * from feesgroup  where isActive = 'true'`;
        pool.query(sqlQuery, (error, result) => {
          res.status(200).json({ success: 1, data: result });
        });
      }
    });
  },
  getCart: (req, res) => {
    let sqlQuery = `select * from feesgroup`;
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
  updatefee: (req, res) => {
    const data = req.body;

    let sqlQuery = `update fee set itemName ='${data.itemName}',cartegory='${data.cartegory}',quantity='${data.quantity}',description='${data.description}',CreatedBy='${data.CreatedBy}',supplier='${data.supplier}',supplierContact1='${data.supplierContact1}',supplierContact2='${data.supplierContact2}',SupplierInfo='${data.SupplierInfo}' where id = ${data.id}`;

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
        console.log(`${req.method} ${req.originalUrl}, update fee data`);
        return res
          .status(200)
          .json({ success: 1, Message: "update fee data success" });
      }
    });
  },
  updatefeecart: (req, res) => {
    const data = req.body;

    let sqlQuery = `update feesgroup set name ='${data.name}',description='${data.description}',CreatedBy='${data.CreatedBy}',createdat='${date}' where id = ${data.id}`;

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
        let sqlQuery = `select * from feesgroup`;
        pool.query(sqlQuery, (error, result) => {
          res.status(200).json({ success: 1, data: result });
        });
      }
    });
  },
  generatefeeallstudent: async (req, res) => {
    const data = req.body;

    // set fee payable to 0 balance
    const promise5 = await new Promise((resolve, reject) => {
      let sqlQuery = `update account set feepayable = 0`;
      pool.query(sqlQuery, (error, result) => {
        if (error) {
          return res.status(500).json({
            success: 0,
            error: "internal server error",
            message: error,
          });
        }
        resolve("true");
      });
    });

    let reset = await promise5;
    const promise2 = await new Promise((resolve, reject) => {
      let sqlQuery = `select class, amount as amt , feename as name, scartegory as cart from assignfeecartegory order by id desc`;
      pool.query(sqlQuery, (error, result) => {
        // res.status(200).json({ success: 1, data: result });
        if (result == []) {
          resolve(false);

          return res.status(200).json({
            success: 0,
            error: "No Assigned Fee cartegory Available",
          });
        }
        else {
          resolve(result);

        }
      });
      console.log("Fees Cartegory fetched");
    });

    let fetchedFeecart = await promise2;

    let assign = await AssignFeeByClass(fetchedFeecart);
    console.log("assign is");
    console.log(assign);

    async function generateFee() {
      let sqlQuery1 = `select feepayable as val,student_id as stdid,scholarship, accountbalance as bal from account `;
      const promise1 = await new Promise((resolve, reject) => {
        pool.query(sqlQuery1, async (error, result) => {
          if (error) {
            console.log(
              res
                .status(500)
                .json({ success: 1, message: "Internal server", error: error })
            );
          }

          resolve(result);
        });
      });
      console.log(promise1);

      let info = await promise1;
      for (let i = 0; i < info.length; i++) {
        let sdtID = info[i].stdid;
        let scholarship = info[i].scholarship;

        let value = info[i].val;
        let bal = info[i].bal;

        let amount = Math.abs(eval(bal + value - scholarship));
        console.log(value + bal + sdtID);

        let sqlQuery6 = `update account set arrears = '${bal}', accountbalance ='${amount}', feegeneratedate = '${date}' where student_id = '${sdtID}'`;

        const promise2 = await new Promise((resolve, reject) => {
          pool.query(sqlQuery6, async (error, result) => {
            if (error) {
              console.log(error);
              res
                .status(500)
                .json({ success: 1, message: "Internal server", error: error });
            }
            resolve(result);
          });
        });

        if (i == info.length - 1) {
          ActivityregisterLog(
            "Generate Fee",
            data.createdby,
            "none",
            "Applied",
            date,
            "Generating fee for all Classes"
          );
          res
            .status(200)
            .json({ success: 1, message: "Fees Generated Successfully" });
        }
      }
    }

    if (assign == true) {
      generateFee();
    } else {
      console.log("reverse the assign process");
    }
  },
  generatefeebystudent: async (req, res) => {
    const data = req.body;
    console.log(data);


    //check for assigned fee for chosen classes
    const promise3 = await new Promise((resolve, reject) => {
      let sqlQuery = `select amount from assignfeecartegory where class = '${data.class}' and scartegory = '${data.cartegory}'`;
      pool.query(sqlQuery, (error, result) => {
        console.log(result)
        console.log(sqlQuery)

        if (error) {
          return res.status(500).json({
            success: 0,
            error: "internal server error",
            message: error,
          });
        }
        if (result.length == 0) {
          return res.status(200).json({
            success: 3,
            data: [],
            // error: "internal server error",
            message: "No Assigned Fee For Student's Class",
          });
        }
        console.log(result);
        resolve(result);
      });
    });
    let getassignedfee = promise3;

    //update fee payable
    const promise2 = await new Promise((resolve, reject) => {
      let sdtID = data.id;

      let sqlQuery6 = `update account set feepayable = 0 where student_id = '${sdtID}'`;

      pool.query(sqlQuery6, async (error, result) => {
        if (error) {
          console.log(error);
          res.status(500).json({
            success: 1,
            message: "Internal server",
            error: error,
          });
        }
        console.log("done updataing feepayable");
        return resolve(result);
      });
    });

    let uodated = await promise2;

    //select feepayable from db to be used for calculation
    const promise7 = await new Promise((resolve, reject) => {
      let sqlQuery = `select class, amount as amt , feename as name,scartegory as cart from assignfeecartegory where class = '${data.class}' and scartegory ='${data.cartegory}' `;
      pool.query(sqlQuery, (error, result) => {
        //  res.status(200).json({ success: 1, data: result });
        resolve(result);
      });
      console.log("Fees Assign logged Successfully");
    });
    console.log(promise7[0].name);
    let fetchedFeecart = promise7;
    console.log(fetchedFeecart);


    //assign fee to student
    let assign = await AssignFeeByStudent(fetchedFeecart, data.id);
    console.log("assign is");
    console.log(assign);

    async function generateFee(id) {
      let sqlQuery1 = `select account.feepayable as val,account.student_id as stdid,account.scholarship, account.accountbalance as bal from account where student_id = '${id}'`;
      const promise1 = await new Promise((resolve, reject) => {
        pool.query(sqlQuery1, async (error, result) => {
          if (error) {
            console.log(
              res
                .status(500)
                .json({ success: 1, message: "Internal server", error: error })
            );
          }

          resolve(result);
        });
      });
      console.log(promise1);

      let info = await promise1;
      let sdtID = info.stdid;
      let scholarship = info[0].scholarship;

      let value = info[0].val;
      let bal = info[0].bal;
      console.log(value);
      console.log(bal);

      let amount = eval(
        parseFloat(bal) + parseFloat(value) - parseFloat(scholarship)
      );
      console.log("amount");
      console.log(amount);

      let sqlQuery6 = `update account set arrears = '${bal}', accountbalance ='${amount}', feegeneratedate = '${date}' where student_id = '${id}'`;

      const promise2 = await new Promise((resolve, reject) => {
        pool.query(sqlQuery6, async (error, result) => {
          if (error) {
            console.log(error);
            res
              .status(500)
              .json({ success: 1, message: "Internal server", error: error });
          }
          resolve(result);
          ActivityregisterLog(
            "Generate Fee",
            data.createdby,
            "none",
            "Applied",
            date,
            "Generating fee for all Classes"
          );
          res
            .status(200)
            .json({ success: 1, message: "Fees Generated Successfully" });
        });
      });
    }

    if (assign == true) {
      generateFee(data.id);
    } else {
      console.log("reverse the assign process");
    }
  },
  generatefeebyclass: async (req, res) => {
    const data = req.body;
    console.log(data.class);

    //check for assigned fee for chosen classes
    const promise3 = await new Promise((resolve, reject) => {
      let sqlQuery = `select amount from assignfeecartegory where class in (${data.class})  `;
      pool.query(sqlQuery, (error, result) => {
        console.log(result)
        if (error) {
          return res.status(500).json({
            success: 0,
            error: "internal server error",
            message: error,
          });
        }
        if (result.length == 0) {
          return res.status(200).json({
            success: 3,
            data: [],
            // error: "internal server error",
            message: 'No Assigned Fee For Class(es)',
          });
        }
        console.log(result);
        resolve(result);
      });
    });
    let getassignedfee = promise3;

    //get all student to be applied to
    const promise8 = await new Promise((resolve, reject) => {
      let sqlQuery = `select student_id from student where class in (${data.class}) and student.isActive = 'true'; `;
      pool.query(sqlQuery, (error, result) => {
        console.log(result)
        if (error) {
          return res.status(500).json({
            success: 0,
            error: "internal server error",
            message: error,
          });
        }
        if (result.length == 0) {
          return res.status(200).json({
            success: 2,
            data: [],
            // error: "internal server error",
            message: 'No Student In Class',
          });
        }
        console.log(result);
        resolve(result);
      });
    });
    let getstudent = promise8;

    //reset fee payable to 0
    const promise2 = await new Promise((resolve, reject) => {
      let info = getstudent;
      for (let i = 0; i < info.length; i++) {
        let sdtID = info[i].student_id;

        let sqlQuery6 = `update account set feepayable = 0 where student_id = '${sdtID}'`;

        async function resetfeepayable(sqlQuery6) {
          const promise3 = await new Promise((resolve, reject) => {
            pool.query(sqlQuery6, async (error, result) => {
              if (error) {
                console.log(error);
                res.status(500).json({
                  success: 1,
                  message: "Internal server",
                  error: error,
                });
              }
              return resolve(result);
            });
          });
          return promise3;
        }

        let gg = resetfeepayable(sqlQuery6);

        if (i == info.length - 1) {
          resolve(gg);
          console.log("done updataing feepayable");
        }
      }
    });

    let arrearsduplicate = promise2;

    //fetch assigned fee cartegory
    const promise7 = await new Promise((resolve, reject) => {
      let sqlQuery = `select class, amount as amt , feename as name ,scartegory as cart from assignfeecartegory where class in (${data.class})  order by id desc`;
      pool.query(sqlQuery, (error, result) => {
        //  res.status(200).json({ success: 1, data: result });
        if (!result) {
          console.log(error)
          return res
            .status(500)
            .json({ success: 1, message: "Internal server", error: error })
            ;

        }

        resolve(result);

      });
      console.log("Fees Assign logged Successfully");
    });
    let fetchedFeecart = promise7;
    console.log(fetchedFeecart);

    //assign fee to students
    let assign = await AssignFeeByClass(fetchedFeecart);
    console.log("assign is");
    console.log(assign);

    async function generateFee() {
      let sqlQuery1 = `select account.feepayable as val,account.student_id as stdid,account.scholarship, account.accountbalance as bal from account left join student on account.student_id = student.student_id where student.class in (${data.class}) and student.isActive = 'true'`;
      const promise1 = await new Promise((resolve, reject) => {
        pool.query(sqlQuery1, async (error, result) => {
          if (error) {
            console.log(
              res
                .status(500)
                .json({ success: 1, message: "Internal server", error: error })
            );
          }

          resolve(result);
        });
      });
      //console.log(promise1);

      let info = await promise1;
      for (let i = 0; i < info.length; i++) {
        let sdtID = info[i].stdid;
        let scholarship = info[i].scholarship;

        let value = info[i].val;
        let bal = info[i].bal;

        let amount = eval(bal + value - scholarship);
        console.log(value + bal + sdtID);

        let sqlQuery6 = `update account set arrears = '${bal}', accountbalance ='${amount}', feegeneratedate = '${date}' where student_id = '${sdtID}'`;

        const promise2 = await new Promise((resolve, reject) => {
          pool.query(sqlQuery6, async (error, result) => {
            if (error) {
              console.log(error);
              res
                .status(500)
                .json({ success: 1, message: "Internal server", error: error });
            }
            resolve(result);
          });
        });

        if (i == info.length - 1) {
          ActivityregisterLog(
            "Generate Fee",
            data.createdby,
            "none",
            "Applied",
            date,
            "Generating fee for class/es"
          );
          res
            .status(200)
            .json({ success: 1, message: "Fees Generated Successfully" });
        }
      }
    }

    //generate fee after successfull asssign
    if (assign == true) {
      generateFee();
    } else {
      console.log("Failed assigning to student");
      console.log("reverse the assign process");
    }
  },


  assignfee: async (req, res) => {
    const data = req.body;
    console.log(data)
    async function forEachAsync(data) {
      let classdata = data.class;

      for (const val of classdata) {
        data.class = val;

        //record the assign fee in assignfeerecord table
        let record = await RecordAssignFee(data);

        //create assign fee in assignfeerecord teable
        let createAssignFee = await CreateAssignFeeClass(data);

        ActivityregisterLog(
          "Assign Fee",
          data.createdby,
          "none",
          "Assign",
          date,
          `Assign fee for ${val}`
        );
      }
    }

    async function main(data) {
      await forEachAsync(data);
      // let sqlQuery = `select DISTINCT(class.title), assignfeecartegory.* from class left join assignfeecartegory on class.title = assignfeecartegory.class group by class.title`;
      let sqlQuery = `SELECT * FROM assignfeecartegory group by class,scartegory`;

      pool.query(sqlQuery, (error, result) => {
        res.status(200).json({ success: 1, data: result });
      });
      console.log("Fees Assign logged Successfully");
    }

    main(data);
  },

  payfee: async (req, res) => {
    const data = req.body;
    console.log(data);
    const promise1 = await new Promise((resolve, reject) => {
      let sqlQuery = `update account set accountbalance ='${data.balanceafterpayment}' where student_id ='${data.id}' `;
      pool.query(sqlQuery, (error, result) => {
        if (error) {
          console.log(
            `${req.method} ${req.originalUrl},'DB error:'${error.sqlMessage}, error update account balance `
          );
          return res.status(500).json({
            success: 0,
            error: "internal server error",
            message: error,
          });
        }

        if (result.affectedRows != 1) {
          console.log(
            `${req.method} ${req.originalUrl}, Error updating balance`
          );
          return res.status(200).json({
            success: 0,
            error: error,
            message: "update account balance unsuccessfull ",
          });
        }

        if (result.affectedRows == 1) {
          //record payment
          let date = new Date();
          console.log(date.toLocaleDateString("en-CA"));
          let sqlQuery = `insert into feepaymentrecords (student_id,stdname,class,amountpaid,mode,balbeforepayment,balanceafterpayment,date,collectedby,receiptid,arrears,activity,session) values
         ('${data.id}','${data.name}','${data.class}','${data.amountpaid}','${data.mode
            }','${data.balbeforepayment}','${data.balanceafterpayment
            }','${date.toLocaleDateString("en-CA")}','${data.collectedby}','${data.receiptid
            }','${data.arrears}','Fee Payment','${data.session}')`;
          pool.query(sqlQuery, (error, result) => {
            if (error) {
              console.log(
                `${req.method} ${req.originalUrl},'success', fetch all student by class`
              );
            }

            // logger.info(
            //   `${req.method} ${req.originalUrl},'success', fetch all student by class`
            // );
          });

          console.log(`${req.method} ${req.originalUrl}, update fee balance `);
          console.log(data.infotype);

          if (data.infotype == "All Sections") {
            let sqlQuery = `select student.userId,student.student_id,student.firstName,student.otherName, student.lastName,student.gender, student.class,student.section,account.* from student left join account on student.student_id=account.student_id where student.class = '${data.class}' `;
            pool.query(sqlQuery, (error, result) => {
              if (error) {
                return res.status(500).json({
                  success: 0,
                  error: "internal server error",
                  message: error,
                });
              }

              // logger.info(
              //   `${req.method} ${req.originalUrl},'success', fetch all student by class`
              // );
              return res.status(200).json({
                success: 1,
                message: "update account balance successfull ",
                data: result,
                response: data,
              });
            });
          } else {
            let sqlQuery = `select student.userId,student.student_id,student.firstName,student.otherName, student.lastName,student.gender, student.class,student.section,account.accountbalance from student left join account on student.student_id=account.student_id where student.class = '${data.class}' and student.section = '${data.section}'`;
            pool.query(sqlQuery, (error, result) => {
              if (error) {
                return res.status(500).json({
                  success: 0,
                  error: "internal server error",
                  message: error,
                });
              }

              // logger.info(
              //   `${req.method} ${req.originalUrl},'success', fetch all student by class`
              // );
              return res.status(200).json({
                success: 1,
                message: "update account balance successfull ",
                data: result,
                response: data,
              });
            });
          }
        }
      });
    });
    // const promise2 = await new Promise((resolve, reject) => {
    //   console.log("ooooooooooooo");
    //   let sqlQuery = `insert into feepaymentrecords (student_id,amountpaid,mode,balbeforepayment,balanceafterpayment,date,collectedby,receiptid,activity) values
    // ('${data.student_id}','${data.amountpaid}','${data.mode}','${data.balbeforepayment}','${data.balanceafterpayment}','${date}','${data.collectedby}','${data.receiptid}','Fee Payment')`;
    //   pool.query(sqlQuery, (error, result) => {
    //     if (error) {
    //       console.log(
    //         `${req.method} ${req.originalUrl},'DB error:'${error.sqlMessage}, error update account balance `
    //       );
    //       return res.status(500).json({
    //         success: 0,
    //         error: "internal server error",
    //         message: error,
    //       });
    //     }

    //     if (result.affectedRows != 1) {
    //       console.log(
    //         `${req.method} ${req.originalUrl}, Error updating balance`
    //       );
    //       return res.status(200).json({
    //         success: 0,
    //         error: error,
    //         message: "update account balance unsuccessfull ",
    //       });
    //     }

    //     if (result.affectedRows == 1) {
    //       console.log(`${req.method} ${req.originalUrl}, update fee balance `);
    //       return res.status(200).json({
    //         success: 1,
    //         message: "update account balance successfull ",
    //       });
    //     }
    //   });
    // });
  },
  deleteallasigned: async (req, res) => {
    let data = req.body;
    console.log(data.pref);

    let sqlQuery = `TRUNCATE TABLE assignfeecartegory`;
    pool.query(sqlQuery, (error, results, fields) => {
      if (error) {
        console.log(error);
        console.log("Delete table values error");
        res.status(500).json({ success: 0, Message: "Error Deleting records" });
      }
      console.log("Delete table successfull");
      res
        .status(200)
        .json({ success: 1, Message: "Table Truncated Successfully" });
    });
  },

  preferences: async (req, res) => {
    let data = req.body;
    console.log(data.pref);

    let sqlQuery = `update account set preference ='${data.pref}' where student_id = '${data.id}'  `;
    pool.query(sqlQuery, (error, results, fields) => {
      if (error) {
        console.log(error);
        return console.log("Update preference  error");
      }

      if (results.affectedRows == 1) {
        let sqlQuery = `select student.*, account.preference  from student left join account on student.student_id = account.student_id   where student.class='${data.class}' and student.isActive = 'true'; `;
        pool.query(sqlQuery, (error, result) => {
          res.status(200).json({ success: 1, data: result });
        });
      }
    });
  },
  reversefeepayment: (req, res) => {
    let date = new Date();
    date = date.toLocaleDateString("en-CA");
    let data = req.body;
    console.log(data);
    let sqlQuery = `update account set accountbalance ='${data.reverseamount}' where student_id ='${data.id}' `;

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
        let sqlQuery = `insert into feepaymentrecords (student_id,amountinvolved,activity,date,collectedby,class) values
        ('${data.id}',${data.amount},'Payment Reversal','${date}','${data.collectedby}','${data.class}')`;
        pool.query(sqlQuery, (error, result) => {
          if (error) {
            console.log(
              `${req.method} ${req.originalUrl},'DB error:'${error.sqlMessage}, error update account balance `
            );
            return res.status(500).json({
              success: 0,
              error: "internal server error",
              message: error,
            });
          }

          if (result.affectedRows != 1) {
            console.log(
              `${req.method} ${req.originalUrl}, Error updating balance`
            );
            return res.status(200).json({
              success: 0,
              error: error,
              message: "update account balance unsuccessfull ",
            });
          }

          if (result.affectedRows == 1) {
            console.log(
              `${req.method} ${req.originalUrl}, update fee balance `
            );

            let sqlQuery = `select feepaymentrecords.*, student.firstName, student.otherName, student.lastName ,student.class from feepaymentrecords left join student on feepaymentrecords.student_id = student.student_id order by id desc `;

            pool.query(sqlQuery, (error, result) => {
              res.status(200).json({ success: 1, data: result });
            });
          }
        });
      }
    });
  },
  updatebalance: (req, res) => {
    let date = new Date();
    date = date.toLocaleDateString("en-CA");
    let data = req.body;
    let sqlQuery = `update account  set accountbalance ='${data.amount}' where student_id='${data.id}'`;

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
      }

      if (result.affectedRows == 1) {
        let data = req.body;
        let sqlQuery = `insert into feepaymentrecords (student_id,amountinvolved,activity,date,collectedby,class) values
        ('${data.id}','${data.amount}','Update Balance','${date}','${data.collectedby}','${data.class}')`;
        pool.query(sqlQuery, (error, result) => {
          if (error) {
            console.log(
              `${req.method} ${req.originalUrl},'DB error:'${error.sqlMessage}, error update account balance `
            );
            return res.status(500).json({
              success: 0,
              error: "internal server error",
              message: error,
            });
          }

          if (result.affectedRows != 1) {
            console.log(
              `${req.method} ${req.originalUrl}, Error updating balance`
            );
            return res.status(200).json({
              success: 0,
              error: error,
              message: "update account balance unsuccessfull ",
            });
          }

          if (result.affectedRows == 1) {
            console.log(
              `${req.method} ${req.originalUrl}, update fee balance `
            );
            let sqlQuery = `select feepaymentrecords.*, student.firstName, student.otherName, student.lastName ,student.class from feepaymentrecords left join student on feepaymentrecords.student_id = student.student_id order by id desc `;

            pool.query(sqlQuery, (error, result) => {
              res.status(200).json({ success: 1, data: result });
            });
          }
        });
      }
    });
  },
  truncateTable: (req, res) => {
    let sqlQuery = `truncate table fee`;
    pool.query(sqlQuery, (error, result) => {
      if (error) {
        console.log(
          `${req.method} ${req.originalUrl},'DB error:'${error.sqlMessage}, delete all records`
        );
        return res
          .status(500)
          .json({ success: 0, error: "internal server error", message: error });
      }
      if (result.affectedRows == 1) {
        console.log(`${req.method} ${req.originalUrl}, delete all records`);
        return res.status(200).json({
          success: 1,
          message: "delete all record success",
        });
      }
    });
  },
  deleteSinglefee: (req, res) => {
    const id = req.params.id;
    let sqlQuery = `delete from fee where id = ${id}`;
    // let sqlQuery = `delete from fee`;

    pool.query(sqlQuery, (error, result) => {
      if (error) {
        console.log(
          `${req.method} ${req.originalUrl},'DB error:'${error.sqlMessage}, delete fee by id`
        );
        return res
          .status(500)
          .json({ success: 0, error: "internal server error", message: error });
      }

      if (result.affectedRows != 1) {
        console.log(
          `${req.method} ${req.originalUrl}, delete fee by  id: no fee record found`
        );
        return res.status(200).json({
          success: 0,
          error: "delete fee by id: no fee record found",
        });
      }
      if (result.affectedRows == 1) {
        if (result.affectedRows == 1) {
          let sqlQuery = `select * from fee  where isActive = 'true'`;
          pool.query(sqlQuery, (error, result) => {
            res.status(200).json({ success: 1, data: result });
          });
        }
      }
    });
  },

  deletescholarship: (req, res) => {
    const id = req.params.id;
    console.log(id);
    let sqlQuery = `delete from scholarshiplist where id = '${id}'`;
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
          `${req.method} ${req.originalUrl}, delete scholarship by  id: not found`
        );
        return res.status(200).json({
          success: 0,
          error: "delete scholarship by id: not found",
          message: error,
        });
      }
      if (result.affectedRows == 1) {
        let sqlQuery = `select * from scholarshiplist `;
        pool.query(sqlQuery, (error, result) => {
          res.status(200).json({ success: 1, data: result });
        });
      }
    });
  },
  updatecartitem: (req, res) => {
    const data = req.body;
    console.log(data);
    let sqlQuery = `update  assignfeecartegory set amount = '${data.amount}' where id = '${data.id}'`;
    // let sqlQuery = `delete from fee`;
    console.log(sqlQuery)
    pool.query(sqlQuery, (error, result) => {
      if (error) {
        console.log(
          `${req.method} ${req.originalUrl},'DB error:'${error.sqlMessage}, update fee Cartegory by id`
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
          error: "update fee Cartegory by id: no fee cartegory record found",
          message: error,
        });
      }
      if (result.affectedRows == 1) {
        let sqlQuery = `select * from feesgroup `;
        pool.query(sqlQuery, (error, result) => {
          res.status(200).json({ success: 1, data: result });
        });
      }
    });
  },
  cartitemdel: (req, res) => {
    const data = req.body;
    console.log(data);
    let sqlQuery = `delete from assignfeecartegory where id = '${data.id}'`;
    // let sqlQuery = `delete from fee`;
    console.log(sqlQuery)
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
        let sqlQuery = `select * from feesgroup `;
        pool.query(sqlQuery, (error, result) => {
          res.status(200).json({ success: 1, data: result });
        });
      }
    });
  },
  deleteSingleCartfee: (req, res) => {
    const data = req.body;
    console.log(data);
    let sqlQuery = `delete from assignfeecartegory where class = '${data.class}' and scartegory = '${data.cart}'`;
    // let sqlQuery = `delete from fee`;
    console.log(sqlQuery)
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
        let sqlQuery = `select * from feesgroup `;
        pool.query(sqlQuery, (error, result) => {
          res.status(200).json({ success: 1, data: result });
        });
      }
    });
  },
  deletegroupFeeCart: (req, res) => {
    const id = req.body.class;
    let sqlQuery = `delete from assignfeecartegory where class = '${id}'`;
    // let sqlQuery = `delete from fee`;

    pool.query(sqlQuery, (error, result) => {
      if (error) {
        console.log(
          `${req.method} ${req.originalUrl},'DB error:'${error.sqlMessage}, delete fee stock by id`
        );
        return res
          .status(500)
          .json({ success: 0, error: "internal server error", message: error });
      }

      if (result.affectedRows != 1) {
        console.log(
          `${req.method} ${req.originalUrl}, delete fee by  id: no fee stock record found`
        );
        return res.status(200).json({
          success: 0,
          error: "delete fee sock by id: no fee stock record found",
        });
      }
      if (result.affectedRows == 1) {
        let sqlQuery = `select * from feestock  where isActive = 'true'`;
        pool.query(sqlQuery, (error, result) => {
          res.status(200).json({ success: 1, data: result });
        });
      }
    });
  },
};
