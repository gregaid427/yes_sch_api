const router = require("express").Router();
const { checkToken } = require("../../auth/token_validation");
const {
  getstudent,
  getstudentbiodata,
  updatestudent,
  getstudentbyClass,
  getstudentbyClassCustom,
  deleteStudentsingle,
  truncateTable,
} = require("./student.controller");


router.get("/",  getstudent);
router.post("/custom1",  getstudentbyClassCustom);
router.post("/custom",  getstudentbyClass);
router.get("/single/:student_id",  getstudentbiodata);
router.post("/delete",  deleteStudentsingle);

router.patch("/",  updatestudent);

router.delete("/truncate",  truncateTable);


module.exports = router;
