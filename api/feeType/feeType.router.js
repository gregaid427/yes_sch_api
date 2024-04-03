const router = require("express").Router();
const { checkToken } = require("../../auth/token_validation");
const {
  createFeeType,
  getFeeTypeById,
  getallFeeType,
  updateFeeType,
  updateFeeTypestatus,
  deleteAllFeeType,

} = require("./user.controller");


router.get("/",  createFeeType);
router.post("/",  getFeeTypeById);
router.get("/:feeType_id",  getallFeeType);
router.patch("/:feeType_id",  updateFeeType);
router.patch("/status/:feeType_id",  updateFeeTypestatus);
router.delete("/",  deleteAllFeeType);

module.exports = router;
