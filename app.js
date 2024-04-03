require("dotenv").config();
const express = require("express");
const cors = require("cors")
const app = express();
const userRouter = require("./api/users/user.router");
const studentRouter = require("./api/student/student.router");
// const scanRouter = require("./api/scannedceque/scancheque.router");
//const patientsRouter = require("./api/patients/patients.router");
//const vitalsRouter = require("./api/vitals/vitals.router");
//const logRouter = require("./api/log/log.router");
// const linkedaccountsRouter = require("./api/linkedAccount/linkedaccount.router");
// const transactionsRouter = require("./api/transactions/transactions.router");

app.use(express.json());
app.use(cors())
global.__basedir = __dirname;
// app.use(function(req,res,next){
// res.header("Access-Control-Allow","*");
// res.header("Access-Control-Allow-Headers","X-Requested-With");
// })
// app.use("/api/transactions", transactionsRouter);
app.use("/api/users", userRouter);
app.use("/api/student", studentRouter);

// app.use("/api/linkedaccounts", linkedaccountsRouter);
// app.use("/api/projects", projectRouter);
// app.use("/api/admin", adminRouter);
// app.use("/api/scan", scanRouter);
//app.use("/api/patients", patientsRouter);
//app.use("/api/vitals", vitalsRouter);
//app.use("/api/log", logRouter);
const port = process.env.PORT || 5000;
app.listen(port, () => {
  console.log("server up and running on PORT :", port);
});
