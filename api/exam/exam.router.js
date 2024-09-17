const router = require("express").Router();
const { checkToken } = require("../../auth/token_validation");
const { getAllClassNo ,getClassByClassId} = require("./exam.controller");

router.post("/", getClassByClassId);

router.delete("/s", getAllClassNo);

module.exports = router;
