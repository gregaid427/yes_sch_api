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
  updateSection

} = require("./class.controller");


router.post("/",  createClass);
router.get("/",  getAllClassWithSection);
router.get("/all/",  getAllClass);
router.get("/section",  getAllSection);
router.get("/groupsection",  getAllSectiongroup);


router.post("/single",  getClassByClassId);
router.post("/sectionclass",  getsectionByClassId);

router.post("/section",  createClassSection);
router.patch("/",  updateClass);
router.patch("/section",  updateSection);
router.patch("/status/:ClassId",  updateClassStatus);
router.delete("/",  deleteAllClass);
router.delete("/single",  deleteSingleClass);
router.post("/single/sectiondelete",  deleteSectionbyClass);




module.exports = router;
