const router = require("express").Router();
const { checkToken } = require("../../auth/token_validation");
const {

 
  setStudentPicture,
  createSchoolInfo,
} = require("./setting.controller");


router.post("/school",checkToken,  createSchoolInfo);
router.post("/picture",checkToken,  setStudentPicture);
// router.get("/",  getUsers);
// router.post("/guardian",  createUserGuardian);
// router.post("/staff",  createUserStaff);
// router.post("/",  createUserStudent);



module.exports = router;
