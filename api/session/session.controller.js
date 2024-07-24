

const pool = require("../../config/database.js");
// const logger = require("../../util/logger.js");

module.exports = {
  createsession: async (req, res) => {
    const data = req.body;

    let date = new Date();

  // if(data.active == true){
    let sqlQuery1 = `update session set active ='false'`;
    let sqlQuery2 = `select count(id) from session'`;

    let query = data.active == true ? sqlQuery1 : sqlQuery2 

    pool.query(query, (error, result) => {
  // }



    let sqlQuery = `insert into session (sessionname,createdat,createdby,active,startmonth) values
           ('${data.sessionname}','${date}','${data.createdby}','${data.active}','${data.startmonth}')`;
    pool.query(sqlQuery, (error, result) => {
      if (error) {
        // logger.info(
        //   `${req.method} ${req.originalUrl},'DB error:'${error.sqlMessage}, create new session`
        // );
        return res
          .status(500)
          .json({ success: 0, error: "internal server error" });
      }

      if (result.affectedRows == 1) {
        let sqlQuery = `select * from session`;
        pool.query(sqlQuery, (error, result) => {
       
          res.status(200).json({ success: 1, data: result });
        });  
          }
    }); 
  }
);
  },


  getsessionById: (req, res) => {
    const id = parseInt(req.params.session_id);
    let sqlQuery = `select * from session where id = ${id}`;
    pool.query(sqlQuery, (error, result) => {
      if (error) {
        // logger.info(
        //   `${req.method} ${req.originalUrl},'DB error:'${error.sqlMessage}, fetch session by id`
        // );
        return res
          .status(500)
          .json({ success: 0, error: "internal server error" });
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
  },

  getAllsession: (req, res) => {
    let sqlQuery = `select * from session`;
    pool.query(sqlQuery, (error, result) => {
      if (error) {
        // logger.info(
        //   `${req.method} ${req.originalUrl}, 'server error', fetch all session`
        // );

        return res
          .status(500)
          .json({ success: 0, error: "internal server error" });
      }

      // logger.info(
      //   `${req.method} ${req.originalUrl},'success', fetch all session`
      // );

      res.status(200).json({ success: 1, data: result });
    });
  },


  updatesession: (req, res) => {
    const data = req.body;

    let sqlQuery = `update session set sessionname ='${data.sessionname}',createdat='${date}',createdby='${data.createdby}' where id = ${data.id}`;

    pool.query(sqlQuery, (error, result) => {
      if (error) {
        // logger.info(
        //   `${req.method} ${req.originalUrl},'DB error:'${error.sqlMessage}, update session data`
        // );
        return res
          .status(500)
          .json({ success: 0, error: "internal server error" });
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
        pool.query(sqlQuery, (error, result) => {
       
          res.status(200).json({ success: 1, data: result });
        });  
      }
    });
  },



  updatesessionStatus: (req, res) => {
         id =  req.params.id 

    let sqlQuery = `update session set active ='false'`;

    pool.query(sqlQuery, (error, result) => {
      if (error) {
        // logger.info(
        //   `${req.method} ${req.originalUrl},'DB error:'${error.sqlMessage}, update session data`
        // );
        return res
          .status(500)
          .json({ success: 0, error: "internal server error" });
      }


      if (result.affectedRows ) {
        // logger.info(`${req.method} ${req.originalUrl}, update session data`);
        let sqlQuery = `update session set active ='true' where id = '${id}'`;
        pool.query(sqlQuery, (error, result) => {
       
          let sqlQuery = `select * from session`;
          pool.query(sqlQuery, (error, result) => {
         
            res.status(200).json({ success: 1, data: result });
          });          });  
  }});
  },


  deleteAllsession: (req, res) => {
    const id = req.body;
    // let sqlQuery = `delete from session where userId = ${id.session_id}`;
    let sqlQuery = `delete from session`;

    pool.query(sqlQuery, (error, result) => {
      if (error) {
        // logger.info(
        //   `${req.method} ${req.originalUrl},'DB error:'${error.sqlMessage}, delete session by id`
        // );
        return res
          .status(500)
          .json({ success: 0, error: "internal server error" });
      }

      if (result.affectedRows != 1) {
        // logger.info(
        //   `${req.method} ${req.originalUrl}, delete session by  id: no session record found`
        // );
        return res
          .status(200)
          .json({
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
  },
  deleteSinglesession: (req, res) => {
    const id = req.params.id;
    // let sqlQuery = `delete from session where userId = ${id.session_id}`;
    let sqlQuery = `delete from session where id='${id}'`;

    pool.query(sqlQuery, (error, result) => {
      if (error) {
        // logger.info(
        //   `${req.method} ${req.originalUrl},'DB error:'${error.sqlMessage}, delete session by id`
        // );
        return res
          .status(500)
          .json({ success: 0, error: "internal server error" });
      }

      if (result.affectedRows != 1) {
        // logger.info(
        //   `${req.method} ${req.originalUrl}, delete session by  id: no session record found`
        // );
        return res
          .status(200)
          .json({
            success: 0,
            error: "delete session by id: no session record found",
          });
      }
      if (result.affectedRows == 1) {
        // logger.info(`${req.method} ${req.originalUrl}, delete session  by id`);
        let sqlQuery = `select * from session`;
        pool.query(sqlQuery, (error, result) => {
       
          res.status(200).json({ success: 1, data: result });
        });          
      }
    });
  },
};
