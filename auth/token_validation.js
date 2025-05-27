const jwt = require("jsonwebtoken");
module.exports = {
  checkToken: (req, res, next) => {
    let myArray = req.get("Authorization");
    console.log('token')
    if (myArray == undefined) {
      return res.json({
        success: 0,
        message: "Error : Invalid Token"

      });
    }
    console.log(myArray)
    let kk = myArray == 'Bearer undefined' ? 0 : myArray.split('{|-')
    //myArray = myArray == undefined ? 0 :   kk[0]

    myArray = myArray == 0 ? 0 : kk[0]
    if (myArray) {
      // Remove Bearer from string
      myArray = myArray.slice(7);
      console.log(myArray)

      jwt.verify(myArray, process.env.JWT_KEY, (err, decoded) => {
        if (err) {
          console.log("error")
          return res.json({
            success: 0,
            message: "Session Expired"

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
