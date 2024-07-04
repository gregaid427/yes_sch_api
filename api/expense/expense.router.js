const router = require("express").Router();
const { checkToken } = require("../../auth/token_validation");
const {
  createExpense,
  createExpenseHead,
  getExpenseById,
  getallexpense,
  getallexpensehead,
  updateExpense,
  updateExpensestatus,
  deleteallexpense,
  getcustomexpense,

} = require("./expense.controller");


router.get("/head",  getallexpensehead);
router.post("/custom",  getcustomexpense);

router.get("/",  getallexpense);
router.post("/head",  createExpenseHead);
router.post("/",  createExpense);
router.get("/:expense_id",  getExpenseById);
router.patch("/:expense_id",  updateExpense);
// router.post("/resetPassword",  resetPassword);
router.patch("/status/:expense_id",  updateExpensestatus);
router.delete("/",  deleteallexpense);

module.exports = router;
