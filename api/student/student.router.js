const router = require("express").Router();
const { checkToken } = require("../../auth/token_validation");
const {
  createUser,
  getstudent,
  updatestudent,
  deleteUser,
  verifymail,
  resetPassword,
  resetOTP,
  getOTPpin,
} = require("./student.controller");


router.get("/",  getstudent);
router.post("/",  createUser);
router.get("/pin/:userId",  getOTPpin);
router.patch("/",  updatestudent);
router.post("/resetPassword",  resetPassword);
router.post("/pinreset/:userId",  resetOTP);
router.delete("/",  deleteUser);
router.post("/verify",  verifymail);

module.exports = router;
