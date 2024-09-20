const router = require("express").Router();
const { checkToken } = require("../../auth/token_validation");
const {creategradegroup,getdetailgradegroup,getgradegroup,createexamgroup,getexamgroup, getexamlist, createnewexam,searchcustom} = require("./exam.controller");

router.post("/gradegroup", creategradegroup);
router.post("/examgroup", createexamgroup);
router.get("/examgroup", getexamgroup);
router.get("/gradegroup", getgradegroup);
router.get("/detailgradegroup", getdetailgradegroup);
router.get("/examlist", getexamlist);
router.post("/newexam", createnewexam);
router.post("/searchcustom", searchcustom);





module.exports = router;
