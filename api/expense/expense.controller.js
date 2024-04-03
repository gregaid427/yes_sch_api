

const pool = require("../../config/database.js");
const logger = require("../../util/logger.js");

module.exports = {
  createExpense: async (req, res) => {
    const data = req.body;

    let date = Date.now();

    let sqlQuery = `insert into expense (expense_name,date,expense_group,created_at,created_by,invoice_number) values
           ('${data.expense_name}','${data.expense_group}','${data.created_at}','${data.created_by}','${data.invoice_number}')`;
    pool.query(sqlQuery, (error, result) => {
      if (error) {
        logger.info(
          `${req.method} ${req.originalUrl},'DB error:'${error.sqlMessage}, create new expense`
        );
        return res
          .status(500)
          .json({ success: 0, error: "internal server error" });
      }

      if (result.affectedRows == 1) {
        logger.info(`${req.method} ${req.originalUrl}, create new  expense`);
      }
    });
  },


  getExpenseById: (req, res) => {
    const id = parseInt(req.params.expense_id);
    let sqlQuery = `select * from expense where expense_id = ${id}`;
    pool.query(sqlQuery, (error, result) => {
      if (error) {
        logger.info(
          `${req.method} ${req.originalUrl},'DB error:'${error.sqlMessage}, fetch expense by id`
        );
        return res
          .status(500)
          .json({ success: 0, error: "internal server error" });
      }

      if (!result) {
        logger.info(
          `${req.method} ${req.originalUrl}, fetch expense by id: no record found`
        );
        return res
          .status(200)
          .json({ success: 1, error: "fetch expense by id: no record found" });
      }
      logger.info(`${req.method} ${req.originalUrl}, fetch expense by id`);
      res.status(200).json({ success: 1, data: result });
    });
  },

  getallexpense: (req, res) => {
    let sqlQuery = `select * from expense`;
    pool.query(sqlQuery, (error, result) => {
      if (error) {
        logger.info(
          `${req.method} ${req.originalUrl}, 'server error', fetch all expense`
        );

        return res
          .status(500)
          .json({ success: 0, error: "internal server error" });
      }

      logger.info(
        `${req.method} ${req.originalUrl},'success', fetch all expense`
      );

      res.status(200).json({ success: 1, data: result });
    });
  },


  updateExpense: (req, res) => {
    const data = req.body;

    let sqlQuery = `update expense set expense_name ='${data.expense_name}',date='${data.date}',expense_group='${data.expense_group}',updated_at='${data.created_at}',updated_at='${data.updated_by}' where expense_id = ${data.expense_id}`;

    pool.query(sqlQuery, (error, result) => {
      if (error) {
        logger.info(
          `${req.method} ${req.originalUrl},'DB error:'${error.sqlMessage}, update expense data`
        );
        return res
          .status(500)
          .json({ success: 0, error: "internal server error" });
      }

      if (result.affectedRows != 1) {
        logger.info(
          `${req.method} ${req.originalUrl}, update expense data: no record found`
        );
        return res
          .status(200)
          .json({ success: 0, error: "update expense data: no record found" });
      }

      if (result.affectedRows == 1) {
        logger.info(`${req.method} ${req.originalUrl}, update expense data`);
        return res
          .status(200)
          .json({ success: 1, error: "update expense data success" });
      }
    });
  },



  updateExpensestatus: (req, res) => {

    let sqlQuery = `update expense set expense_status ='false'`;

    pool.query(sqlQuery, (error, result) => {
      if (error) {
        logger.info(
          `${req.method} ${req.originalUrl},'DB error:'${error.sqlMessage}, update expense data`
        );
        return res
          .status(500)
          .json({ success: 0, error: "internal server error" });
      }

      if (result.affectedRows != 1) {
        logger.info(
          `${req.method} ${req.originalUrl}, update expense data: no record found`
        );
        return res
          .status(200)
          .json({ success: 0, error: "update expense data: no record found" });
      }

      if (result.affectedRows == 1) {
        logger.info(`${req.method} ${req.originalUrl}, update expense data`);
        return res
          .status(200)
          .json({ success: 1, error: "update expense data success" });
      }
    });
  },


  deleteallexpense: (req, res) => {
    const id = req.body;
    // let sqlQuery = `delete from expense where userId = ${id.expense_id}`;
    let sqlQuery = `delete from expense`;

    pool.query(sqlQuery, (error, result) => {
      if (error) {
        logger.info(
          `${req.method} ${req.originalUrl},'DB error:'${error.sqlMessage}, delete expense by id`
        );
        return res
          .status(500)
          .json({ success: 0, error: "internal server error" });
      }

      if (result.affectedRows != 1) {
        logger.info(
          `${req.method} ${req.originalUrl}, delete expense by  id: no expense record found`
        );
        return res
          .status(200)
          .json({
            success: 0,
            error: "delete expense by id: no expense record found",
          });
      }
      if (result.affectedRows == 1) {
        logger.info(`${req.method} ${req.originalUrl}, delete expense  by id`);
        return res.status(200).json({
          success: 1,
          message: "expense deleted successfully",
        });
      }
    });
  },
};
