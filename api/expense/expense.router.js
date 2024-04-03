const router = require("express").Router();
const { checkToken } = require("../../auth/token_validation");
const {
  createExpense,
  getExpenseById,
  getallexpense,
  updateExpense,
  updateExpensestatus,
  deleteallexpense,

} = require("./user.controller");


router.get("/",  getallexpense);
router.post("/",  createExpense);
router.get("/:expense_id",  getExpenseById);
router.patch("/:expense_id",  updateExpense);
router.post("/resetPassword",  resetPassword);
router.patch("/status/:expense_id",  updateExpensestatus);
router.delete("/",  deleteallexpense);

module.exports = router;
