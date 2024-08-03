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
  deletesinglegroup

} = require("./class.controller");


router.post("/",  createClass);
router.get("/",  getAllClassWithSection);
router.get("/all/",  getAllClass);
router.get("/allno/",  getAllClassNo);

router.get("/section",  getAllSection);
router.get("/groupsection",  getAllSectiongroup);


router.post("/single",  getClassByClassId);
router.post("/sectionclass",  getsectionByClassId);

router.post("/section",  createClassSection);
router.patch("/",  updateClass);
router.patch("/section",  updateSection);
router.patch("/status/:ClassId",  updateClassStatus);
router.delete("/",  deleteAllClass);
router.delete("/single/:classId",  deleteSingleClass);
router.post("/single/sectiondelete",  deleteSectionbyClass);
router.delete("/truncate",  truncateTable);
router.delete("/sectiongroup/:id",  deletesinglegroup);







module.exports = router;
