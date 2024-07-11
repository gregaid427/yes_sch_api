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
  

} = require("./user.controller");


router.get("/",  getAllSection);
router.post("/",  createSection);
router.get("/:section_id",  getSectionById);
router.patch("/:section_id",  updateSection);
router.post("/resetPassword",  resetPassword);
router.patch("/status/:section_id",  updateSectionstatus);
router.delete("/",  deleteAllSection);
router.delete("/truncate",  truncateTable);



module.exports = router;
