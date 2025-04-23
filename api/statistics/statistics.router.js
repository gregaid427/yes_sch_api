const router = require("express").Router();
const { checkToken } = require("../../auth/token_validation");
const {

  getAllStat1,
  getAllStat2,
  getAllStat3,
  getAllStat4,
  getAllStat5,
  getAllStat6,
  getAllStat7,
  AppUpdate,




} = require("./statistics.controller");


router.get("/1", checkToken, getAllStat1);
router.get("/2", checkToken, getAllStat2);
router.get("/3", checkToken, getAllStat3);
router.get("/4", checkToken, getAllStat4);
router.get("/5", checkToken, getAllStat5);
router.get("/6", checkToken, getAllStat6);
router.get("/7", checkToken, getAllStat7);


router.get("/10",checkToken,  AppUpdate);





module.exports = router;
