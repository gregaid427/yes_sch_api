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
  getuserdata,
  setSchoolLogo,
  schoolinfoupdate,
  updatestaff,
  loginlog,
  activeStudent,
  InactiveStudent
} = require("./user.controller");
router.post("/logoschool",checkToken,  setSchoolLogo);

router.post("/picture",  setStudentPicture);
router.get("/staff",checkToken,  getAllStaff);
router.post("/updatestaff",checkToken,  updatestaff);
router.post("/deletestaff/:id",checkToken,  deleteStaff);
router.post("/inactivestaff/:id",checkToken,  InactiveStaff);
router.post("/activestaff/:id",checkToken,  activeStaff);
router.post("/inactivestudent",checkToken,  InactiveStudent);
router.post("/activestudent",checkToken,  activeStudent);
router.get("/school/",checkToken,  schoolinfo);
router.post("/school/update",checkToken,  schoolinfoupdate);

router.get("/",checkToken,  getUsers);
router.post("/guardian",checkToken,  createUserGuardian);
router.post("/newstaff",checkToken,  createUserStaff);
router.post("/newstudent",checkToken,  createUserStudent);
router.post("/userdata",  getuserdata);

router.get("/userbyrole",  getUserByUserIdRole);
router.get("/loginlog",  loginlog);

router.post("/userid",  getUserByUserId);
router.get("/pin/:userId",  getOTPpin);

router.post("/login", login);
router.patch("/",checkToken,  updateUsers);
router.post("/resetPassword",  resetPassword);
router.post("/pinreset/:userId",  resetOTP);
router.delete("/",checkToken,  deleteUser);

router.post("/verify",  verifymail);

router.post("/mailPasswordreset",  mailPasswordreset);

module.exports = router;
