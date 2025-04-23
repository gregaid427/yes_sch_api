const router = require("express").Router();
const { checkToken } = require("../../auth/token_validation");
const {
  createClass,
  getClassByClassId,
  getAllClass,
  updateClass,
  updateClassStatus,
  deleteAllClass,
  getAllClassWithSection,
  createClassSection,
  getAllSection,
  deleteSingleClass,
  getAllSectiongroup,
  deleteSectionbyClass,
  getsectionByClassId,
  updateSection,
  truncateTable,
  getAllClassNo,
  deletesinglegroup,
  allclassexam

} = require("./class.controller");



router.post("/",checkToken,  createClass);
router.post("/getclasswithsection",checkToken,  getAllClassWithSection);
router.get("/all/",checkToken,  getAllClass);
router.post("/allclassexam/",checkToken,  allclassexam);
router.get("/allno/",checkToken,  getAllClassNo);


router.get("/section",checkToken,  getAllSection);
router.get("/groupsection", checkToken, getAllSectiongroup);

router.post("/single",checkToken,  getClassByClassId);
router.post("/sectionclass",checkToken,  getsectionByClassId);

router.post("/section", checkToken, createClassSection);
router.patch("/", checkToken, updateClass);
router.patch("/section", checkToken, updateSection);
router.patch("/status/:ClassId", checkToken,  updateClassStatus);
router.delete("/",checkToken,  deleteAllClass);
router.delete("/single/:classId", checkToken, deleteSingleClass);
router.post("/single/sectiondelete", checkToken,  deleteSectionbyClass);
router.delete("/truncate", checkToken, truncateTable);
router.delete("/sectiongroup/:id", checkToken, deletesinglegroup);







module.exports = router;
