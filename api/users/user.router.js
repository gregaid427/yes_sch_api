const router = require("express").Router();
const { checkToken } = require("../../auth/token_validation");
const {
  createUser,
  login,
  getUserByUserId,
  getUsers,
  updateUsers,
  deleteUser,
  verifymail,
  resetPassword,
  mailPasswordreset,
  resetOTP,
  getOTPpin,
  createUserStudent,
  createUserStaff,
  createUserGuardian,
  setStudentPicture,
  getUserByUserIdRole,
  getAllStaff,
  InactiveStaff,
  deleteStaff,
  activeStaff,
  schoolinfo,
  setSchoolLogo,
  schoolinfoupdate
} = require("./user.controller");
router.post("/logoschool",  setSchoolLogo);

router.post("/picture",  setStudentPicture);
router.get("/staff",  getAllStaff);

router.post("/deletestaff/:id",  deleteStaff);
router.post("/inactivestaff/:id",  InactiveStaff);
router.post("/activestaff/:id",  activeStaff);
router.get("/school/",  schoolinfo);
router.post("/school/update",  schoolinfoupdate);





router.get("/",  getUsers);
router.post("/guardian",  createUserGuardian);
router.post("/newstaff",  createUserStaff);
router.post("/newstudent",  createUserStudent);



router.get("/userbyrole",  getUserByUserIdRole);


router.get("/:userId",  getUserByUserId);
router.get("/pin/:userId",  getOTPpin);

router.post("/login", login);
router.patch("/",  updateUsers);
router.post("/resetPassword",  resetPassword);
router.post("/pinreset/:userId",  resetOTP);
router.delete("/",  deleteUser);

router.post("/verify",  verifymail);

router.post("/mailPasswordreset",  mailPasswordreset);

module.exports = router;
