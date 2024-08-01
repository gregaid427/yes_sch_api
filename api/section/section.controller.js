

const pool = require("../../config/database.js");
// const logger = require("../../util/logger.js");

let date = new Date();
date = date.toUTCString();

module.exports = {
  createSection: async (req, res) => {
    const data = req.body;

    let date = Date.now();

    let sqlQuery = `insert into section (section_name,created_at,created_by) values
           ('${data.section_name}','${data.created_at}','${data.created_by}')`;
    pool.query(sqlQuery, (error, result) => {
      if (error) {
        // logger.info(
        //   `${req.method} ${req.originalUrl},'DB error:'${error.sqlMessage}, create new section`
        // );
        return res
          .status(500)
          .json({ success: 0, error: "internal server error" });
      }

      if (result.affectedRows == 1) {
        // logger.info(`${req.method} ${req.originalUrl}, create new section`);
      }
    });
  },


  getSectionById: (req, res) => {
    const id = parseInt(req.params.section_id);
    let sqlQuery = `select * from section where section_id = ${id}`;
    pool.query(sqlQuery, (error, result) => {
      if (error) {
        // logger.info(
        //   `${req.method} ${req.originalUrl},'DB error:'${error.sqlMessage}, fetch section by id`
        // );
        return res
          .status(500)
          .json({ success: 0, error: "internal server error" });
      }

      if (!result) {
        // logger.info(
        //   `${req.method} ${req.originalUrl}, fetch section by id: no record found`
        // );
        return res
          .status(200)
          .json({ success: 1, error: "fetch section by id: no record found" });
      }
      // logger.info(`${req.method} ${req.originalUrl}, fetch section by id`);
      res.status(200).json({ success: 1, data: result });
    });
  },

  getAllSection: (req, res) => {
    let sqlQuery = `select * from section`;
    pool.query(sqlQuery, (error, result) => {
      if (error) {
        // logger.info(
        //   `${req.method} ${req.originalUrl}, 'server error', fetch all section`
        // );

        return res
          .status(500)
          .json({ success: 0, error: "internal server error" });
      }

      // logger.info(
      //   `${req.method} ${req.originalUrl},'success', fetch all section`
      // );

      res.status(200).json({ success: 1, data: result });
    });
  },


  updateSection: (req, res) => {
    const data = req.body;

    let sqlQuery = `update section set section_name ='${data.section_name}',date='${data.date}',section_group='${data.section_group}',updated_at='${data.created_at}',updated_at='${data.updated_by}' where section_id = ${data.section_id}`;

    pool.query(sqlQuery, (error, result) => {
      if (error) {
        // logger.info(
        //   `${req.method} ${req.originalUrl},'DB error:'${error.sqlMessage}, update section data`
        // );
        return res
          .status(500)
          .json({ success: 0, error: "internal server error" });
      }

      if (result.affectedRows != 1) {
        // logger.info(
        //   `${req.method} ${req.originalUrl}, update section data: no record found`
        // );
        return res
          .status(200)
          .json({ success: 0, error: "update section data: no record found" });
      }

      if (result.affectedRows == 1) {
        // logger.info(`${req.method} ${req.originalUrl}, update section data`);
        return res
          .status(200)
          .json({ success: 1, error: "update section data success" });
      }
    });
  },



  updateSectionStatus: (req, res) => {

    let sqlQuery = `update section set section_status ='false'`;

    pool.query(sqlQuery, (error, result) => {
      if (error) {
        // logger.info(
        //   `${req.method} ${req.originalUrl},'DB error:'${error.sqlMessage}, update section data`
        // );
        return res
          .status(500)
          .json({ success: 0, error: "internal server error" });
      }

      if (result.affectedRows != 1) {
        // logger.info(
        //   `${req.method} ${req.originalUrl}, update section data: no record found`
        // );
        return res
          .status(200)
          .json({ success: 0, error: "update section data: no record found" });
      }

      if (result.affectedRows == 1) {
        // logger.info(`${req.method} ${req.originalUrl}, update section data`);
        return res
          .status(200)
          .json({ success: 1, error: "update section data success" });
      }
    });
  },
  truncateTable: (req, res) => {
    let sqlQuery = `truncate table section`;
    pool.query(sqlQuery, (error, result) => {
      if (error) {
        // logger.info(
        //   `${req.method} ${req.originalUrl},'DB error:'${error.sqlMessage}, delete all records`
        // );
        return res
          .status(500)
          .json({ success: 0, error: "internal server error" });
      }
      if (result.affectedRows == 1) {
        // logger.info(`${req.method} ${req.originalUrl}, delete all records`);
        return res.status(200).json({
          success: 1,
          message: "delete all record success",
        });
      }
    });
  },

  deleteAllSection: (req, res) => {
    const id = req.body;
    // let sqlQuery = `delete from section where userId = ${id.section_id}`;
    let sqlQuery = `delete from section`;

    pool.query(sqlQuery, (error, result) => {
      if (error) {
        // logger.info(
        //   `${req.method} ${req.originalUrl},'DB error:'${error.sqlMessage}, delete section by id`
        // );
        return res
          .status(500)
          .json({ success: 0, error: "internal server error" });
      }

      if (result.affectedRows != 1) {
        // logger.info(
        //   `${req.method} ${req.originalUrl}, delete section by  id: no section record found`
        // );
        return res
          .status(200)
          .json({
            success: 0,
            error: "delete section by id: no section record found",
          });
      }
      if (result.affectedRows == 1) {
        // logger.info(`${req.method} ${req.originalUrl}, delete section  by id`);
        return res.status(200).json({
          success: 1,
          message: "section deleted successfully",
        });
      }
    });
  },
};
