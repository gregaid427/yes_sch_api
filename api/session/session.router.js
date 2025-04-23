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
router.get("/active",checkToken,  getActivesession);

router.post("/status/",checkToken,  updatesessionStatus); 
router.post("/create",checkToken,  createsession);
router.get("/fetch", checkToken, getAllsession);

router.get("/:id",checkToken, getsessionById );
router.patch("/", checkToken, updatesession);
router.post("/single",checkToken,  deleteSinglesession);

router.delete("/",checkToken,  deleteAllsession);

module.exports = router;
