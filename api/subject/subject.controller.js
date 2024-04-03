

const pool = require("../../config/database.js");
const logger = require("../../util/logger.js");
let date = Date.now();

module.exports = {
  createsubject: async (req, res) => {
    const data = req.body;


    let sqlQuery = `insert into subject (subject_name,subject_description,created_at,created_by) values
           ('${data.subject_name}','${data.subject_description}','${date}','${data.created_by}')`;
    pool.query(sqlQuery, (error, result) => {
      if (error) {
        logger.info(
          `${req.method} ${req.originalUrl},'DB error:'${error.sqlMessage}, create new subject`
        );
        return res
          .status(500)
          .json({ success: 0, error: "internal server error" });
      }

      if (result.affectedRows == 1) {
        logger.info(`${req.method} ${req.originalUrl}, create new  subject`);
      }
    });
  },


  getsubjectById: (req, res) => {
    const id = parseInt(req.params.subject_id);
    let sqlQuery = `select * from subject where subject_id = ${id}`;
    pool.query(sqlQuery, (error, result) => {
      if (error) {
        logger.info(
          `${req.method} ${req.originalUrl},'DB error:'${error.sqlMessage}, fetch subject by id`
        );
        return res
          .status(500)
          .json({ success: 0, error: "internal server error" });
      }

      if (!result) {
        logger.info(
          `${req.method} ${req.originalUrl}, fetch subject by id: no record found`
        );
        return res
          .status(200)
          .json({ success: 1, error: "fetch subject by id: no record found" });
      }
      logger.info(`${req.method} ${req.originalUrl}, fetch subject by id`);
      res.status(200).json({ success: 1, data: result });
    });
  },

  getAllSubject: (req, res) => {
    let sqlQuery = `select * from subject`;
    pool.query(sqlQuery, (error, result) => {
      if (error) {
        logger.info(
          `${req.method} ${req.originalUrl}, 'server error', fetch all subject`
        );

        return res
          .status(500)
          .json({ success: 0, error: "internal server error" });
      }

      logger.info(
        `${req.method} ${req.originalUrl},'success', fetch all subject`
      );

      res.status(200).json({ success: 1, data: result });
    });
  },


  updateSubject: (req, res) => {
    const data = req.body;

    let sqlQuery = `update subject set subject_name ='${data.subject_name}',subject_description='${data.subject_description}',updated_at='${date}',updated_by='${data.updated_by}' where subject_id = ${data.subject_id}`;

    pool.query(sqlQuery, (error, result) => {
      if (error) {
        logger.info(
          `${req.method} ${req.originalUrl},'DB error:'${error.sqlMessage}, update subject data`
        );
        return res
          .status(500)
          .json({ success: 0, error: "internal server error" });
      }

      if (result.affectedRows != 1) {
        logger.info(
          `${req.method} ${req.originalUrl}, update subject data: no record found`
        );
        return res
          .status(200)
          .json({ success: 0, error: "update subject data: no record found" });
      }

      if (result.affectedRows == 1) {
        logger.info(`${req.method} ${req.originalUrl}, update subject data`);
        return res
          .status(200)
          .json({ success: 1, error: "update subject data success" });
      }
    });
  },



  updateSubjectStatus: (req, res) => {

    let sqlQuery = `update subject set subject_status ='false'`;

    pool.query(sqlQuery, (error, result) => {
      if (error) {
        logger.info(
          `${req.method} ${req.originalUrl},'DB error:'${error.sqlMessage}, update subject data`
        );
        return res
          .status(500)
          .json({ success: 0, error: "internal server error" });
      }

      if (result.affectedRows != 1) {
        logger.info(
          `${req.method} ${req.originalUrl}, update subject data: no record found`
        );
        return res
          .status(200)
          .json({ success: 0, error: "update subject data: no record found" });
      }

      if (result.affectedRows == 1) {
        logger.info(`${req.method} ${req.originalUrl}, update subject data`);
        return res
          .status(200)
          .json({ success: 1, error: "update subject data success" });
      }
    });
  },


  deleteAllSubject: (req, res) => {
    const id = req.body;
    // let sqlQuery = `delete from subject where userId = ${id.subject_id}`;
    let sqlQuery = `delete from subject`;

    pool.query(sqlQuery, (error, result) => {
      if (error) {
        logger.info(
          `${req.method} ${req.originalUrl},'DB error:'${error.sqlMessage}, delete subject by id`
        );
        return res
          .status(500)
          .json({ success: 0, error: "internal server error" });
      }

      if (result.affectedRows != 1) {
        logger.info(
          `${req.method} ${req.originalUrl}, delete subject by  id: no subject record found`
        );
        return res
          .status(200)
          .json({
            success: 0,
            error: "delete subject by id: no subject record found",
          });
      }
      if (result.affectedRows == 1) {
        logger.info(`${req.method} ${req.originalUrl}, delete subject  by id`);
        return res.status(200).json({
          success: 1,
          message: "subject deleted successfully",
        });
      }
    });
  },
};
