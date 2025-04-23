const router = require("express").Router();
const { checkToken } = require("../../auth/token_validation");
const {
  createattendance, 
  deleteSinglesession,
  getdaterecords,
  sessionrecords,
  getdetail,deleteAllAttendance,
  UpdateStatus,
  gettodayrecord

} = require("./attendance.controller");

router.post("/sessionrecords", checkToken, sessionrecords); 
router.post("/createattendance",checkToken,  createattendance);
router.post("/getdetail", checkToken, getdetail);
router.post("/gettodayrecord",checkToken,  gettodayrecord);
router.post("/daterecords",checkToken, getdaterecords );
router.post("/updatestatus", checkToken, UpdateStatus);
router.delete("/single/:id",checkToken,  deleteSinglesession);

router.delete("/",checkToken,  deleteAllAttendance);

module.exports = router;
