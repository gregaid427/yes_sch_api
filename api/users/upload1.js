const util = require("util");
const multer = require("multer");
const maxSize = 1000 * 1024 * 1024;

let storage = multer.diskStorage({
  destination: (req, file, cb) => {
    cb(null, __basedir + "/uploadlogo/");
  },
  filename: (req, file, cb) => {
    cb(null, file.fieldname);
  },
});

let uploadFile1 = multer({
  storage: storage,
  limits: { fileSize: maxSize },
}).any();

let uploadFileMiddleware = util.promisify(uploadFile1);
module.exports = uploadFileMiddleware;