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
  setstudentwaiting,
  allpromote,
  setStudentLogo,
  selectedpromote,
  getstudentbyClassCustomPromote,
  getstudentbyClassPromote,
  getstudentbyClassCustomBal,
  getstudentbyClassbal,
  bulkAdmission,
  getstudentcustom,updatefeecart,getCart,createstudentCartegory,deleteSingleStudentCart
} = require("./student.controller");


router.get("/",  getstudent);
router.post("/custom1",  getstudentbyClassCustom);
router.post("/custom",  getstudentbyClass);

router.post("/custom1account",  getstudentbyClassCustomBal);
router.post("/customaccount",  getstudentbyClassbal);
router.post("/studentcustom",  getstudentcustom);


router.post("/custom1promote",  getstudentbyClassCustomPromote);
router.post("/customPromote",  getstudentbyClassPromote);
router.get("/single/:student_id",  getstudentbiodata);
router.post("/delete",  deleteStudentsingle);
router.post("/waiting",  setstudentwaiting);
router.post("/allpromote",  allpromote);
router.post("/selectedpromote",  selectedpromote);
router.post("/studentlogo",  setStudentLogo);
router.post("/bulkAdmission",  bulkAdmission);

router.post("/delStudentCart",  deleteSingleStudentCart);
router.post("/createstudentcart",  createstudentCartegory);
router.get("/getcart",  getCart);
router.post("/updatestudentcart",  updatefeecart);



router.patch("/",  updatestudent);

router.delete("/truncate",  truncateTable);


module.exports = router;
