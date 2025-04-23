const router = require("express").Router();
const { checkToken } = require("../../auth/token_validation");
const {
  createsubject,
  getsubjectById,
  getAllSubject,
  updateSubject,
  deleteAllSubject,
  deleteSingleSubject

} = require("./subject.controller");


router.post("/", checkToken, createsubject);
router.get("/",checkToken,checkToken, getAllSubject );
router.get("/Subject_id",checkToken,  getsubjectById );
router.patch("/",checkToken,  updateSubject);
router.delete("/:subjectId",checkToken,  deleteSingleSubject);
router.delete("/",checkToken,  deleteAllSubject);

module.exports = router;
