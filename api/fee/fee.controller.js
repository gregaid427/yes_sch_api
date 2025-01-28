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

async function recordfeepayment(data) {
  //record payment

  const promise1 = await new Promise((resolve, reject) => {

    let date = new Date();
    console.log(date.toLocaleDateString("en-CA"));
    let sqlQuery = `insert into feepaymentrecords (student_id,activeaccountid,stdname,class,amountpaid,mode,balbeforepayment,balanceafterpayment,date,collectedby,receiptid,arrears,activity,session) values
 ('${data.id}','${data.activeaccount}','${data.name}','${data.class}','${data.amountpaid}','${data.mode
      }','${data.balbeforepayment}','${data.balanceafterpayment
      }','${date.toLocaleDateString("en-CA")}','${data.collectedby}','${data.receiptid
      }','${data.arrears}','Fee Payment','${data.session}')`;
    pool.query(sqlQuery, (error, result) => {
      if (error) {
        console.log(error)
        console.log(
          `${req.method} ${req.originalUrl},'success', fetch all student by class`
        );
      }
      resolve(result)
      // logger.info(
      //   `${req.method} ${req.originalUrl},'success', fetch all student by class`
      // );
    });
  });
  return promise1

  // const promise10 = await new Promise((resolve, reject) => {

  //   let date = new Date();
  //   console.log(date.toLocaleDateString("en-CA"));
  //   let sqlQuery = `insert into ${data.activeaccountid} (student_id,name,accountbalance,amountpaid,mode,balbeforepayment,balanceafterpayment,date,collectedby,receiptid,arrears,activity,session) values
  //  ('${data.id}','${data.name}','${data.class}','${data.amountpaid}','${data.mode
  //     }','${data.balbeforepayment}','${data.balanceafterpayment
  //     }','${date.toLocaleDateString("en-CA")}','${data.collectedby}','${data.receiptid
  //     }','${data.arrears}','Fee Payment','${data.session}')`;
  //   pool.query(sqlQuery, (error, result) => {
  //     if (error) {
  //       console.log(
  //         `${req.method} ${req.originalUrl},'success', fetch all student by class`
  //       );
  //     }
  //     resolve(result)

  //     // logger.info(
  //     //   `${req.method} ${req.originalUrl},'success', fetch all student by class`
  //     // );
  //   });
  // });

}

async function update(feedatas, student) {

  //check for preference wether it exist or not
  const promise1 = await new Promise((resolve, reject) => {
    let splitPreference = student.preference.split(",");
    if (splitPreference.includes(feedatas.name)) {
      resolve(false);
    } else {
      resolve(true);
    }
  });

  let prom = await promise1;
  let splitPreference = student.preference.split(",");


  async function checkpref(splitPreference) {

    async function forEachAsync(splitPreference) {
      let subfee = 0

      for (const pref of splitPreference) {

        // if (pref.includes(feedatas.name)) {
        //   console.log('Exempted ' + feedatas.name)
        // } else {
        subfee = subfee + feedatas.amt
        console.log('subfee is' + subfee)
        console.log(subfee)
        console.log(feedatas.name)


        // }

      }
      return subfee
    }




    let kk = await forEachAsync(splitPreference);





    return kk
  }


  let ll = await checkpref(splitPreference)

  console.log('kkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk')

  console.log(ll)

  const promise9 = await new Promise((resolve, reject) => {
    let sqlQuery2 = `select feepayable as currentfeepayable from student where student_id = '${student.student_id}'`
    pool.query(sqlQuery2, async (error, result) => {
      if (error) {
        console.log(
          `${sqlQuery2} ${req.originalUrl}, 'server error', fetch all fee`
        );
      }

      resolve(result);
    });
  });

  let current = await promise9
  console.log(current);
  console.log(feedatas.amt);


  let amount = eval(Number(feedatas.amt) + Number(current[0].currentfeepayable));

  let sqlQuery6 = `update student set feepayable = '${amount}'  where student_id = '${student.student_id}' `;
  console.log(sqlQuery6);

  // if (prom == true) {
  //   console.log("update running" + feedatas.name);

  //   console.log("amount is" + amount);


  //   pool.query(sqlQuery6, async (error, result) => {
  //     if (error) {
  //       console.log(
  //         `${req.method} ${req.originalUrl}, 'server error', fetch all fee`
  //       );
  //     }

  //   });
  // } else {
  //   console.log(
  //     "faaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaalllllllllllseeeeeeee"
  //   );
  // }
}

