const pool = require("../../config/database.js");
// const logger = require("../../util/logger.js");
var createHash = require("hash-generator");

let date = new Date();
date = date.toUTCString();

async function AssignFeeByClass(data) {
  return new Promise(async (resolve2, reject) => {
    let feedata = data;
    console.log(feedata);
    for (let i = 0; i < feedata.length; i++) {
      let name = feedata[i].name;
      let amt = feedata[i].amt;
      let clazz = feedata[i].class;

      const promise4 = await new Promise((resolve1, reject) => {
        let sqlQuery1 = `select  account.preference,account.student_id from student left join account on student.student_id = account.student_id where student.class ='${clazz}' `;

        pool.query(sqlQuery1, async (error, result) => {
          if (error) {
            console.log(
              `${req.method} ${req.originalUrl}, 'server error', fetch all fee`
            );
          }
          let ss = await result;

          if (result.length == 0) {
            return resolve1("none");
          }

          console.log(ss);
          for (let i = 0; i < result.length; i++) {
            let singlestudent = result[i].student_id;
            let preference = result[i].preference;

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
                return resolve1("done");
              }
            }

            update(name, singlestudent);
          }
        });
      });

      if (i == feedata.length - 1) {
        registerLog(
          "Assign Fee",
          data.createdby,
          "none",
          "Applied",
          date,
          `Assign fee for ${data.class}`
        );

        setTimeout(() => {
          resolve2(true);
        }, 4500);

        // let sqlQuery = `select * from assignfeecartegory order by id desc`;
        // pool.query(sqlQuery, (error, result) => {
        //   res.status(200).json({ success: 1, data: result });
        // });
        // console.log("Fees Assign logged Successfully");
      }
    }
  });
}

