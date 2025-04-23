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
  getgraduated,
  delgraduated,
  graduatesingledel,
  getstudentcustom, updatefeecart, getCart, createstudentCartegory, deleteSingleStudentCart,
  getdeletedstudent,
  delalldeletedstudent,
  deldeletedstudent,
  getstudentbyClass2,
  getstudentbyClassCustom3,
  movestudent
} = require("./student.controller");


router.get("/",checkToken, getstudent);
router.post("/custom1",checkToken, getstudentbyClassCustom);
router.post("/custom3",checkToken, getstudentbyClassCustom3);

router.post("/custom",checkToken, getstudentbyClass);
router.post("/custom2",checkToken, getstudentbyClass2);


router.post("/custom1account",checkToken, getstudentbyClassCustomBal);
router.post("/customaccount",checkToken, getstudentbyClassbal);
router.post("/studentcustom",checkToken, getstudentcustom);
router.post("/movestudent",checkToken, movestudent);

router.post("/custom1promote",checkToken, getstudentbyClassCustomPromote);
router.post("/customPromote",checkToken, getstudentbyClassPromote);
router.get("/single/:student_id",checkToken, getstudentbiodata);
router.post("/delete",checkToken, deleteStudentsingle);
router.post("/waiting",checkToken, setstudentwaiting);
router.post("/allpromote",checkToken, allpromote);
router.post("/selectedpromote",checkToken, selectedpromote);
router.post("/studentlogo",checkToken, setStudentLogo);
router.post("/bulkAdmission",checkToken, bulkAdmission);
router.post("/graduatesingledel",checkToken, graduatesingledel);


router.post("/delStudentCart",checkToken, deleteSingleStudentCart);
router.post("/createstudentcart",checkToken, createstudentCartegory);
router.get("/getcart",checkToken, getCart);
router.get("/graduated",checkToken, getgraduated);
router.get("/deletedstudent",checkToken, getdeletedstudent);


router.delete("/delgraduated",checkToken, delgraduated);
router.post("/deldeletedstudent",checkToken, deldeletedstudent);
router.delete("/delalldeletedstudent",checkToken, delalldeletedstudent);



router.post("/updatestudentcart",checkToken, updatefeecart);



router.patch("/",checkToken, updatestudent);

router.delete("/truncate",checkToken, truncateTable);


module.exports = router;
