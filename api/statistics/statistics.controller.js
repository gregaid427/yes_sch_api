

const pool = require("../../config/database.js");
const logger = require("../../util/logger.js");

module.exports = {

  getAllStat: (req, res) => {
    let sqlQuery1 = `select count(student.student_id) as noStudent from student where  isActive ='true'`;
    let sqlQuery2 = `select count(users.userId) as noStaff from users where isActive ='true'`;
    let sqlQuery3 = `select count(id) as noclass from class where isActive ='true'`;
    let sqlQuery4 = `select count(id) as nosubject from subject where isactive ='true'`;

let myArray = []

 let hh =    pool.query(sqlQuery1, (error, result) => {
      if (error) {
        logger.info(
          `${req.method} ${req.originalUrl}, 'server error', result1 `
        );
      //   return res
      //     .status(500)
      //     .json({ success: 0, error: "internal server error" });
      }
     return result
    });


    pool.query(sqlQuery2, (error, result) => {
      if (error) {
        logger.info(
          `${req.method} ${req.originalUrl}, 'server error', result2 `
        );
      //   return res
      //     .status(500)
      //     .json({ success: 0, error: "internal server error" });
      }

      myArray.push('result')

    });
    
    res.status(200).json({ success: 1, data: hh });

  },


 
};
