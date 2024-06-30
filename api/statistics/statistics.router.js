const router = require("express").Router();
const { checkToken } = require("../../auth/token_validation");
const {

  getAllStat,


} = require("./statistics.controller");


router.get("/",  getAllStat);


module.exports = router;
