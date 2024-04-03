const router = require("express").Router();
const { checkToken } = require("../../auth/token_validation");
const {
  createSubject,
  getSubjectById,
  getAllSubject,
  updateSubject,
  updateSubjectStatus,
  deleteAllSubject,

} = require("./user.controller");


router.get("/",  createSubject);
router.post("/",  getSubjectById);
router.get("/:Subject_id",  getAllSubject);
router.patch("/:Subject_id",  updateSubject);
router.patch("/status/:Subject_id",  updateSubjectStatus);
router.delete("/",  deleteAllSubject);

module.exports = router;
