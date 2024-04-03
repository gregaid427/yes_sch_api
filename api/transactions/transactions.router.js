const router = require("express").Router();
const { checkToken } = require("../../auth/token_validation");
const {
  createtransaction,
  gettransactionsByUserId,
  getTransactionByTransid,
  getalltransactions,
  updateLinkedAccount,
  deletelinkedaccount,
  updateStatus
} = require("./transactions.controller");
router.get("/:id",  gettransactionsByUserId);
router.get("/",  getalltransactions);
router.post("/",  createtransaction);
router.get("/trans/:id",  getTransactionByTransid );
//router.patch("/:id",  updateLinkedAccount);
router.patch("/status/:id",  updateStatus);

router.delete("/",  deletelinkedaccount);

module.exports = router;
