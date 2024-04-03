

const pool = require("../../config/database.js");
const logger = require("../../util/logger.js");

module.exports = {
  createFeeType: async (req, res) => {
    const data = req.body;

    let date = Date.now();

    let sqlQuery = `insert into feeType (feeType_name,feeType_description,feeType_group,created_at,created_by) values
           ('${data.feeType_name}','${data.feeType_description}','${data.feeType_group}','${data.created_at}','${data.created_by}')`;
    pool.query(sqlQuery, (error, result) => {
      if (error) {
        logger.info(
          `${req.method} ${req.originalUrl},'DB error:'${error.sqlMessage}, create new feeType`
        );
        return res
          .status(500)
          .json({ success: 0, error: "internal server error" });
      }

      if (result.affectedRows == 1) {
        logger.info(`${req.method} ${req.originalUrl}, create new  feeType`);
      }
    });
  },


  getFeeTypeById: (req, res) => {
    const id = parseInt(req.params.feeType_id);
    let sqlQuery = `select * from feeType where feeType_id = ${id}`;
    pool.query(sqlQuery, (error, result) => {
      if (error) {
        logger.info(
          `${req.method} ${req.originalUrl},'DB error:'${error.sqlMessage}, fetch feeType by id`
        );
        return res
          .status(500)
          .json({ success: 0, error: "internal server error" });
      }

      if (!result) {
        logger.info(
          `${req.method} ${req.originalUrl}, fetch feeType by id: no record found`
        );
        return res
          .status(200)
          .json({ success: 1, error: "fetch feeType by id: no record found" });
      }
      logger.info(`${req.method} ${req.originalUrl}, fetch feeType by id`);
      res.status(200).json({ success: 1, data: result });
    });
  },

  getAllFeeType: (req, res) => {
    let sqlQuery = `select * from feeType`;
    pool.query(sqlQuery, (error, result) => {
      if (error) {
        logger.info(
          `${req.method} ${req.originalUrl}, 'server error', fetch all feeType`
        );

        return res
          .status(500)
          .json({ success: 0, error: "internal server error" });
      }

      logger.info(
        `${req.method} ${req.originalUrl},'success', fetch all feeType`
      );

      res.status(200).json({ success: 1, data: result });
    });
  },


  updateFeeType: (req, res) => {
    const data = req.body;

    let sqlQuery = `update feeType set feeType_name ='${data.feeType_name}',date='${data.date}',feeType_description='${data.feeType_description}',updated_at='${data.created_at}',updated_at='${data.updated_by}' where feeType_id = ${data.feeType_id}`;

    pool.query(sqlQuery, (error, result) => {
      if (error) {
        logger.info(
          `${req.method} ${req.originalUrl},'DB error:'${error.sqlMessage}, update feeType data`
        );
        return res
          .status(500)
          .json({ success: 0, error: "internal server error" });
      }

      if (result.affectedRows != 1) {
        logger.info(
          `${req.method} ${req.originalUrl}, update feeType data: no record found`
        );
        return res
          .status(200)
          .json({ success: 0, error: "update feeType data: no record found" });
      }

      if (result.affectedRows == 1) {
        logger.info(`${req.method} ${req.originalUrl}, update feeType data`);
        return res
          .status(200)
          .json({ success: 1, error: "update feeType data success" });
      }
    });
  },



  updateFeeTypeStatus: (req, res) => {

    let sqlQuery = `update feeType set feeType_status ='false'`;

    pool.query(sqlQuery, (error, result) => {
      if (error) {
        logger.info(
          `${req.method} ${req.originalUrl},'DB error:'${error.sqlMessage}, update feeType data`
        );
        return res
          .status(500)
          .json({ success: 0, error: "internal server error" });
      }

      if (result.affectedRows != 1) {
        logger.info(
          `${req.method} ${req.originalUrl}, update feeType data: no record found`
        );
        return res
          .status(200)
          .json({ success: 0, error: "update feeType data: no record found" });
      }

      if (result.affectedRows == 1) {
        logger.info(`${req.method} ${req.originalUrl}, update feeType data`);
        return res
          .status(200)
          .json({ success: 1, error: "update feeType data success" });
      }
    });
  },


  deleteAllFeeType: (req, res) => {
    const id = req.body;
    // let sqlQuery = `delete from feeType where userId = ${id.feeType_id}`;
    let sqlQuery = `delete from feeType`;

    pool.query(sqlQuery, (error, result) => {
      if (error) {
        logger.info(
          `${req.method} ${req.originalUrl},'DB error:'${error.sqlMessage}, delete feeType by id`
        );
        return res
          .status(500)
          .json({ success: 0, error: "internal server error" });
      }

      if (result.affectedRows != 1) {
        logger.info(
          `${req.method} ${req.originalUrl}, delete feeType by  id: no feeType record found`
        );
        return res
          .status(200)
          .json({
            success: 0,
            error: "delete feeType by id: no feeType record found",
          });
      }
      if (result.affectedRows == 1) {
        logger.info(`${req.method} ${req.originalUrl}, delete feeType  by id`);
        return res.status(200).json({
          success: 1,
          message: "feeType deleted successfully",
        });
      }
    });
  },
};
