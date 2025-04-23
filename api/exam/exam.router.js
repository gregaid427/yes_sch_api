const router = require("express").Router();
const { checkToken } = require("../../auth/token_validation");
const {genrateclassreport,creategradegroup,updategradegroup,deletexamgrade,deleteGroup,getexambycode,gradegroupbyid,updateexamcartegory,Updateexamresult,getdetailgradegroup,getexamsubject,setremark,getgradegroup,singlereport,createexamgroup,getexamgroup, getexamlist, createnewexam,searchcustom,addexamresult, getgradegroupbyName, getexamresult, getClassreport} = require("./exam.controller");

router.post("/gradegroup",checkToken, creategradegroup);
router.post("/examgroup",checkToken, createexamgroup);
router.get("/examgroup",checkToken, getexamgroup);
router.get("/gradegroup",checkToken, getgradegroup);

router.post("/updategradegroup",checkToken, updategradegroup);
router.post("/deletegroup",checkToken, deleteGroup);
router.post("/deletexamgrade",checkToken, deletexamgrade);



router.get("/detailgradegroup",checkToken, getdetailgradegroup);
router.get("/examlist",checkToken, getexamlist);
router.post("/newexam",checkToken, createnewexam);
router.post("/searchcustom",checkToken, searchcustom);
router.post("/getexamresult",checkToken, getexamresult);
router.post("/examresult",checkToken, addexamresult);
router.post("/gradegroupbyid",checkToken, gradegroupbyid);


router.post("/singlegrade",checkToken, getgradegroupbyName);
router.post("/examsubject",checkToken, getexamsubject);
router.post("/singlereport",checkToken, singlereport);
router.post("/getClassreport",checkToken, getClassreport);
router.post("/setremark",checkToken, setremark);
router.post("/generatexlassreport",checkToken, genrateclassreport);
router.post("/exambycode",checkToken, getexambycode);
router.post("/Updateexamresult",checkToken, Updateexamresult);
router.post("/updateexamcartegory",checkToken, updateexamcartegory);












module.exports = router;
