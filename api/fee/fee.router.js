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
  getbulkbill,
  closeaccount,
  feespaidsession,
  sessionacctreport,
  fetchaccountclosure,
  currentopenedaccount,
  getAllassignlog,
  generatefeerecord,
  getstudentsessionrecord,
  clearlog,
  getclearlog,
  sessionaccountrecords,
  fetchaccountUpdate
} = require("./fee.controller");

router.get("/",checkToken, getAllfee);
router.get("/cart",checkToken, getCart);
router.post("/cart",checkToken, createfeeCartegory);
router.post("/scholarship",checkToken, addScholarship);
router.post("/listscholarship",checkToken, getScholarshipEnroll);

router.post("/updatescholarship",checkToken, updatescholarship);

router.post("/enrollscholarship",checkToken, enrollScholarship);
router.post("/revokescholarship",checkToken, revokeScholarship);
router.post("/sessionacctreport",checkToken, sessionacctreport);
router.get("/fetchaccountclosure",checkToken, fetchaccountclosure);


router.post("/getstudentrecord",checkToken, getstudentrecord);
router.post("/getstudentsessionrecord",checkToken, getstudentsessionrecord);


router.get("/currentopenedaccount",checkToken, currentopenedaccount);
router.get("/scholarship",checkToken, getScholarship);

router.get("/paymentrecords",checkToken, getPaymentRecords);
router.post("/clearlog",checkToken, clearlog);
router.get("/clearlog",checkToken, getclearlog);



router.post("/reversefee",checkToken, reversefeepayment);

router.post("/payfee",checkToken, payfee);
router.post("/preferences",checkToken, preferences);
router.post("/updatebal",checkToken, updatebalance);

router.post("/assignfee",checkToken, assignfee);

router.get("/getallassignlog",checkToken, getAllassignlog);
router.get("/getAssignRecordAction",checkToken, getAssignRecordAction);

router.post("/totalfee",checkToken, totalfee);

router.get("/generatefeerecord",checkToken, generatefeerecord);
router.post("/generatefeebystudent",checkToken, generatefeebystudent);
router.post("/generatefeebyclass",checkToken, generatefeebyclass);
router.post("/generatefee",checkToken, generatefeeallstudent);

router.post("/resetallaccount",checkToken, resetallaccount);
router.post("/resetclassaccount",checkToken, resetclassaccount);
router.get("/getallassignedfeerecord",checkToken, getallassignedfeerecord);
router.post("/cartitemdel",checkToken, cartitemdel);
router.post("/paymentscholarshiprecords",checkToken, paymentWithscholarship);


router.post("/feespaidsession",checkToken, feespaidsession);
router.post("/closeaccount",checkToken, closeaccount);
router.post("/sessionaccountrecords",checkToken, sessionaccountrecords);
router.get("/fetchaccountUpdate",checkToken, fetchaccountUpdate);


router.post("/getsinglebill",checkToken, getsinglebill);
router.post("/getbulkbill",checkToken, getbulkbill);


router.get("/feerecordgroup",checkToken, getfeerecordgroup);
router.get("/feerecord",checkToken, getfeerecord);
router.post("/updatefeerecord",checkToken, updatefeerecord);
router.post("/assigncustom",checkToken, getAssigncustom);
router.get("/assignfeerecord",checkToken, getAssignfeerecord);

router.post("/",checkToken, createfee);
router.delete("/deleteallasigned",checkToken, deleteallasigned);


router.delete("/truncate",checkToken, truncateTable);

router.get("/:fee_id",checkToken, getfeeById);
router.patch("/item",checkToken, updatefee);
router.patch("/feecart",checkToken, updatefeecart);
router.post("/updatecartitem",checkToken, updatecartitem);


// router.patch("/status/:fee_id",  updatefeestatus);
router.post("/cartegorydel",checkToken, deleteSingleCartfee);
router.delete("/scholarship/:id",checkToken, deletescholarship);

router.delete("/:id",checkToken, deleteSinglefee);
router.post("/groupcartdel",checkToken, deletegroupFeeCart);

module.exports = router;
















