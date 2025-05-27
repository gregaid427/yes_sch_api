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
const pool = require("./config/database.js");
const cron = require('node-cron')
let date = new Date();
date = date.toUTCString();
const nodemailer = require("nodemailer");
const moment = require('moment')
const fs = require('fs')
const mysqldump = require('mysqldump')

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
app.use(express.static('backup'))

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
// app.use("/api/setting", settingRouter);
app.use("/api/fee", feeRouter);
app.use("/api/exam", examRouter);
app.use("/api/attendance", attendanceRouter);

// Example using Gmail (replace with your service and credentials)
const transporter = nodemailer.createTransport({
  service: process.env.MAILING_HOST, // or your preferred service (e.g., 'smtp', 'sendgrid')
  auth: {
    user: 'gregoryd428@gmail.com', // Your email address
    pass: 'glorycloud',    // Your app password (or access token)
  },
});
async function backup(fileName) {
  console.log(fileName)
  const wstream = fs.createWriteStream(`./backup/${fileName}`)
  console.log('---------------------')
  let vv = await mysqldump({
    connection: {
      host: process.env.MYSQL_HOST,
      user: process.env.MYSQL_USER,
      password: process.env.MYSQL_PASSWORD,
      database: process.env.MYSQL_DATABASE,
    },
    dumpToFile: `./backup/${fileName}`,
  });

  return true
}


const port = process.env.PORT || 5400;
app.listen(port, () => {

  //runs every saturday
  let Cronjob = cron.schedule('0 0 * * saturday', () => {

    try {
      // get settings from db
      let sqlQuery = `select duration,backupemail,backupmode  from school`;
      pool.query(sqlQuery, async (error, result) => {
        console.log(result)
                console.log(error)

        if (result.length != 0) {

          //create backup file to be used
          const fileName = `${moment().format('MMMM_D_YYYY_HH-mm-A')}.sql`


          const job = cron.schedule('0 0 28 * *', async () => {


            //send mail with sql file
            const mailOptions = {
              from: process.env.MAILING_USER, // Your email address
              to: result[0].backupemail, // Recipient's email address
              subject: `YesSchool SMS Data Backup : ${date}`,
              text: 'Kindly find atached for SQL file', // Plain text version of the email
              html: '<h1>Email with Attachment</h1><p>This email contains an attachment.</p>', // HTML version of the email
              attachments: [
                {
                  filename: fileName,    // Name of the attachment
                  path: `./backup/${fileName}`, // Path to the file
                  // Or, for a buffer:
                  // content: Buffer.from('hello world', 'utf8'), // Content as a buffer
                  // Or, for a stream:
                  // content: fs.createReadStream('/path/to/your/file.txt'), // Content as a stream
                },
              ],
            };


            // transporter.sendMail(mailOptions, (error, info) => {
            //   if (error) {
            //     console.error('Error sending email:', error);
            //   } else {
            //     console.log('Email sent:', info.response);
            //   }
            // });


            //insert db file info to table
            let backups = await backup(fileName)
            let link =
              process.env.SERVERLINK + "/" + fileName;
            if (backups == true) {
              let sqlQuery4 = `insert into backup (file,datetaken,mode,takenby,link) values
         ('${fileName}','${date}','Manual','Auto','${link}')`;

              try {
                pool.query(sqlQuery4, (error, result) => {

                });
              }
              catch (error) {
              }


            }
          })

          if (result[0].backupmode == 'Auto' && result[0].duration == 'Monthly') {

            job.start()
            console.log(job.getStatus())

          }

          if (result[0].backupmode == 'Auto' && result[0].duration == 'Weekly') {
            job.destroy()



            //send mail with sql file
            const mailOptions = {
              from: process.env.MAILING_USER, // Your email address
              to: result[0].backupemail, // Recipient's email address
              subject: `YesSchool SMS Data Backup : ${date}`,
              text: 'Kindly find atached for SQL file', // Plain text version of the email
              html: '<h1>Email with Attachment</h1><p>This email contains an attachment.</p>', // HTML version of the email
              attachments: [
                {
                  filename: fileName,    // Name of the attachment
                  path: `./backup/${fileName}`, // Path to the file
                  // Or, for a buffer:
                  // content: Buffer.from('hello world', 'utf8'), // Content as a buffer
                  // Or, for a stream:
                  // content: fs.createReadStream('/path/to/your/file.txt'), // Content as a stream
                },
              ],
            };


            // transporter.sendMail(mailOptions, (error, info) => {
            //   if (error) {
            //     console.error('Error sending email:', error);
            //   } else {
            //     console.log('Email sent:', info.response);
            //   }
            // });

            //insert db file info to table
            let backups = await backup(fileName)
            console.log(backups)
            let link =
              process.env.SERVERLINK + "/" + fileName;
            if (backups == true) {
              let sqlQuery4 = `insert into backup (file,datetaken,mode,takenby,link) values
            ('${fileName}','${date}','Auto','Auto','${link}')`;

              try {
                pool.query(sqlQuery4, (error, result) => {

                });
              }
              catch (error) {
              }


            }
          }
        }

      })
    }
    catch { }
  })

  // start cronjob once server starts
  Cronjob.start()
  console.log(Cronjob.getStatus())

  console.log("server up and running on PORT :", port);
});
