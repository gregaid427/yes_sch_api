const util = require("util");
const multer = require("multer");
const maxSize = 1000 * 1024 * 1024;

let storage = multer.diskStorage({
  destination: (req, file, cb) => {
    cb(null, __basedir + "/uploadsStudent/");
  },
  filename: (req, file, cb) => {
    cb(null, file.fieldname);
  },
});

let uploadFile = multer({
  storage: storage,
  limits: { fileSize: maxSize },
}).any();

let uploadFileMiddleware = util.promisify(uploadFile);
module.exports = uploadFileMiddleware;