async function RecordAssignFee(data) {
  let sqlQuery = `insert into assignfeerecord (class,total,createdat,status,createdby) values
     ('${data.class}','${data.total}','${date.slice(0, 17)}','pending','${
    data.createdby
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
  pool.query(
    `select * from assignfeecartegory where feename = ? and class = ? `,
    [data.name, data.class],

    (error, results, fields) => {
      if (error) {
        callBack(error);
      }
      return callBack(null, results[0]);
    }
  );
}

async function RecordAssignFeeclass(data) {
  const promise1 = await new Promise((resolve, reject) => {
    for (let i = 0; i < data.fee.length; i++) {
      let name = data.fee[i][0];
      let amt = data.fee[i][1];
      let custom = {
        name: name,
        class: data.class,
      };
      checkFeeExist(custom, (err, results) => {
        if (results) {
          let date = new Date();
          date = date.toLocaleDateString("en-CA");
          console.log(date);
          let sqlQuery = `update  assignfeecartegory set  amount = '${amt}',createdat= '${date}', total = '${data.total}' where feename = '${name}' and class = '${data.class}'  `;

          pool.query(sqlQuery, (error, results, fields) => {
            if (error) {
              console.log(error);
              return console.log(
                "Assign fee caetegory log error- updating existing   "
              );
            }
            resolve(results);
            console.log(
              "Assign fee caetegory logged successfully - updating existing "
            );
          });
        }

        // if not create user
        else {
          let date = new Date();
          date = date.toLocaleDateString("en-CA");
          console.log(date);
          let sqlQuery = `insert into assignfeecartegory (class,feename,amount,createdat,createdby,total) values
         ('${data.class}','${name}','${amt}','${date}','${data.createdby}','${data.total}')`;

          pool.query(sqlQuery, (error, results, fields) => {
            if (error) {
              console.log(error);
              return console.log("assignfeecartegory log error --new fee cart");
            }
            resolve(results);
            console.log(
              "assignfeecartegory logged successfully --new fee cart"
            );
          });
        }
      });
    }
  });
}

function registerLog(activity, user, amount, status, date, description) {
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
  resetclassaccount: async(req, res) => {
    let data = req.body;
    console.log(data)
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
    let fetchedStudent = await promise8

    const promise2 = await new Promise((resolve, reject) => {
      let info = fetchedStudent;
      console.log(info)
      if(fetchedStudent.length == 0){
        res.status(200).json({ success: 2, message: 'Class Has No Student' });

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
          res.status(200).json({ success: 1, message: 'All Accounts Updated successfully' });

          console.log("done updating Selected Class Account bal");
        }
      }
    });

    let arrearsduplicate = promise2;






 
  },

  resetallaccount : (req, res) => {
    let data = req.body;
    console.log(data)
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

      console.log(`${req.method} ${req.originalUrl},'success', reset all account`);

      res.status(200).json({ success: 1, message: 'All Accounts Updated successfully' });
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
    let sqlQuery = `select DISTINCT(class.title), assignfeecartegory.* from class left join assignfeecartegory on class.title = assignfeecartegory.class group by class.title`;
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
    let sqlQuery = `select DISTINCT(class.title), assignfeecartegory.* from class left join assignfeecartegory on class.title = assignfeecartegory.class`;
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
  getScholarshipEnroll: async (req, res) => {
    let data = req.body;

    async function query(data) {
      if (data.type == "All") {
        return `select scholarshipenroll.*, student.class, student.firstName,student.lastName, student.otherName, student.section from scholarshipenroll left join student on scholarshipenroll.student_id = student.student_id`;
      } else {
        return `select scholarshipenroll.*, student.class,  student.firstName,student.lastName, student.otherName, student.section from scholarshipenroll left join student on scholarshipenroll.student_id = student.student_id where student.class = '${data.class}'`;
      }
    }

    pool.query(await query(data), (error, result) => {
      if (error) {
        console.log(`${req.method} ${error}, 'server error', fetch all fee`);

        return res
          .status(500)
          .json({ success: 0, error: "internal server error", message: error });
      }

      console.log(`${req.method} ${req.originalUrl},'success', fetch all fee`);

      res.status(200).json({ success: 1, data: result });
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
  generatefee: async (req, res) => {
    const data = req.body;

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

    let reset = promise5;
    const promise2 = await new Promise((resolve, reject) => {
      let sqlQuery = `select class, amount as amt , feename as name from assignfeecartegory order by id desc`;
      pool.query(sqlQuery, (error, result) => {
        // res.status(200).json({ success: 1, data: result });
        resolve(result);
      });
      console.log("Fees Assign logged Successfully");
    });
    console.log(promise2[0].name);
    let fetchedFeecart = promise2;

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
          registerLog(
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
    console.log(data.id);

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

    let arrearsduplicate = await promise2;

    const promise7 = await new Promise((resolve, reject) => {
      let sqlQuery = `select class, amount as amt , feename as name from assignfeecartegory where class = '${data.class}' `;
      pool.query(sqlQuery, (error, result) => {
        //  res.status(200).json({ success: 1, data: result });
        resolve(result);
      });
      console.log("Fees Assign logged Successfully");
    });
    console.log(promise7[0].name);
    let fetchedFeecart = promise7;
    console.log(fetchedFeecart);
    let assign = await AssignFeeByClass(fetchedFeecart);
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
          registerLog(
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
    let getstudent = promise8;

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

    const promise7 = await new Promise((resolve, reject) => {
      let sqlQuery = `select class, amount as amt , feename as name from assignfeecartegory where class in (${data.class}) order by id desc`;
      pool.query(sqlQuery, (error, result) => {
        //  res.status(200).json({ success: 1, data: result });
        resolve(result);
      });
      console.log("Fees Assign logged Successfully");
    });
    let fetchedFeecart = promise7;
    console.log(fetchedFeecart);
    let assign = await AssignFeeByClass(fetchedFeecart);
    console.log("assign is");
    console.log(assign);

    async function generateFee() {
      let sqlQuery1 = `select account.feepayable as val,account.student_id as stdid,account.scholarship, account.accountbalance as bal from account left join student on account.student_id = student.student_id where student.class in (${data.class})`;
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
          registerLog(
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

  assignfee: async (req, res) => {
    const data = req.body;
    let record = await RecordAssignFee(data);
    let recordclass = await RecordAssignFeeclass(data);
    registerLog(
      "Assign Fee",
      data.createdby,
      "none",
      "Applied",
      date,
      `Assign fee for ${data.class}`
    );

    let sqlQuery = `select DISTINCT(class.title), assignfeecartegory.* from class left join assignfeecartegory on class.title = assignfeecartegory.class group by class.title`;
    pool.query(sqlQuery, (error, result) => {
      res.status(200).json({ success: 1, data: result });
    });
    console.log("Fees Assign logged Successfully");
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
          let sqlQuery = `insert into feepaymentrecords (student_id,stdname,class,amountpaid,mode,balbeforepayment,balanceafterpayment,date,collectedby,receiptid,arrears,activity) values
         ('${data.id}','${data.name}','${data.class}','${data.amountpaid}','${
            data.mode
          }','${data.balbeforepayment}','${
            data.balanceafterpayment
          }','${date.toLocaleDateString("en-CA")}','${data.collectedby}','${
            data.receiptid
          }','${data.arrears}','Fee Payment')`;
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
            let sqlQuery = `select student.userId,student.student_id,student.firstName,student.otherName, student.lastName,student.gender, student.class,student.section,account.* from student left join account on student.student_id=account.student_id where student.class = '${data.class}'`;
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
        res.status(500).json({ success: 0, Message: 'Error Deleting records' });

      }
      console.log("Delete table successfull");
      res.status(200).json({ success: 1, Message: 'Table Truncated Successfully' });
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
        let sqlQuery = `select student.*, account.preference  from student left join account on student.student_id = account.student_id   where student.class='${data.class}' `;
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
  deleteSingleCartfee: (req, res) => {
    const data = req.body;
    console.log(data);
    let sqlQuery = `delete from feesgroup where id = '${data.id}'`;
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
        let sqlQuery = `select * from feesgroup `;
        pool.query(sqlQuery, (error, result) => {
          res.status(200).json({ success: 1, data: result });
        });
      }
    });
  },
  deleteSinglefeestock: (req, res) => {
    const id = req.params.id;
    let sqlQuery = `delete from feestock where id = ${id}`;
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
