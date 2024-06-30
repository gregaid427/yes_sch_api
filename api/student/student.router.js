const router = require("express").Router();
const { checkToken } = require("../../auth/token_validation");
const {
  getstudent,
  getstudentbiodata,
  updatestudent,
  getstudentbyClass,
  getstudentbyClassCustom,
  deleteUser,
} = require("./student.controller");


router.get("/",  getstudent);
router.post("/custom1",  getstudentbyClassCustom);
router.post("/custom",  getstudentbyClass);
router.get("/single/:student_id",  getstudentbiodata);

router.patch("/",  updatestudent);
router.delete("/",  deleteUser);

module.exports = router;
