const pool = require("../../config/database.js");
const logger = require("../../util/logger.js");

module.exports = {
  createExpense: async (req, res) => {
    const data = req.body;

    let date = new Date();

    let sqlQuery = `insert into expense (name,date,expensehead,createdby,invoice,description,amount) values
           ('${data.name}','${data.date}','${data.expensehead}','${data.createdby}','${data.invoice}','${data.description}','${data.amount}')`;
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
        res.status(200).json({ success: 1, data: result });
      }
    });
  },
  createExpenseHead: async (req, res) => {
    const data = req.body;

    let date = Date.now();

    let sqlQuery = `insert into expensehead (expensehead,createdat,createdby,notes) values
           ('${data.expensehead}','${data}','${data.createdby}','${data.note}')`;
    pool.query(sqlQuery, (error, result) => {
      if (error) {
        logger.info(
          `${req.method} ${req.originalUrl},'DB error:'${error.sqlMessage}, create new expenseHead`
        );
        return res
          .status(500)
          .json({ success: 0, error: "internal server error" });
      }

      if (result.affectedRows == 1) {
        logger.info(
          `${req.method} ${req.originalUrl}, create new  expense Head`
        );
        res.status(200).json({ success: 1, data: result });
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
        return res.status(200).json({ success: 1, message: "Success" });
      }
      logger.info(`${req.method} ${req.originalUrl}, fetch expense by id`);
      res.status(200).json({ success: 1, data: result });
    });
  },

  getcustomexpense: (req, res) => {
    const data = req.body;
    let date = data.date;
    console.log(date);
     function getparams(date) {
      if (date == "Today") {
        return `select * from expense where createdat = CURDATE()`;
      }
      if (date == "This Month") {
        return `select * from expense where MONTH(createdat)=MONTH(now())
        and YEAR(createdat)=YEAR(now());`;
      }
      if (date == "Last Month") {
        return `select * from expense where  month(createdat) = month(NOW() - INTERVAL 1 MONTH);`;
      }
      if (date == "Last Six Month") {
        return `select * from expense where createdat >= date_sub(now(),interval 6 month);`;
      }
      if (date == "This Year") {
        return `select * from expense where YEAR(createdat) = YEAR(CURDATE()).`;
      }
      if (date == "Last year") {
        return `select * from expense where YEAR(createdat) = YEAR(NOW())- 1`;
      }
      if (date == "All Records") {
        return `select * from expense `;
      }
    }
    pool.query(getparams(date), (error, result) => {
      if (error) {
        logger.info(
          `${req.method} ${error}, 'server error', fetch custom expense`
        );

        return res
          .status(500)
          .json({ success: 0, error: "internal server error" });
      }

      logger.info(
        `${req.method} ${req.originalUrl},'success', fetch custom expense`
      );

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

  getallexpensehead: (req, res) => {
    let sqlQuery = `select * from expensehead`;
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
        return res.status(200).json({
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