async function AssignFeeByStudent(feedata, stud) {
  return new Promise(async (resolve2, reject) => {

    console.log('assign function called');
    let splitPreference = stud[0].preference.split(",");
    let subfee = 0
    for (const feedatas of feedata) {

      if (splitPreference.includes(feedatas.name)) {
        console.log('Exempted ' + feedatas.name)
      } else {
        //   subfee.push(feedatas.amt)
        subfee = subfee + feedatas.amt
        console.log('subfee is' + subfee + feedatas.name)

        // }


      }
    }

    resolve2(subfee);

  }

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

//function to check
async function generatefeecartchecker(classname) {
  let myArray = []

  const promise2 = await new Promise((resolve, reject) => {

    let sqlQuery = `SELECT distinct(scartegory) as feecount FROM assignfeecartegory WHERE class = '${classname}' `

    try {
      pool.query(sqlQuery, (error, results, fields) => {
        if (error) {
          console.log(error);
          resolve('false')

          return console.log("assignfeecartegory4 log error --new fee cart");
        }
        resolve(results);

      });

    } catch (error) {
    }
    ;
  });
  const promise1 = await new Promise((resolve, reject) => {

    let sqlQuery = `SELECT distinct(cartegory) as classcount  FROM student WHERE class = '${classname}' `
    try {
      pool.query(sqlQuery, (error, results, fields) => {
        console.log(sqlQuery)

        if (error) {
          console.log(error);
          resolve('false')

          return console.log();
        }
        resolve(results);

      });

    } catch (error) {
    }
    ;
  });


  for (const count of promise1) {
    if (promise2.some(e => e.feecount === count.classcount)) {
    }
    else {
      myArray.push(count.classcount)

      //  return res.status(500)
      //   .json({ success: 0, error: "internal server error", message: error });
    }
  }

  console.log(myArray)

  return myArray

}




// 
//SELECT count(distinct(cartegory)) as classcount,distinct(cartegory) as classcart FROM `student` WHERE class = 'JHS 1'; 

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
        let sqlQuery = `insert into assignfeecartegory (class,scartegory,feename,amount,createdat,createdby,total) values
     ('${data.class}','${data.scartegory}','${name}','${amt}','${date}','${data.createdby}','${data.total}')`;

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
function FeeGenerateLog(data) {
  let sqlQuery = `insert into feegeneraterecord (code,session,createdby,date) values
     ('${data.code}','${data.session}','${data.createdby}','${date}')`;

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

    let sqlQuery = `update student set scholarship = '${data.amount}' where student_id ='${data.id}' `;

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

  getbulkbill: async (req, res) => {
    const data = req.body

    let sqlQuery = `select student_id from student where class = '${data.class}'`;

    const promise8 = await new Promise((resolve, reject) => {
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

        if (result) {
          console.log('student list retrieved');
          resolve(result)
        }
      });
    });
    let fetchedStudent = await promise8;
    let myArray = []
    async function forEachAsync(fetchedStudent) {

      for (const val of fetchedStudent) {

        let sqlQuery1 = `select student.*,assignfeecartegory.* from student right join assignfeecartegory on student.cartegory = assignfeecartegory.scartegory  where student.student_id = '${val.student_id}' and assignfeecartegory.class = '${data.class}'`;
        const promise9 = await new Promise((resolve, reject) => {
          pool.query(sqlQuery1, (error, result) => {
            if (error) {
              console.log(error)
              console.log(
                `${req.method} ${req.originalUrl},'DB error:'${error.sqlMessage}, fetch fee by id`
              );
              return res
                .status(500)
                .json({ success: 0, error: "internal server error", message: error });
            }
            resolve(result)
              ;
          });
        });

        myArray.push(promise9)

      }




    }

    async function main(fetchedStudent) {
      await forEachAsync(fetchedStudent);
      res.status(200).json({ success: 1, data: myArray });

    }
    main(fetchedStudent)

  },

  closeaccount: async (req, res) => {
    const data = req.body
    console.log(data)

    let code = "session_" + createHash(9);
    // if(data.active == true){
    let sqlQuery1 = `update session set active ='false'`;
    let sqlQuery2 = `select count(id) from session'`;

    let query = data.active == true ? sqlQuery1 : sqlQuery2;
    let sqlQuery10 = `select sessionaccountid from session where sessionname ='${data.newsession}'`;

    //get new session accountid 
    const promise1 = await new Promise((resolve, reject) => {
      pool.query(sqlQuery10, (error, result) => {
        if (error) {
          console.log(error)
          console.log(
            `${req.method} ${req.originalUrl},'DB error:'${error.sqlMessage}, fetch fee by id`
          );
          return res
            .status(500)
            .json({ success: 0, error: "internal server error", message: error });
        }
        console.log(`${req.method} ${req.originalUrl}, fetch fee by id`);
        resolve(result)
      });
    });

    let val = await promise1
    console.log(val)
    console.log('llllllllllllllllllll')

    //update activeaccount session id
    let sqlQuery = `update session set activeaccountid =  '${val[0].sessionaccountid}'`;
    const promise2 = await new Promise((resolve, reject) => {

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

        }
        resolve(result)
      });
    });
    let val1 = await promise2
    console.log('222222222222222222')


    //get old session accountid 
    let sqlQuery11 = `select sessionaccountid from session where sessionname ='${data.oldsession}'`;
    const promise5 = await new Promise((resolve, reject) => {
      pool.query(sqlQuery11, (error, result) => {
        if (error) {
          console.log(error)
          console.log(
            `${req.method} ${req.originalUrl},'DB error:'${error.sqlMessage}, fetch fee by id`
          );
          return res
            .status(500)
            .json({ success: 0, error: "internal server error", message: error });
        }
        console.log(`${req.method} ${req.originalUrl}, fetch fee by id`);
        resolve(result)
      });
    });

    let oldsessionid = await promise5
    console.log(oldsessionid)



    console.log('oldsessionid')

    //duplicate records into custom table
    let sqlQuery3 = `insert into   ${oldsessionid[0].sessionaccountid} (student_id,firstName,lastName,otherName,class,amountpaid,arrears,session,feepayable,preference,scholarship,accountbalance,date,createdby) select 
     student_id,firstName,lastName,otherName,class,amountpaid,arrears,'${data.oldsession}',feepayable,preference,scholarship,accountbalance,'${date}','${data.createdby}' from student `;

    const promise = await new Promise((resolve, reject) => {
      pool.query(sqlQuery3, (error, result) => {
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
        else {
          // reset amount paid  to 0 for all student in student table 
          let sqlQuery6 = `update student set  amountpaid=0.00`;

            pool.query(sqlQuery6, (error, result) => {
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

            });

          return res.status(200).json({
            success: 1,
            data: [],
          });
        }

      });
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
  feespaidsession: async (req, res) => {
    const data = req.body
    let sqlQuery = `select * from student where class = '${data.class}' `;
    const promise8 = await new Promise((resolve, reject) => {

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
        resolve(result)
      });
    });

    let students = promise8
    let gold = []

    for (const element of students) {
      // console.log(element)
      let sqlQuery1 = `select sum(amountpaid) as paid from feepaymentrecords where student_id = '${element.student_id}' and session = '${data.session}'`;
      const promise2 = await new Promise((resolve, reject) => {

        pool.query(sqlQuery1, (error, result) => {
          console.log(result)
          if (error) {
            console.log(
              `${req.method} ${req.originalUrl},'DB error:'${error.sqlMessage}, fetch fee by id`
            );
            return res
              .status(500)
              .json({ success: 0, error: "internal server error", message: error });
          }

          if (!result) {
            gold.push({

              student_id: element.student_id,
              firstName: element.firstName,
              lastName: element.lastName,
              otherName: element.otherName,
              'class': element.class,
              cartegory: element.cartegory,
              section: element.section,
              amountpaid: element.amountpaid,

              accountbalance: element.accountbalance,

              feepayable: element.feepayable,
              scholarship: element.scholarship,
              arrears: element.arrears,
              preference: element.preference,
              feegeneratedate: element.feegeneratedate,
              feegeneratecode: element.feegeneratecode,
              feepaid: 0
            })
          }
          else {
            gold.push({

              student_id: element.student_id,
              firstName: element.firstName,
              lastName: element.lastName,
              otherName: element.otherName,
              'class': element.class,
              cartegory: element.cartegory,
              section: element.section,
              amountpaid: element.amountpaid,

              accountbalance: element.accountbalance,

              feepayable: element.feepayable,
              scholarship: element.scholarship,
              arrears: element.arrears,
              preference: element.preference,
              feegeneratedate: element.feegeneratedate,
              feegeneratecode: element.feegeneratecode,
              feepaid: result[0].paid
            })
          }
          resolve(result)
        });
      });

    };
    res.status(200).json({ success: 1, data: gold });

    console.log(gold)
  },
  sessionaccountrecords: async (req, res) => {
    const data = req.body
    let sqlQuery = `select * from student where class = '${data.class}' `;
    const promise8 = await new Promise((resolve, reject) => {

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
        resolve(result)
      });
    });

    let students = promise8
    let gold = []

    for (const element of students) {
      // console.log(element)
      let sqlQuery1 = `select sum(amountpaid) as paid from feepaymentrecords where student_id = '${element.student_id}' and session = '${data.session}'`;
      const promise2 = await new Promise((resolve, reject) => {

        pool.query(sqlQuery1, (error, result) => {
          console.log(result)
          if (error) {
            console.log(
              `${req.method} ${req.originalUrl},'DB error:'${error.sqlMessage}, fetch fee by id`
            );
            return res
              .status(500)
              .json({ success: 0, error: "internal server error", message: error });
          }

          if (!result) {
            gold.push({

              student_id: element.student_id,
              firstName: element.firstName,
              lastName: element.lastName,
              otherName: element.otherName,
              'class': element.class,
              cartegory: element.cartegory,
              section: element.section,
              amountpaid: element.amountpaid,

              accountbalance: element.accountbalance,

              feepayable: element.feepayable,
              scholarship: element.scholarship,
              arrears: element.arrears,
              preference: element.preference,
              feegeneratedate: element.feegeneratedate,
              feegeneratecode: element.feegeneratecode,
              feepaid: 0
            })
          }
          else {
            gold.push({

              student_id: element.student_id,
              firstName: element.firstName,
              lastName: element.lastName,
              otherName: element.otherName,
              'class': element.class,
              cartegory: element.cartegory,
              section: element.section,
              amountpaid: element.amountpaid,

              accountbalance: element.accountbalance,

              feepayable: element.feepayable,
              scholarship: element.scholarship,
              arrears: element.arrears,
              preference: element.preference,
              feegeneratedate: element.feegeneratedate,
              feegeneratecode: element.feegeneratecode,
              feepaid: result[0].paid
            })
          }
          resolve(result)
        });
      });

    };
    res.status(200).json({ success: 1, data: gold });

    console.log(gold)
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

        let sqlQuery6 = `update student set accountbalance = '${data.amount}' where student_id = '${sdtID}'`;

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
    let sqlQuery = `update student set accountbalance ='${data.amount}'`;
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

  paymentWithscholarship: async (req, res) => {
    let id = req.body.id
    // const promise1 = await new Promise((resolve, reject) => {

    //   let sqlQuery = `select * from feepaymentrecords where student_id='${id}' limit 15 `;
    //   pool.query(sqlQuery, (error, result) => {
    //     if (error) {
    //       console.log(
    //         `${req.method} ${req.originalUrl}, 'server error', fetch all fee`
    //       );

    //       return res
    //         .status(500)
    //         .json({ success: 0, error: "internal server error", message: error });
    //     }

    //     console.log(`${req.method} ${req.originalUrl},'success', fetch all fee`);
    //     resolve(result)
    //    // res.status(200).json({ success: 1, data: result });
    //   });
    // });

    // let feedata = await promise1

    let sqlQuery1 = `select * from scholarshipenroll where student_id='${id}' `;
    pool.query(sqlQuery1, (error, result) => {
      if (error) {
        console.log(
          `${req.method} ${req.originalUrl}, 'server error', fetch all fee`
        );

        return res
          .status(500)
          .json({ success: 0, error: "internal server error", message: error });
      }

      console.log(`${req.method} ${req.originalUrl},'success', fetch all fee`);

      // res.status(200).json({ success: 1, scholarship: result , feedata:feedata });
      res.status(200).json({ success: 1, scholarship: result });

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
    console.log(data.class);
    let code = 0

    //get all distinct classnames 
    const promise4 = await new Promise((resolve, reject) => {
      let sqlQuery = `select distinct(class.title) as class from class `;
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
            message: 'No Classes Available',
          });
        }
        console.log(result);
        resolve(result);
      });
    });

    let clazz = await promise4
    async function checkallclasscart(classes) {
      let final = []
      console.log(classes)
      for (const clazz of classes) {

        let bb = await generatefeecartchecker(clazz.class)

        if (bb.length != 0) {
          final.push({ class: clazz.class, cart: bb })
        }

      };
      return final
    }
    let vv = await checkallclasscart(clazz)


    //break from here if unassigned fees caugthby abouve function
    if (vv.length != 0) return res.status(200).json({ success: 2, message: "Unassigned Fees Detected", data: vv });


    //get all student to be applied to
    const promise8 = await new Promise((resolve, reject) => {
      let sqlQuery = `select student_id from student where  student.isActive = 'true'; `;
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


    for (const stud of getstudent) {
      console.log(stud);

      const promise5 = await new Promise((resolve, reject) => {
        let sqlQuery = `select * from student where student_id = '${stud.student_id}'`;
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
      let student = await promise5;
      console.log(student);


      //check for assigned fee for chosen classes and get assigned fee
      const promise3 = await new Promise((resolve, reject) => {
        let sqlQuery = `select class, amount as amt , feename as name,scartegory as cart from assignfeecartegory where class = '${student[0].class}' and scartegory ='${student[0].cartegory}' `;
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


      //check preference and fee cart to set feepayable
      let assign = await AssignFeeByStudent(getassignedfee, student);
      console.log("assign is");
      console.log(assign);

      async function generateFee(id, info, assign) {


        let scholarship = info[0].scholarship;
        let value = assign;
        let bal = info[0].accountbalance;


        let amount = eval(
          parseFloat(bal) + parseFloat(value) - parseFloat(scholarship)
        );
        console.log("amount");
        console.log(amount);

        let sqlQuery6 = `update student set arrears = '${bal}', accountbalance ='${amount}',feegeneratecode  ='${code}', feegeneratedate = '${date}',feepayable = '${value}' where student_id = '${id}'`;

        const promise2 = await new Promise((resolve, reject) => {
          console.log(sqlQuery6)
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
            FeeGenerateLog(data)

          });
        });
      }

      //generate fee from values set
      generateFee(student[0].student_id, student, assign);

    }

    //  backup account data
    const promise5 = await new Promise((resolve, reject) => {
      let sqlQuery = `SHOW TABLES LIKE '${data.prev}'`;
      pool.query(sqlQuery, (error, result) => {
        if (error) {
          return res.status(500).json({
            success: 0,
            error: "internal server error",
            message: error,
          });
        }
        if (!result) {

        } else {

        }

      });
    });

    res
      .status(200)
      .json({ success: 1, message: "Fees Generated Successfully", data: clazz });


  },

  generatefeebystudent: async (req, res) => {
    const data = req.body;
    console.log(data);
    let code = hashgenerator(7)
    //get student data
    const promise5 = await new Promise((resolve, reject) => {
      let sqlQuery = `select * from student where student_id = '${data.id}'`;
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
    let student = await promise5;

    //check for assigned fee for chosen classes and get assigned fee
    const promise3 = await new Promise((resolve, reject) => {
      let sqlQuery = `select class, amount as amt , feename as name,scartegory as cart from assignfeecartegory where class = '${data.class}' and scartegory ='${data.cartegory}' `;
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
            success: 2, message: "Unassigned Fees Detected", data: [{ class: data.class, cart: data.cartegory }]

          });
        }
        console.log(result);
        resolve(result);
      });
    });
    let getassignedfee = promise3;


    //check preference and fee cart to set feepayable
    let assign = await AssignFeeByStudent(getassignedfee, student);
    console.log("assign is");
    console.log(assign);

    async function generateFee(id, info, assign) {


      let scholarship = info[0].scholarship;
      let value = assign;
      let bal = info[0].accountbalance;


      let amount = eval(
        parseFloat(bal) + parseFloat(value) - parseFloat(scholarship)
      );
      console.log("amount");
      console.log(amount);

      let sqlQuery6 = `update student set arrears = '${bal}', accountbalance ='${amount}',feegeneratecode  ='${code}', feegeneratedate = '${date}',feepayable = '${value}' where student_id = '${id}'`;

      const promise2 = await new Promise((resolve, reject) => {
        console.log(sqlQuery6)
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
          FeeGenerateLog(data)
          res
            .status(200)
            .json({ success: 7, message: "Fees Generated Successfully" });
        });
      });
    }

    //generate fee from values set
    generateFee(data.id, student, assign);

  },





  generatefeebyclass: async (req, res) => {
    const data = req.body;
    console.log(data.class);
    let code = 0
    // let bb = await generatefeecartchecker(data.class)

    async function checkallclasscart(classes) {
      let final = []
      console.log(classes)
      for (const clazz of classes) {

        let bb = await generatefeecartchecker(clazz)

        if (bb.length != 0) {
          final.push({ class: clazz, cart: bb })
        }

      };
      return final
    }
    let vv = await checkallclasscart(data.clazz)


    //break from here if unassigned fees caugthby abouve function
    if (vv.length != 0) return res.status(200).json({ success: 2, message: "Unassigned Fees Detected", data: vv });




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
        // if (result.length == 0) {
        //   return res.status(200).json({
        //     success: 2,
        //     data: [],
        //     // error: "internal server error",
        //     message: 'No Student In Class',
        //   });
        // }
        resolve(result);
      });
    });
    let getstudent = promise8;


    for (const stud of getstudent) {
      console.log(stud);

      const promise5 = await new Promise((resolve, reject) => {
        let sqlQuery = `select * from student where student_id = '${stud.student_id}'`;
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
      let student = await promise5;
      console.log(student);


      //check for assigned fee for chosen classes and get assigned fee
      const promise3 = await new Promise((resolve, reject) => {
        let sqlQuery = `select class, amount as amt , feename as name,scartegory as cart from assignfeecartegory where class = '${student[0].class}' and scartegory ='${student[0].cartegory}' `;
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
          // if (result.length == 0) {
          //   return res.status(200).json({
          //     success: 3,
          //     data: [],
          //     // error: "internal server error",
          //     message: "No Assigned Fee For Student's Class",
          //     val: vv
          //   });
          // }
          console.log(result);
          resolve(result);
        });
      });
      let getassignedfee = promise3;


      //check preference and fee cart to set feepayable
      let assign = await AssignFeeByStudent(getassignedfee, student);
      console.log("assign is");
      console.log(assign);

      async function generateFee(id, info, assign) {


        let scholarship = info[0].scholarship;
        let value = assign;
        let bal = info[0].accountbalance;


        let amount = eval(
          parseFloat(bal) + parseFloat(value) - parseFloat(scholarship)
        );
        console.log("amount");
        console.log(amount);

        let sqlQuery6 = `update student set arrears = '${bal}', accountbalance ='${amount}',feegeneratecode  ='${code}', feegeneratedate = '${date}',feepayable = '${value}' where student_id = '${id}'`;

        const promise2 = await new Promise((resolve, reject) => {
          console.log(sqlQuery6)
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
            FeeGenerateLog(data)

          });
        });
      }

      //generate fee from values set
      generateFee(student[0].student_id, student, assign);

    }

    res
      .status(200)
      .json({ success: 1, message: "Fees Generated Successfully", data: data.clazz });
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

    //get initial amount paid value for student
    const promise10 = await new Promise((resolve, reject) => {
      let sqlQuery = `select amountpaid as val from student where student_id ='${data.id}' `;
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
        resolve(result)


      })
    })
    console.log(promise10)
    console.log(data.amountpaid)

    let amountpaidforsession = await promise10[0].val

    //add with new payment value
    let val = eval(Number(amountpaidforsession) + Number(data.amountpaid))

    //update account balances
    const promise1 = await new Promise((resolve, reject) => {
      let sqlQuery = `update student set accountbalance ='${data.balanceafterpayment}' , amountpaid ='${val}' where student_id ='${data.id}' `;
      pool.query(sqlQuery, async (error, result) => {
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
          let recordpayment = await recordfeepayment(data)

          if (data.infotype == "All Sections") {
            let sqlQuery = `select * from student  where student.class = '${data.class}' `;
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
            let sqlQuery = `select * from student  where student.class = '${data.class}' and student.section = '${data.section}'`;
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

    let sqlQuery = `update student set preference ='${data.pref}' where student_id = '${data.id}'  `;
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
    let sqlQuery = `update student set accountbalance ='${data.reverseamount}' where student_id ='${data.id}' `;

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
    let sqlQuery = `update student  set accountbalance ='${data.amount}' where student_id='${data.id}'`;

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
