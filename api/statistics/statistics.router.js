const router = require("express").Router();
const { checkToken } = require("../../auth/token_validation");
const {

  getAllStat1,
  getAllStat2,
  getAllStat3,
  getAllStat4,
  getAllStat5,


} = require("./statistics.controller");


router.get("/1",  getAllStat1);
router.get("/2",  getAllStat2);
router.get("/3",  getAllStat3);
router.get("/4",  getAllStat4);
router.get("/5",  getAllStat5);




module.exports = router;
