const router = require("express").Router();
const { checkToken } = require("../../auth/token_validation");
const {
  createfee,
  createfeeCartegory,
  truncateTable,
  getfeeById,
  getAllfee,
  updatefee,
  payfee,
  deleteSinglefee,
  addScholarship,
  getScholarship,
  getCart,
  generatefeeallstudent,
  getfeerecord,
  updatefeerecord,
  deletegroupFeeCart,
  deleteSingleCartfee,
  deletescholarship,
  assignfee,
  enrollScholarship,
  preferences,
  getPaymentRecords,
  getScholarshipEnroll,
  getAssignfeerecord,
  getAssigncustom,
  updatebalance,
  reversefeepayment,
  getfeerecordgroup,
  updatecartitem,
  generatefeebyclass,
  cartitemdel,
  generatefeebystudent,
  deleteallasigned,
  resetallaccount,
  resetclassaccount,
  getallassignedfeerecord,
  revokeScholarship,
  updatefeecart,
  getstudentrecord,
  getsinglebill,
  updatescholarship,
  getAssignRecordAction,
  paymentWithscholarship,
  totalfee,
  getbulkbill
} = require("./fee.controller");

router.get("/", getAllfee);
router.get("/cart", getCart);
router.post("/cart", createfeeCartegory);
router.post("/scholarship", addScholarship);
router.post("/listscholarship", getScholarshipEnroll);

router.post("/updatescholarship", updatescholarship);

router.post("/enrollscholarship", enrollScholarship);
router.post("/revokescholarship", revokeScholarship);


router.post("/getstudentrecord", getstudentrecord);

router.get("/scholarship", getScholarship);
router.get("/paymentrecords", getPaymentRecords);

router.post("/reversefee", reversefeepayment);

router.post("/payfee", payfee);
router.post("/preferences", preferences);
router.post("/updatebal", updatebalance);

router.post("/assignfee", assignfee);

router.get("/getAssignRecordAction", getAssignRecordAction);
router.post("/totalfee", totalfee);


router.post("/generatefeebystudent", generatefeebystudent);
router.post("/generatefeebyclass", generatefeebyclass);
router.post("/generatefee", generatefeeallstudent);
router.post("/resetallaccount", resetallaccount);
router.post("/resetclassaccount", resetclassaccount);
router.get("/getallassignedfeerecord", getallassignedfeerecord);
router.post("/cartitemdel", cartitemdel);
router.post("/paymentscholarshiprecords", paymentWithscholarship);



router.post("/getsinglebill", getsinglebill);
router.post("/getbulkbill", getbulkbill);



router.get("/feerecordgroup", getfeerecordgroup);
router.get("/feerecord", getfeerecord);
router.post("/updatefeerecord", updatefeerecord);
router.post("/assigncustom", getAssigncustom);
router.get("/assignfeerecord", getAssignfeerecord);

router.post("/", createfee);
router.delete("/deleteallasigned", deleteallasigned);


router.delete("/truncate", truncateTable);

router.get("/:fee_id", getfeeById);
router.patch("/item", updatefee);
router.patch("/feecart", updatefeecart);
router.post("/updatecartitem", updatecartitem);


// router.patch("/status/:fee_id",  updatefeestatus);
router.post("/cartegorydel", deleteSingleCartfee);
router.delete("/scholarship/:id", deletescholarship);

router.delete("/:id", deleteSinglefee);
router.post("/groupcartdel", deletegroupFeeCart);

module.exports = router;
















