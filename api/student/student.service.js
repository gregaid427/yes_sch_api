const pool = require("../../config/database");
const crypto = require("crypto")
const bcrypt = require("bcrypt");
var createHash = require("hash-generator");



module.exports = {
  create: (data, callBack) => {
    var hash1 = createHash(7);
    var hash2 = createHash(7);
   

    pool.query(
     `insert into users (email,userId,firstname,lastname,otherName,contact,dob,ghCardNumber,token,sex,createdAt,verified,otp,password) values (?,?,?,?,?,?,?,?,?,?,?,'false',?,?)`,
                  [data.email,hash1,data.firstname,data.lastname,data.othername,data.contact,data.dob,data.ghCardNumber,hash2,data.sex,data.createdAt,data.pin,data.password],
      (error, results, fields) => {
        if (error) {
          callBack(error);
        }
        return callBack(null, results);
        
      }
    );
  },
  getUserroles: (email, callBack) => {
    pool.query(
      `select * from userroles where email = ?`,
      [email],
      (error, results, fields) => {
        if (error) {
          callBack(error);
        }
        return callBack(null, results);
      }
    );
  },
  getUserByUserEmail: (email, callBack) => {
    pool.query(
      `select * from users where email = ?`,
      [email],
      (error, results, fields) => {
        //console.log(email)
        if (error) {
          callBack(error);
        }
        console.log(results);
        // if(results == undefined){
        //   return callBack(null, results);
        // }
        //console.log(results[0])
        return callBack(null, results[0]);
      }
    );
  },
  getUserrolesByUserEmail: (email, callBack) => {
    pool.query(
      `SELECT * FROM users  WHERE users.email =?`,
      [email],
      (error, results, fields) => {
        if (error) {
          callBack(error);
        }
        return callBack(null, results);
      }
    );
  },
  checkUserEmailExist: (email, callBack) => {
    pool.query(
      `select email from users where email = ?  `,
      [email],
      (error, results, fields) => {
        if (error) {
          callBack(error);
        }
        return callBack(null, results[0]);
      }
    );
  },
  getUserByUserId: (userId, callBack) => {
    pool.query(
      `select * from users where userId =  ? `,
      [userId],

      (error, results, fields) => {
        if (error) {
          callBack(error);
        }
//console.log(results[0])
        return callBack(null, results[0]);
      }
    );
  },
  getUsers: callBack => {
    pool.query(
      `select * from users`,
      [],
      (error, results, fields) => {
        if (error) {
          callBack(error);
        }
        return callBack(null, results);
      }
    );
  },
  getOTPpin: (userId, callBack)=> {
    pool.query(
      `select pin from users where userId =  ?`,
      [userId],
      (error, results, fields) => {
        if (error) {
          callBack(error);
        }
        return callBack(null, results);
      }
    );
  },
  
  resetPin: (data, callBack) => {
    pool.query(
      `update users set otp=? where userId = ?`,
      [      
        data.pin,
        data.userId
      ],
      (error, results, fields) => {
        if (error) {
          callBack(error);
        }
        return callBack(null, results);
      }
    );
  },
  updatePin: (data, callBack) => {
    pool.query(
      `update users set verified = 'true' where userId = ?`,
      [      
        data.userId
      ],
      (error, results, fields) => {
        if (error) {
          callBack(error);
        }
        return callBack(null, results);
      }
    );
  },
  updateLinkedAccount: (data, callBack) => {
    pool.query(
      `update linkedaccounts set accountType = ?,accountName = ?,accountNumber = ?, where userId = ?`,
      [
        data.accountType,
        data.accountName,
        data.accountNumber,
        data.userId,

      
      ],
      (error, results, fields) => {
        if (error) {
          callBack(error);
        }
        return callBack(null, results);
      }
    );
  },
  updatePassword: (data, callBack) => {
    pool.query(
      `update users set password=? where email = ?`,
      [
       
        data.password,
        data.email
      ],
      (error, results, fields) => {
        if (error) {
          callBack(error);
        }
        return callBack(null, results);
      }
    );
  },
  updateStatus: (data, callBack) => {
    pool.query(
      `update users set verified='True' where email = ?`,
      [
        data.email
      ],
      (error, results, fields) => {
        if (error) {
          callBack(error);
        }
        return callBack(null, results);
      }
    );
  },
  deleteUser: (data, callBack) => {
    pool.query(
      `delete from users where userId = ?`,
      [data],
      (error, results, fields) => {
        if (error) {
          callBack(error);
        }
        return callBack(null, results[0]);
      }
    );
  }
};
