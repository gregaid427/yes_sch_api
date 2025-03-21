const pool = require("../../config/database.js");
// const logger = require("../../util/logger.js");
let date = new Date();
date = date.toUTCString();
var createHash = require("hash-generator");

module.exports = {
  createsession: async (req, res) => {
    const data = req.body;
    console.log("new called");
    let code = "session_" + createHash(9);
    // if(data.active == true){
    let sqlQuery1 = `update session set active ='false'`;
    let sqlQuery2 = `select count(id) from session'`;

    let query = data.active == true ? sqlQuery1 : sqlQuery2;

    try {
          pool.query(query, (error, result) => {
      // }

      let sqlQuery = `insert into session (sessionname,sessionaccountid,createdat,sessioncode,createdby,active,startmonth) values
           ('${data.sessionname}','${code}','${date}','${code}','${data.createdby}','${data.active}','${data.startmonth}')`;
      try {
          pool.query(sqlQuery, (error, result) => {
        if (error) {
          // logger.info(
          //   `${req.method} ${req.originalUrl},'DB error:'${error.sqlMessage}, create new session`
          // );
          return res.status(500).json({
            success: 0,
            error: "internal server error",
            message: error,
          });
        }

        if (result.affectedRows == 1) {
          let sqlQuery1 = `CREATE TABLE ${code}  (
       student_id varchar(40) DEFAULT NULL,
       amountpaid varchar(10) DEFAULT '0',
       firstName varchar(50) DEFAULT NULL,
       lastName varchar(50) DEFAULT NULL,
       otherName varchar(50) DEFAULT NULL,
       class varchar(50) DEFAULT NULL,
       arrears varchar(20) DEFAULT NULL,
       session varchar(50) DEFAULT NULL,
       activeaccountid varchar(20) DEFAULT '0',
       feepayable varchar(10) DEFAULT '0',
       preference varchar(80) DEFAULT '0',
       scholarship varchar(10) DEFAULT '0',
       accountbalance varchar(10) DEFAULT '0',
       date varchar(50) DEFAULT NULL,
       createdby varchar(10) DEFAULT '0'
       )`;
          try {
          pool.query(sqlQuery1, (error, result) => {
            // res.status(200).json({ success: 1, data: result });
          });
        }
        catch (error) {
        }

          let sqlQuery = `select * from session order by id desc limit 50`;
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
    });
  }
  catch (error) {
  }
  },

  getsessionById: (req, res) => {
    const id = parseInt(req.params.session_id);
    let sqlQuery = `select * from session where id = ${id}`;
    try {
          pool.query(sqlQuery, (error, result) => {
      if (error) {
        // logger.info(
        //   `${req.method} ${req.originalUrl},'DB error:'${error.sqlMessage}, fetch session by id`
        // );
        return res
          .status(500)
          .json({ success: 0, error: "internal server error", message: error });
      }

      if (!result) {
        // logger.info(
        //   `${req.method} ${req.originalUrl}, fetch session by id: no record found`
        // );
        return res
          .status(200)
          .json({ success: 1, error: "fetch session by id: no record found" });
      }
      // logger.info(`${req.method} ${req.originalUrl}, fetch session by id`);
      res.status(200).json({ success: 1, data: result });
    });
  }
  catch (error) {
  }
  },

  getAllsession: (req, res) => {
    let sqlQuery = `select * from session order by id desc limit 50`;
    try {
          pool.query(sqlQuery, (error, result) => {
      if (error) {
        // logger.info(
        //   `${req.method} ${req.originalUrl}, 'server error', fetch all session`
        // );

        return res
          .status(500)
          .json({ success: 0, error: "internal server error", message: error });
      }

      // logger.info(
      //   `${req.method} ${req.originalUrl},'success', fetch all session`
      // );

      res.status(200).json({ success: 1, data: result });
    });
  }
  catch (error) {
  }
  },

  getActivesession: (req, res) => {
    let sqlQuery = `select sessionname,activeaccountid  from session where active = 'true'`;
    try {
          pool.query(sqlQuery, (error, result) => {
      if (error) {
        // logger.info(
        //   `${req.method} ${req.originalUrl}, 'server error', fetch all session`
        // );

        return res
          .status(500)
          .json({ success: 0, error: "internal server error", message: error });
      }

      // logger.info(
      //   `${req.method} ${req.originalUrl},'success', fetch all session`
      // );

      res.status(200).json({ success: 1, data: result });
    });
  }
  catch (error) {
  }
  },

  updatesession: (req, res) => {
    const data = req.body;

    let sqlQuery = `update session set sessionname ='${data.sessionname}',createdat='${date}',createdby='${data.createdby}' where id = ${data.id}`;

    try {
          pool.query(sqlQuery, (error, result) => {
      if (error) {
        // logger.info(
        //   `${req.method} ${req.originalUrl},'DB error:'${error.sqlMessage}, update session data`
        // );
        return res
          .status(500)
          .json({ success: 0, error: "internal server error", message: error });
      }

      if (result.affectedRows != 1) {
        // logger.info(
        //   `${req.method} ${req.originalUrl}, update session data: no record found`
        // );
        return res
          .status(200)
          .json({ success: 0, error: "update session data: no record found" });
      }

      if (result.affectedRows == 1) {
        // logger.info(`${req.method} ${req.originalUrl}, update session data`);
        let sqlQuery = `select * from session`;
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

  updatesessionStatus: (req, res) => {
    let data = req.body;
    let sqlQuery = `update session set active ='false'`;
    console.log(data)
    try {
          pool.query(sqlQuery, (error, result) => {
      if (error) {
        // logger.info(
        //   `${req.method} ${req.originalUrl},'DB error:'${error.sqlMessage}, update session data`
        // );
        return res
          .status(500)
          .json({ success: 0, error: "internal server error", message: error });
      }

      if (result.affectedRows) {
        // logger.info(`${req.method} ${req.originalUrl}, update session data`);
        let sqlQuery = `update session set active ='true' , startmonth='${data.startmonth}' where sessionname = '${data.session}'`;
        try {
          pool.query(sqlQuery, (error, result) => {
          let sqlQuery = `select * from session`;
          try {
          pool.query(sqlQuery, (error, result) => {
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
  
      
      
    });
  }
  catch (error) {
  }
  },

  deleteAllsession: (req, res) => {
    const id = req.body;
    // let sqlQuery = `delete from session where userId = ${id.session_id}`;
    let sqlQuery = `delete from session`;

    try {
          pool.query(sqlQuery, (error, result) => {
      if (error) {
        // logger.info(
        //   `${req.method} ${req.originalUrl},'DB error:'${error.sqlMessage}, delete session by id`
        // );
        return res
          .status(500)
          .json({ success: 0, error: "internal server error", message: error });
      }

      if (result.affectedRows != 1) {
        // logger.info(
        //   `${req.method} ${req.originalUrl}, delete session by  id: no session record found`
        // );
        return res.status(200).json({
          success: 0,
          error: "delete session by id: no session record found",
        });
      }
      if (result.affectedRows == 1) {
        // logger.info(`${req.method} ${req.originalUrl}, delete session  by id`);
        return res.status(200).json({
          success: 1,
          message: "session deleted successfully",
        });
      }
    });
  }
  catch (error) {
  }
  },
  deleteSinglesession: (req, res) => {
    const data = req.body;
    console.log(data);
    // let sqlQuery = `delete from session where userId = ${id.session_id}`;
    let sqlQuery = `delete from session where id='${data.id}'`;

    try {
          pool.query(sqlQuery, (error, result) => {
      if (error) {
        // logger.info(
        //   `${req.method} ${req.originalUrl},'DB error:'${error.sqlMessage}, delete session by id`
        // );
        return res
          .status(500)
          .json({ success: 0, error: "internal server error", message: error });
      }

      if (result.affectedRows != 1) {
        // logger.info(
        //   `${req.method} ${req.originalUrl}, delete session by  id: no session record found`
        // );
        return res.status(200).json({
          success: 0,
          error: "delete session by id: no session record found",
        });
      }
      if (result.affectedRows == 1) {
        console.log('session deleted')
        let sqlQuery1 = `drop table ${data.code}`;
        try {
          pool.query(sqlQuery1, (error, result) => {
          if (error) console.log(error.sqlMessage);
          //  res.status(200).json({ success: 1, data: result });
          console.log('table dropped')

        });
      }
      catch (error) {
      }

        // logger.info(`${req.method} ${req.originalUrl}, delete session  by id`);
        let sqlQuery = `select * from session order by id desc limit 50`;
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
};
