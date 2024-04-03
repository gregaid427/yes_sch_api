const {
  createtransaction,
  gettransactionsByUserId,
  getTransactionByTransid,
  updateLinkedAccount,
  updateStatus,
  getalltransactions,
  deletelinkedaccount,
} = require("./transactions.service");
const { hashSync, genSaltSync, compareSync } = require("bcrypt");
const { sign } = require("jsonwebtoken");

module.exports = {
  createtransaction: (req, res) => {
    const body = req.body;

    createtransaction(body, (err, results) => {
      if (err) {
        console.log(err);
        return res.status(500).json({
          success: 0,
          message: "Database connection error",
        });
      }
      return res.status(200).json({
        success: 1,
        data: results,
      });
    });
  },
  getProjectById: (req, res) => {
    const id = req.params.id;
    getProjectById(id, (err, results) => {
      if (err) {
        console.log(err);
        return;
      }
      if (!results) {
        return res.json({
          success: 0,
          message: "Record not Found",
        });
      }
      results.password = undefined;
      return res.json({
        success: 1,
        data: results,
      });
    });
  },

  getalltransactions: (req, res) => {
    getalltransactions((err, results) => {
      if (err) {
        console.log(err);
        return;
      }
      return res.json({
        success: 1,
        data: results,
      });
    });
  },

  gettransactionsByUserId: (req, res) => {
    const id = req.params.id;
    console.log("id");
    gettransactionsByUserId(id, (err, results) => {
      if (err) {
        console.log(err);
        return;
      }
      if (!results) {
        return res.json({
          success: 0,
          message: "Record not Found",
        });
      }
      results.password = undefined;
      return res.json({
        success: 1,
        data: results,
      });
    });
  },

  getTransactionByTransid: (req, res) => {
    const id = req.params.id;

    getTransactionByTransid(id, (err, results) => {
      if (err) {
        console.log(err);
        return;
      }
      if (!results) {
        return res.json({
          success: 0,
          message: "Record not Found",
        });
      }
      results.password = undefined;
      return res.json({
        success: 1,
        data: results,
      });
    });
  },
  updateLinkedAccount: (req, res) => {
    const body = req.params.id;
    updateLinkedAccount(body, (err, results) => {
      if (err) {
        console.log(err);
        return;
      }
      return res.json({
        success: 1,
        message: "updated successfully",
      });
    });
  },
  updateStatus: (req, res) => {
    const body = req.params;
    updateStatus(body.id, (err, results) => {
      if (err) {
        console.log(err);
        return;
      }
      return res.json({
        success: 1,
        message: "updated successfully",
      });
    });
  },
  deletelinkedaccount: (req, res) => {
    const data = req.body;
    deletelinkedaccount(data.trans_id, (err, results) => {
      console.log(results);
      if (err) {
        console.log(err);
        return;
      }
      if (!results) {
        return res.json({
          success: 0,
          message: "Record Not Found",
        });
      }
      return res.json({
        success: 1,
        message: "Deleted successfully",
      });
    });
  },
};
