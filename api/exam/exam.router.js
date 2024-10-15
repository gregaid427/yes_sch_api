const router = require("express").Router();
const { checkToken } = require("../../auth/token_validation");
const {genrateclassreport,creategradegroup,updategradegroup,getexambycode,gradegroupbyid,updateexamcartegory,Updateexamresult,getdetailgradegroup,getexamsubject,setremark,getgradegroup,singlereport,createexamgroup,getexamgroup, getexamlist, createnewexam,searchcustom,addexamresult, getgradegroupbyName, getexamresult, getClassreport} = require("./exam.controller");

router.post("/gradegroup", creategradegroup);
router.post("/examgroup", createexamgroup);
router.get("/examgroup", getexamgroup);
router.get("/gradegroup", getgradegroup);

router.post("/updategradegroup", updategradegroup);

router.get("/detailgradegroup", getdetailgradegroup);
router.get("/examlist", getexamlist);
router.post("/newexam", createnewexam);
router.post("/searchcustom", searchcustom);
router.post("/getexamresult", getexamresult);
router.post("/examresult", addexamresult);
router.post("/gradegroupbyid", gradegroupbyid);


router.post("/singlegrade", getgradegroupbyName);
router.post("/examsubject", getexamsubject);
router.post("/singlereport", singlereport);
router.post("/getClassreport", getClassreport);
router.post("/setremark", setremark);
router.post("/generatexlassreport", genrateclassreport);
router.post("/exambycode", getexambycode);
router.post("/Updateexamresult", Updateexamresult);
router.post("/updateexamcartegory", updateexamcartegory);












module.exports = router;
