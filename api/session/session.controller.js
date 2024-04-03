

const pool = require("../../config/database.js");
const logger = require("../../util/logger.js");

module.exports = {
  createsession: async (req, res) => {
    const data = req.body;

    let date = Date.now();

    let sqlQuery = `insert into session (session_name,created_at,created_by) values
           ('${data.session_name}','${data.created_at}','${data.created_by}')`;
    pool.query(sqlQuery, (error, result) => {
      if (error) {
        logger.info(
          `${req.method} ${req.originalUrl},'DB error:'${error.sqlMessage}, create new session`
        );
        return res
          .status(500)
          .json({ success: 0, error: "internal server error" });
      }

      if (result.affectedRows == 1) {
        logger.info(`${req.method} ${req.originalUrl}, create new session`);
      }
    });
  },


  getsessionById: (req, res) => {
    const id = parseInt(req.params.session_id);
    let sqlQuery = `select * from session where session_id = ${id}`;
    pool.query(sqlQuery, (error, result) => {
      if (error) {
        logger.info(
          `${req.method} ${req.originalUrl},'DB error:'${error.sqlMessage}, fetch session by id`
        );
        return res
          .status(500)
          .json({ success: 0, error: "internal server error" });
      }

      if (!result) {
        logger.info(
          `${req.method} ${req.originalUrl}, fetch session by id: no record found`
        );
        return res
          .status(200)
          .json({ success: 1, error: "fetch session by id: no record found" });
      }
      logger.info(`${req.method} ${req.originalUrl}, fetch session by id`);
      res.status(200).json({ success: 1, data: result });
    });
  },

  getAllsession: (req, res) => {
    let sqlQuery = `select * from session`;
    pool.query(sqlQuery, (error, result) => {
      if (error) {
        logger.info(
          `${req.method} ${req.originalUrl}, 'server error', fetch all session`
        );

        return res
          .status(500)
          .json({ success: 0, error: "internal server error" });
      }

      logger.info(
        `${req.method} ${req.originalUrl},'success', fetch all session`
      );

      res.status(200).json({ success: 1, data: result });
    });
  },


  updatesession: (req, res) => {
    const data = req.body;

    let sqlQuery = `update session set session_name ='${data.session_name}',date='${data.date}',session_group='${data.session_group}',updated_at='${data.created_at}',updated_at='${data.updated_by}' where session_id = ${data.session_id}`;

    pool.query(sqlQuery, (error, result) => {
      if (error) {
        logger.info(
          `${req.method} ${req.originalUrl},'DB error:'${error.sqlMessage}, update session data`
        );
        return res
          .status(500)
          .json({ success: 0, error: "internal server error" });
      }

      if (result.affectedRows != 1) {
        logger.info(
          `${req.method} ${req.originalUrl}, update session data: no record found`
        );
        return res
          .status(200)
          .json({ success: 0, error: "update session data: no record found" });
      }

      if (result.affectedRows == 1) {
        logger.info(`${req.method} ${req.originalUrl}, update session data`);
        return res
          .status(200)
          .json({ success: 1, error: "update session data success" });
      }
    });
  },



  updatesessionStatus: (req, res) => {

    let sqlQuery = `update session set session_status ='false'`;

    pool.query(sqlQuery, (error, result) => {
      if (error) {
        logger.info(
          `${req.method} ${req.originalUrl},'DB error:'${error.sqlMessage}, update session data`
        );
        return res
          .status(500)
          .json({ success: 0, error: "internal server error" });
      }

      if (result.affectedRows != 1) {
        logger.info(
          `${req.method} ${req.originalUrl}, update session data: no record found`
        );
        return res
          .status(200)
          .json({ success: 0, error: "update session data: no record found" });
      }

      if (result.affectedRows == 1) {
        logger.info(`${req.method} ${req.originalUrl}, update session data`);
        return res
          .status(200)
          .json({ success: 1, error: "update session data success" });
      }
    });
  },


  deleteAllsession: (req, res) => {
    const id = req.body;
    // let sqlQuery = `delete from session where userId = ${id.session_id}`;
    let sqlQuery = `delete from session`;

    pool.query(sqlQuery, (error, result) => {
      if (error) {
        logger.info(
          `${req.method} ${req.originalUrl},'DB error:'${error.sqlMessage}, delete session by id`
        );
        return res
          .status(500)
          .json({ success: 0, error: "internal server error" });
      }

      if (result.affectedRows != 1) {
        logger.info(
          `${req.method} ${req.originalUrl}, delete session by  id: no session record found`
        );
        return res
          .status(200)
          .json({
            success: 0,
            error: "delete session by id: no session record found",
          });
      }
      if (result.affectedRows == 1) {
        logger.info(`${req.method} ${req.originalUrl}, delete session  by id`);
        return res.status(200).json({
          success: 1,
          message: "session deleted successfully",
        });
      }
    });
  },
};
