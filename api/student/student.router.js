const router = require("express").Router();
const { checkToken } = require("../../auth/token_validation");
const {
  getstudent,
  updatestudent,
  deleteUser,
} = require("./student.controller");


router.get("/",  getstudent);
router.patch("/",  updatestudent);
router.delete("/",  deleteUser);

module.exports = router;
