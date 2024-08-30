const router = require("express").Router();
const { checkToken } = require("../../auth/token_validation");
const {
  createfee,
  createfeeCartegory,
  truncateTable,
  getfeeById,
  getAllfee,
  updatefee,
  // updatefeestatus,
  payfee,
  deleteSinglefee,
  addScholarship,
  getScholarship,
  getCart,
  generatefee,
  getfeerecord,
  updatefeerecord,
  deleteSinglefeestock,
  deleteSingleCartfee,
  deletescholarship,
  assignfee,
  enrollScholarship,
  preferences,
  getPaymentRecords,
  getScholarshipEnroll,
  getAssignfeerecord,
} = require("./fee.controller");

router.get("/", getAllfee);
router.get("/cart", getCart);
router.post("/cart", createfeeCartegory);
router.post("/scholarship", addScholarship);
router.post("/listscholarship", getScholarshipEnroll);

router.post("/enrollscholarship", enrollScholarship);

router.get("/scholarship", getScholarship);
router.get("/paymentrecords", getPaymentRecords);


router.post("/payfee", payfee);
router.post("/preferences", preferences);

router.post("/assignfee", assignfee);
router.post("/generatefee", generatefee);
router.get("/feerecord", getfeerecord);
router.post("/updatefeerecord", updatefeerecord);
router.get("/assignfeerecord", getAssignfeerecord);

router.post("/", createfee);

router.delete("/truncate", truncateTable);

router.get("/:fee_id", getfeeById);
router.patch("/item", updatefee);
// router.patch("/status/:fee_id",  updatefeestatus);
router.post("/cartegorydel", deleteSingleCartfee);
router.delete("/scholarship/:id", deletescholarship);

router.delete("/:id", deleteSinglefee);
router.delete("/stock/:id", deleteSinglefeestock);

module.exports = router;
