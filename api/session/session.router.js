const router = require("express").Router();
const { checkToken } = require("../../auth/token_validation");
const {
  createsession,
  getsessionById,
  getAllsession,
  updatesession,
  updatesessionStatus,
  deleteAllsession,
  deleteSinglesession,
  getActivesession

} = require("./session.controller");
router.get("/active",  getActivesession);

router.post("/status/",  updatesessionStatus); 
router.post("/",  createsession);
router.get("/",  getAllsession);

router.get("/:id", getsessionById );
router.patch("/",  updatesession);
router.post("/single",  deleteSinglesession);

router.delete("/",  deleteAllsession);

module.exports = router;
