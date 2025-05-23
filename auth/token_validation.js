const jwt = require("jsonwebtoken");
module.exports = {
  checkToken: (req, res, next) => {
    let token = req.get("Authorization");
  

    if (token) {
      // Remove Bearer from string
      token = token.slice(7);
      console.log(token)

      jwt.verify(token, process.env.JWT_KEY, (err, decoded) => {
        if (err) {
          console.log("error")
          return res.json({
            success: 0,
            message: "Invalid Token..."
            
          });
        } else {
          req.decoded = decoded;
          next();
          console.log("no error")
        }
      });
    } else {
      return res.json({
        success: 0,
        message: "Access Denied! Unauthorized User"
      });
    }
  }
};
