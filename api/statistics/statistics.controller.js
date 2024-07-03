

const pool = require("../../config/database.js");
const logger = require("../../util/logger.js");

module.exports = {

  getAllStat1: (req, res) => {
    let sqlQuery1 = `select count(student.student_id) as noStudent from student where  isActive ='true'`;
 
   pool.query(sqlQuery1, (error, result) => {
      if (error) {
        logger.info(
          `${req.method} ${req.originalUrl}, 'server error', result1 `
        );
        return res
          .status(500)
          .json({ success: 0, error: "internal server error" });
        }
        return res
        .status(200)
       .json({ success: 1, data: result });
    
    });

  },
  getAllStat2: (req, res) => {
    let sqlQuery2 = `select count(users.userId) as noStaff from users where isActive ='true'`;
 


   pool.query(sqlQuery2, (error, result) => {
      if (error) {
        logger.info(
          `${req.method} ${req.originalUrl}, 'server error', result1 `
        );
        return res
          .status(500)
          .json({ success: 0, error: "internal server error" });
        }
        return res
        .status(200)
       .json({ success: 1, data: result });
    
    });


  },
  getAllStat3: (req, res) => {
    let sqlQuery3 = `select count(id) as noclass from class where isActive ='true'`;


   pool.query(sqlQuery3, (error, result) => {
      if (error) {
        logger.info(
          `${req.method} ${req.originalUrl}, 'server error', result1 `
        );
        return res
          .status(500)
         .json({ success: 0, error: "internal server error" });
      }
      return res
      .status(200)
     .json({ success: 1, data: result });
    });
   

  },

  getAllStat4: (req, res) => {
   
  let sqlQuery4 = `select count(id) as nosubject from subject where isactive ='true'`;
   pool.query(sqlQuery4, (error, result) => {
      if (error) {
        logger.info(
          `${req.method} ${req.originalUrl}, 'server error', result1 `
        );
        return res
          .status(500)
         .json({ success: 0, error: "internal server error" });
      }
      return res
      .status(200)
     .json({ success: 1, data: result });
    });

  },
  
  getAllStat5: (req, res) => {

    let sqlQuery5 = `select count(id) as nosubject from subject where isactive ='true'`;



   pool.query(sqlQuery5, (error, result) => {
      if (error) {
        logger.info(
          `${req.method} ${req.originalUrl}, 'server error', result1 `
        );
        return res
          .status(500)
         .json({ success: 0, error: "internal server error" });
      }
      return res
      .status(200)
     .json({ success: 1, data: result });
      
    });

  },
 


 
};
