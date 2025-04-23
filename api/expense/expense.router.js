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
  truncateTable,
  deleteSingleExpense,
  deleteSingleExpenseHead,
  updateExpenseHead

} = require("./expense.controller");


router.get("/head",checkToken,  getallexpensehead);
router.post("/custom", checkToken, getcustomexpense);
router.post("/update",checkToken,  updateExpense);

router.get("/",checkToken,  getallexpense);
router.post("/head",checkToken,  createExpenseHead);
router.patch("/updatehead",checkToken,  updateExpenseHead);

router.post("/",checkToken,  createExpense);
router.get("/:expense_id",checkToken,  getExpenseById);
// router.post("/resetPassword",  resetPassword);
router.patch("/status/:expense_id", checkToken, updateExpensestatus);
router.delete("/truncate",checkToken,  truncateTable);
router.delete("/head/:id",checkToken,  deleteSingleExpenseHead);
router.delete("/:id", checkToken ,deleteSingleExpense);

router.delete("/",checkToken,  deleteallexpense);


module.exports = router;
