const router = require("express").Router();
const { checkToken } = require("../../auth/token_validation");
const {
  createsubject,
  getsubjectById,
  getAllSubject,
  updateSubject,
  updateSubjectStatus,
  deleteAllSubject,

} = require("./subject.controller");


router.post("/",  createsubject);
router.get("/", getAllSubject );
router.get("/Subject_id",  getsubjectById );
router.patch("/",  updateSubject);
router.patch("/status/:Subject_id",  updateSubjectStatus);
router.delete("/",  deleteAllSubject);

module.exports = router;
