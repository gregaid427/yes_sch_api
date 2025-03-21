require("dotenv").config();
const express = require("express");
const cors = require("cors");
const app = express();
const userRouter = require("./api/users/user.router");
const studentRouter = require("./api/student/student.router");
const classRouter = require("./api/class/class.router");
const subjectRouter = require("./api/subject/subject.router");
const statRouter = require("./api/statistics/statistics.router");
const inventoryRouter = require("./api/inventory/inventory.router");
const expenseRouter = require("./api/expense/expense.router");
const sessionRouter = require("./api/session/session.router");
const settingRouter = require("./api/setting/setting.router");
const feeRouter = require("./api/fee/fee.router");
const examRouter = require("./api/exam/exam.router");
const attendanceRouter = require("./api/attendance/attendance.router");




//const patientsRouter = require("./api/patients/patients.router");
//const vitalsRouter = require("./api/vitals/vitals.router");
//const logRouter = require("./api/log/log.router");
// const linkedaccountsRouter = require("./api/linkedAccount/linkedaccount.router");
// const transactionsRouter = require("./api/transactions/transactions.router");

app.use(express.json());
var corsOptions = {
  // 'Access-Control-Allow-Origin': 'https://yes-school-frontend.vercel.app/',
  // 'Access-Control-Allow-Methods'     : 'POST, GET, OPTIONS, PUT, DELETE',
  // 'Access-Control-Allow-Credentials' : 'true',
  // 'Access-Control-Max-Age'           : '86400',
  // 'Access-Control-Allow-Headers'     : 'Content-Type, Authorization, X-Requested-With'
};
app.use(cors(corsOptions));
global.__basedir = __dirname;
//app.use(bodyParser.urlencoded())

app.use(express.urlencoded({ extended: true }));
app.use(express.static('uploadlogo'))
app.use(express.static('uploadexpense'))
app.use(express.static('uploadsStudent'))
//  app.use(function(req,res,next){
// res.header("Access-Control-Allow","*");
// res.header("Access-Control-Allow-Headers","X-Requested-With");
// })
// app.use("/api/transactions", transactionsRouter);
app.use("/api/users", userRouter);
app.use("/api/student", studentRouter);
app.use("/api/class", classRouter);
app.use("/api/subject", subjectRouter);
app.use("/api/statistics", statRouter);
app.use("/api/inventory", inventoryRouter);
app.use("/api/expense", expenseRouter);
app.use("/api/session", sessionRouter);
app.use("/api/setting", settingRouter);
app.use("/api/fee", feeRouter);
app.use("/api/exam", examRouter);
app.use("/api/attendance", attendanceRouter);



// app.use("/api/linkedaccounts", linkedaccountsRouter);
// app.use("/api/projects", projectRouter);
// app.use("/api/admin", adminRouter);
// app.use("/api/scan", scanRouter);
//app.use("/api/patients", patientsRouter);
//app.use("/api/vitals", vitalsRouter);
//app.use("/api/log", logRouter);
const port = process.env.PORT || 5400;
app.listen(port, () => {
  console.log("server up and running on PORT :", port);
});
