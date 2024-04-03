const pool = require("../../config/database");

module.exports = {
  createtransaction: (data, callBack) => {
    pool.query(
      `insert into transactions( transactionType, scanId, userId,amount,approved) 
                values(?,?,?,?,'false')`,
      [
        data.transactionType,
        data.scanId,
        data.userId  ,
        data.amount     
   
      ],
      (error, results, fields) => {
        if (error) {
          callBack(error);
        }
        return callBack(null, results);
      }
    );
  },
  // getUserByUserEmail: (email, callBack) => {
  //   pool.query(
  //     `select * from project where email = ?`,
  //     [email],
  //     (error, results, fields) => {
  //       if (error) {
  //         callBack(error);
  //       }
  //       return callBack(null, results[0]);
  //     }
  //   );
  // },
  gettransactionsByUserId: (id, callBack) => {
    pool.query(
      `select * from scannedcheque left join linkedaccounts on scannedcheque.accountid = linkedaccounts.accountid where scannedcheque.userId = ?`,
      [id],
      (error, results, fields) => {
        if (error) {
          callBack(error);
        }
        return callBack(null, results);
      }
    );
  },
  
  getTransactionByTransid: (id, callBack) => {
    pool.query(
      `select * from transactions where userId = ?`,
      [id],
      (error, results, fields) => {
        if (error) {
          callBack(error);
        }
        return callBack(null, results);
      }
    );
  },
  getalltransactions: callBack => {
    pool.query(
      `SELECT * FROM transactions LEFT JOIN linkedaccounts ON transactions.userId = linkedaccounts.userId `,
      [],
      (error, results, fields) => {
        if (error) {
          callBack(error);
        }
        return callBack(null, results);
      }
    );
  },
  getLinkedAccountByUserId: callBack => {
    pool.query(
      `select * from linkedaccounts where userId = ?`,
      [data.userId],
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
      `update linkedaccounts set accountsType = ?, accountNumber = ?, accountName = ?, accountStatus = ?, where accountid = ?`,
      [
        data.accountsType,
        data.accountNumber,
        data.accountName,
        data.accountStatus,
        data.accountid
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
      `update transactions set approved='True' where trans_id = ?`,
      [
        data
      ],
      (error, results, fields) => {
        console.log(data)
        if (error) {
          callBack(error);
        }
        return callBack(null, results);
      }
    );
  },
  deletelinkedaccount: (data, callBack) => {
    pool.query(
      `delete from transactions where trans_id = ?`,
      [data],
      (error, results, fields) => {
        console.log(data)
        if (error) {
          callBack(error);
        }
        return callBack(null, results);
      }
    );
  }
};
