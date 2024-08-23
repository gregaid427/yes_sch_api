const pool = require("../../config/database.js");
// const logger = require("../../util/logger.js");
var createHash = require("hash-generator");

let date = new Date();
date = date.toUTCString();

async function RecordAssignFee(data) {
  let sqlQuery = `insert into assignfeerecord (class,total,createdat,status,createdby) values
     ('${data.class}','${data.total}','${date.slice(0, 17)}','pending','${
    data.createdby
  }')`;

  pool.query(sqlQuery, (error, results, fields) => {
    if (error) {
      console.log(error);
      return console.log("finance log error");
    }
    console.log("logged successfully");
  });
}

async function RecordAssignFeeclass(data) {
  const promise1 = await new Promise((resolve, reject) => {
    for (let i = 0; i < data.fee.length; i++) {
      let name = data.fee[i][0];
      let amt = data.fee[i][1];
      let sqlQuery = `insert into assignfeecartegory (class,feename,amount,createdat,createdby) values
     ('${data.class}','${name}','${amt}','${date.slice(0, 17)}','${
        data.createdby
      }')`;

      pool.query(sqlQuery, (error, results, fields) => {
        if (error) {
          console.log(error);
          return console.log("finance log error");
        }
        resolve(results);
        console.log("record logged successfully");
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
      return console.log("finance log error");
    }
    console.log("logged successfully");
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

  getfeerecord: (req, res) => {
    let sqlQuery = `select * from assignfeerecord order by id desc`;
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
        let sqlQuery1 = `update account set accountcode =  `;
        pool.query(sqlQuery1, (error, result) => {
          if (error) {
            return console.log(`${sqlQuery1} ${error},`);
          }
          console.log(
            `${req.method} ${req.originalUrl},Success create new column field`
          );
          let sqlQuery = `select * from feesgroup  where isActive = 'true'`;
          pool.query(sqlQuery, (error, result) => {
            res.status(200).json({ success: 1, data: result });
          });
        });
      }
    });
  },
  getCart: (req, res) => {
    let sqlQuery = `select * from feesgroup  `;
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
  generatefee: (req, res) => {
    const data = req.body;

    async function generateFee() {
      let sqlQuery1 = `select feepayable as val,student_id as stdid, accountbalance as bal from account `;
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
        let value = info[i].val;
        let bal = info[i].bal;

        let amount = eval(bal - value);
        console.log(value + bal + sdtID);

        let sqlQuery6 = `update account set accountbalance ='${amount}', feegeneratedate = '${date}' where student_id = '${sdtID}'`;

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

      // pool.query(sqlQuery, (error, result) => {
      //   if (error) {
      //     console.log(
      //       `${req.method} ${req.originalUrl},'DB error:'${error.sqlMessage}, update fee data`
      //     );
      //     return res
      //       .status(500)
      //       .json({ success: 0, error: "internal server error", message: error });
      //   }

      //   if (result.affectedRows) {
      //     console.log(`${req.method} ${req.originalUrl}, update fee data`);
      //     return res
      //       .status(200)
      //       .json({ success: 1, Message: "Fee generated successfully" });
      //   }
      // });
    }
    generateFee();
  },

  assignfee: async (req, res) => {
    const data = req.body;
    let record = await RecordAssignFee(data);
    let recordclass = await RecordAssignFeeclass(data);

    let feedata = data.fee;

    for (let i = 0; i < feedata.length; i++) {
      let name = feedata[i][0];
      let amt = feedata[i][1];

      const promise4 = await new Promise((resolve, reject) => {
        let sqlQuery1 = `select  account.preference,account.student_id from student left join account on student.student_id = account.student_id where student.class ='${data.class}' `;

        pool.query(sqlQuery1, async (error, result) => {
          if (error) {
            console.log(
              `${req.method} ${req.originalUrl}, 'server error', fetch all fee`
            );
          }
          let ss = await result;
          console.log(ss);

          for (let i = 0; i < result.length; i++) {
            let singlestudent = result[i].student_id;
            let preference = result[i].preference;

            let bb = ss;
            let feedata = data.fee;

            console.log("fee running" + name);

            async function update(name, singlestudent) {
              console.log(singlestudent);
              let sqlQuery2 = `select feepayable as feepay from account where student_id='${singlestudent}' `;
              const promise = await new Promise((resolve, reject) => {
                pool.query(sqlQuery2, async (error, resulty) => {
                  if (error) {
                    console.log(
                      `${req.method} ${req.originalUrl}, 'server error', fetch all fee`
                    );
                  }
                  // console.log(`${sqlQuery2}`);
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

                  resolve();
                });
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

        let sqlQuery = `select * from assignfeerecord order by id desc`;
        pool.query(sqlQuery, (error, result) => {
          res.status(200).json({ success: 1, data: result });
        });
        console.log("Fees Assign logged Successfully");
      }
    }
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
              });
            });
          }
        }
      });
    });
    const promise2 = await new Promise((resolve, reject) => {
      console.log("ooooooooooooo");
      let sqlQuery = `insert into feepaymentrecords (student_id,amountpaid,mode,balbeforepayment,balanceafterpayment,date,collectedby,receiptid) values
    ('${data.student_id}','${data.amountpaid}','${data.mode}','${data.balbeforepayment}','${data.balanceafterpayment}','${date}','${data.collectedby}','${data.receiptid}')`;
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
          console.log(`${req.method} ${req.originalUrl}, update fee balance `);
          return res.status(200).json({
            success: 1,
            message: "update account balance successfull ",
          });
        }
      });
    });
  },

  preferences: async (req, res) => {
    let data = req.body;
    console.log(data.pref)

    let sqlQuery = `update account set preference ='${data.pref}' where student_id = '${data.id}'  `;
    pool.query(sqlQuery, (error, results, fields) => {
      if (error) {
        console.log(error);
        return console.log("Update preference  error");
      }

      return res
        .status(200)
        .json({ success: 1, Message: "update fee cartegory success" });
    });
  },

  updatefeeStatus: (req, res) => {
    let sqlQuery = `update fee set fee_status ='false'`;

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
          .json({ success: 1, error: "update fee data success" });
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
        let sqlQuery = `ALTER TABLE account DROP ${data.name} `;
        pool.query(sqlQuery, (error, result) => {
          if (error) {
            console.log(error);
          }
          let sqlQuery = `select * from feesgroup `;
          pool.query(sqlQuery, (error, result) => {
            res.status(200).json({ success: 1, data: result });
          });
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
