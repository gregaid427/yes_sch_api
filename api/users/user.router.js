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
} = require("./user.controller");


router.get("/",  getUsers);
router.post("/",  createUser);
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
