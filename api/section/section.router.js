const router = require("express").Router();
const { checkToken } = require("../../auth/token_validation");
const {
  createSection,
  getSectionById,
  getAllSection,
  updateSection,
  updateSectionstatus,
  deleteAllSection,
  truncateTable,
  

} = require("./section.controller");


router.get("/",checkToken,  getAllSection);
router.post("/", checkToken, createSection);
router.get("/:section_id",checkToken,  getSectionById);
router.patch("/:section_id",checkToken,  updateSection);
router.post("/resetPassword",checkToken,  resetPassword);
router.patch("/status/:section_id", checkToken, updateSectionstatus);
router.delete("/",checkToken,  deleteAllSection);
router.delete("/truncate",checkToken,  truncateTable);



module.exports = router;
