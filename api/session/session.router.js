const router = require("express").Router();
const { checkToken } = require("../../auth/token_validation");
const {
  createSession,
  getsesSionById,
  getAllSession,
  updateSession,
  updateSessionStatus,
  deleteAllSession,

} = require("./user.controller");


router.get("/",  createSession);
router.post("/",  getsesSionById);
router.get("/:session_id",  getAllSession);
router.patch("/:session_id",  updateSession);
router.patch("/status/:session_id",  updateSessionStatus);
router.delete("/",  deleteAllSession);

module.exports = router;
