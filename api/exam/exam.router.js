const router = require("express").Router();
const { checkToken } = require("../../auth/token_validation");
const {creategradegroup,getdetailgradegroup,getexamsubject,setremark,getgradegroup,singlereport,createexamgroup,getexamgroup, getexamlist, createnewexam,searchcustom,examresult, getgradegroupbyName, getexamresult, getClassreport} = require("./exam.controller");

router.post("/gradegroup", creategradegroup);
router.post("/examgroup", createexamgroup);
router.get("/examgroup", getexamgroup);
router.get("/gradegroup", getgradegroup);
router.get("/detailgradegroup", getdetailgradegroup);
router.get("/examlist", getexamlist);
router.post("/newexam", createnewexam);
router.post("/searchcustom", searchcustom);
router.post("/getexamresult", getexamresult);
router.post("/examresult", examresult);

router.post("/singlegrade", getgradegroupbyName);
router.post("/examsubject", getexamsubject);
router.post("/singlereport", singlereport);
router.post("/getClassreport", getClassreport);
router.post("/setremark", setremark);










module.exports = router;
