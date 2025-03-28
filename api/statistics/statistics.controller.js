const pool = require("../../config/database.js");
// const logger = require("../../util/logger.js");

module.exports = {
  getAllStat1: (req, res) => {
    let sqlQuery1 = `select count(student.student_id) as noStudent from student where  isActive ='true'`;

    try {
          pool.query(sqlQuery1, (error, result) => {
      if (error) {
        // logger.info(
        //   `${req.method} ${req.originalUrl}, 'server error', result1 `
        // );
        return res
          .status(500)
                   .json({ success: 0, error: "internal server error",message:error });

      }
      return res.status(200).json({ success: 1, data: result });
    });
  }
  catch (error) {
  }
  },

  getAllStat2: (req, res) => {
    let sqlQuery2 = `select count(users.userId) as noStaff from users where isActive ='true' and role='staff'`;

    try {
          pool.query(sqlQuery2, (error, result) => {
      if (error) {
        // logger.info(
        //   `${req.method} ${req.originalUrl}, 'server error', result1 `
        // );
        return res
          .status(500)
                   .json({ success: 0, error: "internal server error",message:error });

      }
      return res.status(200).json({ success: 1, data: result });
    });
  }
  catch (error) {
  }
  },
  getAllStat3: (req, res) => {
    let sqlQuery3 = `select count(id) as noclass from class where isActive ='true'`;

    try {
          pool.query(sqlQuery3, (error, result) => {
      if (error) {
        // logger.info(
        //   `${req.method} ${req.originalUrl}, 'server error', result1 `
        // );
        return res
          .status(500)
                   .json({ success: 0, error: "internal server error",message:error });

      }
      return res.status(200).json({ success: 1, data: result });
    });
  }
  catch (error) {
  }
  },

  getAllStat4: (req, res) => {
    let sqlQuery4 = `select count(id) as nosubject from subject where isactive ='true'`;
    try {
          pool.query(sqlQuery4, (error, result) => {
      if (error) {
        // logger.info(
        //   `${req.method} ${req.originalUrl}, 'server error', result1 `
        // );
        return res
          .status(500)
                   .json({ success: 0, error: "internal server error",message:error });

      }
      return res.status(200).json({ success: 1, data: result });
    });
  }
  catch (error) {
  }
  },

  getAllStat5: (req, res) => {
    let sqlQuery5 = `select extract(MONTH from date) as month,sum(amount) as total_value from expense where YEAR(date) = YEAR(CURDATE()) group by month; `;

    try {
          pool.query(sqlQuery5, (error, result) => {
      if (error) {
        // logger.info(
        //   `${req.method} ${req.originalUrl}, 'server error', result1 `
        // );
        return res
          .status(500)
                   .json({ success: 0, error: "internal server error",message:error });

      }
      console.log(result)
      return res.status(200).json({ success: 1, data: result });
    });
  }
  catch (error) {
  }
  },

  getAllStat6: (req, res) => {
    let sqlQuery5 = `select count(userId) as noParent from guardian `;

    try {
          pool.query(sqlQuery5, (error, result) => {
      if (error) {
        // logger.info(
        //   `${req.method} ${req.originalUrl}, 'server error', result1 `
        // );
        return res
          .status(500)
                   .json({ success: 0, error: "internal server error",message:error });

      }
      return res.status(200).json({ success: 1, data: result });
    });
  }
  catch (error) {
  }
  },
  getAllStat7: (req, res) => {
    let sqlQuery5 = `SELECT class,count(student_id) as count from student where isActive='true' group by student.class;  `;

    try {
          pool.query(sqlQuery5, (error, result) => {
      if (error) {
        // logger.info(
        //   `${req.method} ${req.originalUrl}, 'server error', result1 `
        // );
        return res
          .status(500)
                   .json({ success: 0, error: "internal server error",message:error });

      }
      return res.status(200).json({ success: 1, data: result });
    });
  }
  catch (error) {
  }
  },
};
