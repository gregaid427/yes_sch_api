const router = require("express").Router();
const { checkToken } = require("../../auth/token_validation");
const {
  createsession,
  getsessionById,
  getAllsession,
  updatesession,
  updatesessionStatus,
  deleteAllsession,
  deleteSinglesession

} = require("./session.controller");


router.post("/",  createsession);
router.get("/",  getAllsession);
router.get("/:id", getsessionById );
router.patch("/",  updatesession);
router.patch("/status/:id",  updatesessionStatus); 
router.delete("/single/:id",  deleteSinglesession);

router.delete("/",  deleteAllsession);

module.exports = router;
