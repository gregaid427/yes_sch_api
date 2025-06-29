# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: accountclosure
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `accountclosure` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `createdby` varchar(100) DEFAULT NULL,
  `createdat` varchar(50) DEFAULT NULL,
  `oldsession` varchar(100) DEFAULT NULL,
  `newsession` varchar(100) DEFAULT NULL,
  `activeaccountid` varchar(50) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: accountupdatelog
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `accountupdatelog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `createdby` varchar(100) DEFAULT NULL,
  `createdat` varchar(50) DEFAULT NULL,
  `balance` varchar(10) DEFAULT NULL,
  `activity` varchar(100) DEFAULT NULL,
  `arrears` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: assignfeecartegory
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `assignfeecartegory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `total` varchar(10) DEFAULT NULL,
  `feename` varchar(50) DEFAULT NULL,
  `feeid` varchar(50) DEFAULT NULL,
  `amount` decimal(50, 0) DEFAULT 0,
  `class` varchar(50) DEFAULT NULL,
  `classid` varchar(50) DEFAULT NULL,
  `scartegory` varchar(100) DEFAULT NULL,
  `feegeneratedate` varchar(50) DEFAULT NULL,
  `createdat` varchar(50) DEFAULT NULL,
  `createdby` varchar(50) DEFAULT NULL,
  `cartgroupid` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: assignfeelog
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `assignfeelog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `createdby` varchar(50) DEFAULT NULL,
  `createdat` varchar(20) DEFAULT NULL,
  `entity` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: assignfeerecord
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `assignfeerecord` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `class` varchar(100) DEFAULT NULL,
  `total` varchar(50) DEFAULT NULL,
  `createdat` varchar(100) DEFAULT NULL,
  `createdby` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `cartegory` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: attendance
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `attendance` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `groupecode` varchar(50) DEFAULT NULL,
  `entityid` varchar(50) DEFAULT NULL,
  `classid` varchar(50) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `datetaken` varchar(50) DEFAULT NULL,
  `createdat` varchar(50) DEFAULT NULL,
  `createdby` varchar(50) DEFAULT NULL,
  `session` varchar(50) DEFAULT NULL,
  `section` varchar(50) DEFAULT NULL,
  `sectionid` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 16 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: backup
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `backup` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `file` varchar(50) DEFAULT NULL,
  `datetaken` varchar(50) DEFAULT NULL,
  `takenby` varchar(50) DEFAULT NULL,
  `mode` varchar(10) DEFAULT NULL,
  `link` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: class
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `class` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `classId` varchar(20) DEFAULT NULL,
  `classexamid` varchar(20) DEFAULT NULL,
  `title` varchar(55) DEFAULT NULL,
  `section` varchar(20) DEFAULT NULL,
  `sectionid` varchar(50) DEFAULT NULL,
  `instructor` varchar(50) DEFAULT NULL,
  `isActive` varchar(10) DEFAULT NULL,
  `updatedAt` varchar(20) DEFAULT NULL,
  `updatedBy` varchar(50) DEFAULT NULL,
  `createdAt` varchar(100) DEFAULT NULL,
  `createdBy` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 10 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: clearlog
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `clearlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `createdby` varchar(100) DEFAULT NULL,
  `createdat` varchar(100) DEFAULT NULL,
  `activity` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: deletedstudent
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `deletedstudent` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` varchar(20) DEFAULT NULL,
  `student_id` varchar(20) DEFAULT NULL,
  `firstName` varchar(50) DEFAULT NULL,
  `lastName` varchar(50) DEFAULT NULL,
  `otherName` varchar(50) DEFAULT NULL,
  `class` varchar(20) DEFAULT NULL,
  `cartegory` varchar(50) NOT NULL DEFAULT 'GENERAL',
  `previousclass` varchar(50) DEFAULT NULL,
  `section` varchar(20) DEFAULT NULL,
  `religion` varchar(20) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `dateofbirth` varchar(50) DEFAULT NULL,
  `accountbalance` decimal(10, 0) DEFAULT 0,
  `status` varchar(20) DEFAULT 'current',
  `isActive` varchar(20) DEFAULT 'true',
  `filename` varchar(100) DEFAULT NULL,
  `imagelink` varchar(255) DEFAULT NULL,
  `feepayable` decimal(10, 0) NOT NULL DEFAULT 0,
  `scholarship` varchar(10) NOT NULL DEFAULT '0',
  `arrears` varchar(10) NOT NULL DEFAULT '0.00',
  `preference` varchar(255) NOT NULL DEFAULT '0',
  `feegeneratedate` varchar(50) DEFAULT NULL,
  `feegenerateforsession` varchar(100) DEFAULT NULL,
  `feegeneratecode` varchar(50) DEFAULT '0',
  `deposit` decimal(10, 0) DEFAULT 0,
  `amountpaid` varchar(10) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: examgroup
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `examgroup` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `grouptitle` varchar(100) DEFAULT NULL,
  `session` varchar(100) DEFAULT NULL,
  `sessionid` varchar(50) DEFAULT NULL,
  `createdat` varchar(50) DEFAULT NULL,
  `createdby` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 3 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: examremarkgroup
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `examremarkgroup` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `text` varchar(240) DEFAULT NULL,
  `createdat` varchar(20) DEFAULT NULL,
  `createdby` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: examresult
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `examresult` (
  `resultid` int(11) NOT NULL AUTO_INCREMENT,
  `examid` varchar(50) DEFAULT NULL,
  `examclasscode` varchar(10) DEFAULT '0',
  `subject` varchar(100) DEFAULT NULL,
  `subjectid` varchar(50) DEFAULT NULL,
  `student_id` varchar(50) DEFAULT NULL,
  `totalscore` varchar(10) DEFAULT '0',
  `examscore` varchar(10) DEFAULT '0',
  `rawexamscore` varchar(10) DEFAULT '0',
  `rawclassscore` varchar(10) DEFAULT '0',
  `classworkscore` varchar(10) DEFAULT '0',
  `othersscore` varchar(10) DEFAULT '0',
  `grade` varchar(50) DEFAULT NULL,
  `position` varchar(10) DEFAULT NULL,
  `examremark` varchar(254) DEFAULT '0',
  `teacherreamark` varchar(254) DEFAULT NULL,
  `session` varchar(50) DEFAULT NULL,
  `sessionid` varchar(50) DEFAULT NULL,
  `examgroup` varchar(50) DEFAULT NULL,
  `examgroupid` varchar(50) DEFAULT NULL,
  `overallscore` varchar(10) DEFAULT '0',
  `overallposition` varchar(10) DEFAULT '0',
  `classize` varchar(100) DEFAULT '0',
  `exampercent` varchar(10) DEFAULT NULL,
  `classworkpercent` varchar(10) DEFAULT NULL,
  `otherpercent` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`resultid`)
) ENGINE = InnoDB AUTO_INCREMENT = 11 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: examresultcode
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `examresultcode` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(100) DEFAULT NULL,
  `subject` varchar(100) DEFAULT NULL,
  `subjectid` varchar(50) DEFAULT NULL,
  `class` varchar(100) DEFAULT NULL,
  `classid` varchar(50) DEFAULT NULL,
  `section` varchar(100) DEFAULT NULL,
  `sectionid` varchar(50) DEFAULT NULL,
  `session` varchar(100) DEFAULT NULL,
  `sessionid` varchar(50) DEFAULT NULL,
  `examgroup` varchar(100) DEFAULT NULL,
  `examgroupid` varchar(50) DEFAULT NULL,
  `createdby` varchar(50) DEFAULT NULL,
  `createdat` varchar(50) DEFAULT NULL,
  `chosengrade` varchar(50) DEFAULT NULL,
  `chosengradeid` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 2 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: expense
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `expense` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `expensehead` varchar(50) DEFAULT NULL,
  `expenseheadid` varchar(50) DEFAULT NULL,
  `invoice` varchar(50) DEFAULT NULL,
  `date` varchar(50) DEFAULT NULL,
  `amount` varchar(50) DEFAULT '0.00',
  `documentlink` varchar(50) DEFAULT NULL,
  `description` varchar(50) DEFAULT NULL,
  `createdby` varchar(50) DEFAULT NULL,
  `createdat` varchar(50) DEFAULT NULL,
  `filename` varchar(50) DEFAULT NULL,
  `link` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: expensehead
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `expensehead` (
  `expensehead` varchar(50) DEFAULT NULL,
  `createdat` varchar(50) DEFAULT NULL,
  `createdby` varchar(50) DEFAULT NULL,
  `notes` varchar(50) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: feedetails
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `feedetails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `receiptid` varchar(20) DEFAULT NULL,
  `feeitem` varchar(100) DEFAULT NULL,
  `feeamount` varchar(10) DEFAULT '0',
  `amountapportioned` varchar(10) DEFAULT '0',
  `totalfeepaid` varchar(5) DEFAULT '0',
  `balbeforepay` varchar(10) DEFAULT '0',
  `balance` varchar(5) DEFAULT '0',
  `stdname` varchar(50) DEFAULT NULL,
  `class` varchar(20) DEFAULT NULL,
  `section` varchar(50) DEFAULT NULL,
  `classid` varchar(20) DEFAULT NULL,
  `student_id` varchar(40) DEFAULT NULL,
  `collectedby` varchar(50) DEFAULT NULL,
  `staffid` varchar(30) DEFAULT NULL,
  `datecollected` varchar(30) DEFAULT NULL,
  `sessionid` varchar(20) DEFAULT NULL,
  `session` varchar(50) DEFAULT NULL,
  `activeaccountid` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: feegeneraterecord
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `feegeneraterecord` (
  `code` varchar(20) DEFAULT NULL,
  `session` varchar(30) DEFAULT NULL,
  `createdby` varchar(20) DEFAULT NULL,
  `date` varchar(30) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entity` varchar(250) DEFAULT NULL,
  `description` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: feepaymentrecords
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `feepaymentrecords` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` varchar(100) DEFAULT NULL,
  `amountpaid` varchar(100) DEFAULT '0',
  `stdname` varchar(100) DEFAULT NULL,
  `class` varchar(50) DEFAULT NULL,
  `mode` varchar(100) DEFAULT NULL,
  `balbeforepayment` varchar(100) DEFAULT NULL,
  `balanceafterpayment` varchar(100) DEFAULT NULL,
  `arrears` varchar(20) DEFAULT NULL,
  `session` varchar(50) DEFAULT NULL,
  `activeaccountid` varchar(20) DEFAULT '0',
  `date` varchar(100) DEFAULT NULL,
  `collectedby` varchar(100) DEFAULT NULL,
  `receiptid` varchar(100) DEFAULT NULL,
  `amountinvolved` varchar(10) DEFAULT NULL,
  `activity` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: feesgroup
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `feesgroup` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `feeid` varchar(100) DEFAULT NULL,
  `name` varchar(60) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `createdby` varchar(50) DEFAULT NULL,
  `createdat` varchar(50) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: financelog
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `financelog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `activity` varchar(100) DEFAULT NULL,
  `amount` varchar(100) DEFAULT NULL,
  `createdby` varchar(100) DEFAULT NULL,
  `createdat` varchar(100) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `entity` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: grade
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `grade` (
  `gradeid` int(11) NOT NULL AUTO_INCREMENT,
  `gradecode` varchar(10) DEFAULT NULL,
  `gradetitle` varchar(100) DEFAULT NULL,
  `gradetitleid` varchar(50) DEFAULT NULL,
  `minscore` varchar(10) DEFAULT NULL,
  `maxscore` varchar(10) DEFAULT NULL,
  `scoreremarks` varchar(50) DEFAULT NULL,
  `grades` varchar(50) DEFAULT NULL,
  `exampercent` varchar(10) DEFAULT '0',
  `classworkpercent` varchar(10) DEFAULT '0',
  `otherscorepercent` varchar(10) DEFAULT '0',
  `createdby` varchar(50) DEFAULT NULL,
  `createdat` varchar(50) DEFAULT NULL,
  `notes` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`gradeid`)
) ENGINE = InnoDB AUTO_INCREMENT = 3 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: graduatedstudent
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `graduatedstudent` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` varchar(20) DEFAULT NULL,
  `student_id` varchar(20) DEFAULT NULL,
  `firstName` varchar(50) DEFAULT NULL,
  `lastName` varchar(50) DEFAULT NULL,
  `otherName` varchar(50) DEFAULT NULL,
  `class` varchar(20) DEFAULT NULL,
  `cartegory` varchar(50) NOT NULL DEFAULT 'GENERAL',
  `previousclass` varchar(50) DEFAULT NULL,
  `section` varchar(20) DEFAULT NULL,
  `religion` varchar(20) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `dateofbirth` varchar(50) DEFAULT NULL,
  `accountbalance` decimal(10, 0) DEFAULT 0,
  `status` varchar(20) DEFAULT 'current',
  `isActive` varchar(20) DEFAULT 'true',
  `filename` varchar(100) DEFAULT NULL,
  `imagelink` varchar(255) DEFAULT NULL,
  `feepayable` decimal(10, 0) NOT NULL DEFAULT 0,
  `scholarship` varchar(10) NOT NULL DEFAULT '0',
  `arrears` varchar(10) NOT NULL DEFAULT '0.00',
  `preference` varchar(255) NOT NULL DEFAULT '0',
  `feegeneratedate` varchar(50) DEFAULT NULL,
  `feegenerateforsession` varchar(100) DEFAULT NULL,
  `feegeneratecode` varchar(50) DEFAULT '0',
  `deposit` decimal(10, 0) DEFAULT 0,
  `amountpaid` varchar(10) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: guardian
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `guardian` (
  `guardianId` int(11) NOT NULL AUTO_INCREMENT,
  `userId` varchar(20) DEFAULT NULL,
  `student_Id` varchar(20) DEFAULT NULL,
  `gFirstName` varchar(30) DEFAULT NULL,
  `gLastName` varchar(30) DEFAULT NULL,
  `gOtherName` varchar(30) DEFAULT NULL,
  `originalemail` varchar(50) DEFAULT NULL,
  `gContact1` varchar(20) DEFAULT '0 ',
  `gContact2` varchar(30) DEFAULT '0 ',
  `gEmail` varchar(20) DEFAULT NULL,
  `gAddress` varchar(50) DEFAULT NULL,
  `gAddressLandmark` varchar(50) DEFAULT NULL,
  `gSex` varchar(10) DEFAULT NULL,
  `gRelation` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`guardianId`)
) ENGINE = InnoDB AUTO_INCREMENT = 6 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: inventory
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `inventory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `itemId` varchar(100) DEFAULT NULL,
  `itemName` varchar(50) DEFAULT NULL,
  `cartegory` varchar(50) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `CreatedBy` varchar(50) DEFAULT NULL,
  `supplier` varchar(50) DEFAULT NULL,
  `price` varchar(100) DEFAULT '0.00',
  `totalqty` varchar(1000) NOT NULL DEFAULT '0',
  `createdAt` varchar(50) DEFAULT NULL,
  `supplierContact1` varchar(50) DEFAULT NULL,
  `supplierContact2` varchar(50) DEFAULT NULL,
  `SupplierInfo` varchar(100) DEFAULT NULL,
  `isActive` varchar(10) DEFAULT 'true',
  PRIMARY KEY (`id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: inventorycartegory
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `inventorycartegory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cartegoryname` varchar(40) DEFAULT NULL,
  `createdby` varchar(40) DEFAULT NULL,
  `createdat` varchar(40) DEFAULT NULL,
  `isactive` varchar(10) DEFAULT NULL,
  `notes` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: inventorystock
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `inventorystock` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item` varchar(50) DEFAULT NULL,
  `availableqty` varchar(20) DEFAULT '0',
  `quantity` int(11) DEFAULT 0,
  `cartegory` varchar(50) DEFAULT NULL,
  `supplier` varchar(30) DEFAULT NULL,
  `createdby` varchar(50) DEFAULT NULL,
  `date` varchar(50) DEFAULT NULL,
  `isactive` varchar(10) DEFAULT 'true',
  `note` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: loginlog
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `loginlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` varchar(20) DEFAULT NULL,
  `firstName` varchar(50) DEFAULT NULL,
  `lastName` varchar(50) DEFAULT NULL,
  `otherName` varchar(50) DEFAULT NULL,
  `role` varchar(50) DEFAULT NULL,
  `date` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 23 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: scholarshipenroll
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `scholarshipenroll` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` varchar(20) DEFAULT NULL,
  `scholarshiptitle` varchar(50) DEFAULT NULL,
  `scholarshipid` varchar(10) DEFAULT NULL,
  `createdat` varchar(50) DEFAULT NULL,
  `createdby` varchar(20) DEFAULT NULL,
  `amount` varchar(10) DEFAULT NULL,
  `cartegorycovering` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 2 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: scholarshiplist
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `scholarshiplist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL,
  `amount` varchar(50) DEFAULT NULL,
  `percentage` varchar(10) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `percent` varchar(10) DEFAULT NULL,
  `feecartapplicable` varchar(20) DEFAULT NULL,
  `applicable` varchar(20) DEFAULT NULL,
  `createdat` varchar(50) DEFAULT NULL,
  `createdby` varchar(50) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 2 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: school
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `school` (
  `name` varchar(60) DEFAULT NULL,
  `address` varchar(1000) DEFAULT NULL,
  `contact1` varchar(50) DEFAULT NULL,
  `contact2` varchar(50) DEFAULT NULL,
  `logolink` varchar(100) DEFAULT NULL,
  `filename` varchar(200) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `backupmode` varchar(20) NOT NULL DEFAULT 'Auto',
  `duration` varchar(20) DEFAULT 'Monthly',
  `backupemail` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 2 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: sectiongroup
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `sectiongroup` (
  `id` varchar(10) DEFAULT '0',
  `sectionName` varchar(50) DEFAULT NULL,
  `isActive` varchar(50) DEFAULT NULL,
  `createdAt` varchar(50) DEFAULT NULL,
  `createdBy` varchar(50) DEFAULT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: session
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `session` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sessionname` varchar(50) DEFAULT NULL,
  `sessionaccountid` varchar(20) DEFAULT NULL,
  `activeaccountid` varchar(20) DEFAULT '0',
  `activesessionname` varchar(50) DEFAULT '0',
  `startmonth` varchar(10) DEFAULT NULL,
  `createdat` varchar(50) DEFAULT NULL,
  `createdby` varchar(50) DEFAULT NULL,
  `active` varchar(50) DEFAULT 'false',
  `sessioncode` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 3 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: session_0mlk3zkm4
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `session_0mlk3zkm4` (
  `student_id` varchar(40) DEFAULT NULL,
  `amountpaid` varchar(10) DEFAULT '0',
  `firstName` varchar(50) DEFAULT NULL,
  `lastName` varchar(50) DEFAULT NULL,
  `otherName` varchar(50) DEFAULT NULL,
  `class` varchar(50) DEFAULT NULL,
  `arrears` varchar(20) DEFAULT NULL,
  `session` varchar(50) DEFAULT NULL,
  `activeaccountid` varchar(20) DEFAULT '0',
  `feepayable` varchar(10) DEFAULT '0',
  `preference` varchar(80) DEFAULT '0',
  `scholarship` varchar(10) DEFAULT '0',
  `accountbalance` varchar(10) DEFAULT '0',
  `date` varchar(50) DEFAULT NULL,
  `createdby` varchar(10) DEFAULT '0'
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: session_24khnb2c0
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `session_24khnb2c0` (
  `student_id` varchar(40) DEFAULT NULL,
  `amountpaid` varchar(10) DEFAULT '0',
  `firstName` varchar(50) DEFAULT NULL,
  `lastName` varchar(50) DEFAULT NULL,
  `otherName` varchar(50) DEFAULT NULL,
  `class` varchar(50) DEFAULT NULL,
  `arrears` varchar(20) DEFAULT NULL,
  `session` varchar(50) DEFAULT NULL,
  `activeaccountid` varchar(20) DEFAULT '0',
  `feepayable` varchar(10) DEFAULT '0',
  `preference` varchar(80) DEFAULT '0',
  `scholarship` varchar(10) DEFAULT '0',
  `accountbalance` varchar(10) DEFAULT '0',
  `date` varchar(50) DEFAULT NULL,
  `createdby` varchar(10) DEFAULT '0'
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: session_d3q3cmfbs
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `session_d3q3cmfbs` (
  `student_id` varchar(40) DEFAULT NULL,
  `amountpaid` varchar(10) DEFAULT '0',
  `firstName` varchar(50) DEFAULT NULL,
  `lastName` varchar(50) DEFAULT NULL,
  `otherName` varchar(50) DEFAULT NULL,
  `class` varchar(50) DEFAULT NULL,
  `arrears` varchar(20) DEFAULT NULL,
  `session` varchar(50) DEFAULT NULL,
  `activeaccountid` varchar(20) DEFAULT '0',
  `feepayable` varchar(10) DEFAULT '0',
  `preference` varchar(80) DEFAULT '0',
  `scholarship` varchar(10) DEFAULT '0',
  `accountbalance` varchar(10) DEFAULT '0',
  `date` varchar(50) DEFAULT NULL,
  `createdby` varchar(10) DEFAULT '0'
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: sessionacountrecords
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `sessionacountrecords` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `session` varchar(100) DEFAULT NULL,
  `sessionid` int(11) DEFAULT NULL,
  `amountcollected` int(11) DEFAULT NULL,
  `sessionarrears` varchar(10) DEFAULT NULL,
  `previousarrears` varchar(10) DEFAULT NULL,
  `arrearscarryforward` varchar(10) DEFAULT NULL,
  `nextsession` varchar(10) DEFAULT NULL,
  `createdby` varchar(20) DEFAULT NULL,
  `createdat` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: staff
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `staff` (
  `userId` varchar(20) DEFAULT NULL,
  `sEmail` varchar(50) DEFAULT NULL,
  `sGender` varchar(50) DEFAULT NULL,
  `sLastName` varchar(50) DEFAULT NULL,
  `sFirstName` varchar(50) DEFAULT NULL,
  `contact1` varchar(50) DEFAULT NULL,
  `contact2` varchar(50) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `staffId` varchar(50) DEFAULT NULL,
  `definedRole` varchar(50) DEFAULT NULL,
  `rolecode` varchar(20) DEFAULT NULL,
  `info` varchar(100) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `active` varchar(20) DEFAULT 'True',
  PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 3 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: student
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `student` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` varchar(20) DEFAULT NULL,
  `student_id` varchar(20) DEFAULT NULL,
  `firstName` varchar(50) DEFAULT NULL,
  `lastName` varchar(50) DEFAULT NULL,
  `otherName` varchar(50) DEFAULT NULL,
  `class` varchar(20) DEFAULT NULL,
  `classid` varchar(50) DEFAULT NULL,
  `cartegory` varchar(50) NOT NULL DEFAULT 'GENERAL',
  `cartegoryid` varchar(50) DEFAULT NULL,
  `previousclass` varchar(50) DEFAULT NULL,
  `section` varchar(20) DEFAULT NULL,
  `sectionid` varchar(50) DEFAULT NULL,
  `religion` varchar(20) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `dateofbirth` varchar(50) DEFAULT NULL,
  `accountbalance` decimal(10, 0) DEFAULT 0,
  `feedetails` varchar(254) DEFAULT '0',
  `status` varchar(20) DEFAULT 'current',
  `isActive` varchar(20) DEFAULT 'true',
  `filename` varchar(100) DEFAULT NULL,
  `imagelink` varchar(255) DEFAULT NULL,
  `feepayable` decimal(10, 0) NOT NULL DEFAULT 0,
  `scholarship` varchar(10) NOT NULL DEFAULT '0',
  `arrears` varchar(10) NOT NULL DEFAULT '0.00',
  `preference` varchar(255) NOT NULL DEFAULT '0',
  `preferenceamount` varchar(10) DEFAULT '0',
  `feegeneratedate` varchar(50) DEFAULT NULL,
  `feegenerateforsession` varchar(100) DEFAULT NULL,
  `feegeneratecode` varchar(50) DEFAULT '0',
  `deposit` decimal(10, 0) DEFAULT 0,
  `amountpaid` varchar(10) DEFAULT '0',
  `accumulatedscore` varchar(100) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 6 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: studentscartegory
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `studentscartegory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `createdby` varchar(50) DEFAULT NULL,
  `createdat` varchar(50) DEFAULT NULL,
  `cartid` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 4 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: subject
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `subject` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subjectcode` varchar(50) DEFAULT NULL,
  `subjectname` varchar(50) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `isactive` varchar(11) DEFAULT 'true',
  `createdat` varchar(50) DEFAULT NULL,
  `createdby` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 5 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: users
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `users` (
  `userId` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `role` varchar(10) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  `pass` varchar(20) DEFAULT NULL,
  `rolecode` varchar(21) DEFAULT '0',
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `pincode` varchar(20) DEFAULT NULL,
  `createdAt` varchar(50) DEFAULT NULL,
  `createdBy` varchar(20) DEFAULT NULL,
  `isActive` varchar(10) DEFAULT 'true',
  PRIMARY KEY (`Id`)
) ENGINE = InnoDB AUTO_INCREMENT = 12 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: accountclosure
# ------------------------------------------------------------


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: accountupdatelog
# ------------------------------------------------------------


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: assignfeecartegory
# ------------------------------------------------------------


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: assignfeelog
# ------------------------------------------------------------


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: assignfeerecord
# ------------------------------------------------------------


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: attendance
# ------------------------------------------------------------

INSERT INTO
  `attendance` (
    `id`,
    `groupecode`,
    `entityid`,
    `classid`,
    `status`,
    `datetaken`,
    `createdat`,
    `createdby`,
    `session`,
    `section`,
    `sectionid`
  )
VALUES
  (
    1,
    '9233',
    'SD20251110',
    'GRADE 1',
    'Present',
    '2025-05-28',
    'Wed, 28 May 2025 11:27:03 GMT',
    'User Test',
    '1ST TERM 2025/2026',
    'All Sections',
    NULL
  );
INSERT INTO
  `attendance` (
    `id`,
    `groupecode`,
    `entityid`,
    `classid`,
    `status`,
    `datetaken`,
    `createdat`,
    `createdby`,
    `session`,
    `section`,
    `sectionid`
  )
VALUES
  (
    2,
    '9233',
    'SD20251113',
    'GRADE 1',
    'Absent',
    '2025-05-28',
    'Wed, 28 May 2025 11:27:03 GMT',
    'User Test',
    '1ST TERM 2025/2026',
    'All Sections',
    NULL
  );
INSERT INTO
  `attendance` (
    `id`,
    `groupecode`,
    `entityid`,
    `classid`,
    `status`,
    `datetaken`,
    `createdat`,
    `createdby`,
    `session`,
    `section`,
    `sectionid`
  )
VALUES
  (
    3,
    '9233',
    'SD20251114',
    'GRADE 1',
    'Absent',
    '2025-05-28',
    'Wed, 28 May 2025 11:27:03 GMT',
    'User Test',
    '1ST TERM 2025/2026',
    'All Sections',
    NULL
  );
INSERT INTO
  `attendance` (
    `id`,
    `groupecode`,
    `entityid`,
    `classid`,
    `status`,
    `datetaken`,
    `createdat`,
    `createdby`,
    `session`,
    `section`,
    `sectionid`
  )
VALUES
  (
    4,
    '9233',
    'SD20251111',
    'GRADE 1',
    'Absent',
    '2025-05-28',
    'Wed, 28 May 2025 11:27:03 GMT',
    'User Test',
    '1ST TERM 2025/2026',
    'All Sections',
    NULL
  );
INSERT INTO
  `attendance` (
    `id`,
    `groupecode`,
    `entityid`,
    `classid`,
    `status`,
    `datetaken`,
    `createdat`,
    `createdby`,
    `session`,
    `section`,
    `sectionid`
  )
VALUES
  (
    5,
    '9233',
    'SD20251112',
    'GRADE 1',
    'Absent',
    '2025-05-28',
    'Wed, 28 May 2025 11:27:03 GMT',
    'User Test',
    '1ST TERM 2025/2026',
    'All Sections',
    NULL
  );
INSERT INTO
  `attendance` (
    `id`,
    `groupecode`,
    `entityid`,
    `classid`,
    `status`,
    `datetaken`,
    `createdat`,
    `createdby`,
    `session`,
    `section`,
    `sectionid`
  )
VALUES
  (
    6,
    '2852',
    'SD20251113',
    'GRADE 1',
    'Absent',
    '2025-05-30',
    'Thu, 29 May 2025 14:53:11 GMT',
    'User Test',
    '1ST TERM 2025/2026',
    'All Sections',
    NULL
  );
INSERT INTO
  `attendance` (
    `id`,
    `groupecode`,
    `entityid`,
    `classid`,
    `status`,
    `datetaken`,
    `createdat`,
    `createdby`,
    `session`,
    `section`,
    `sectionid`
  )
VALUES
  (
    7,
    '2852',
    'SD20251112',
    'GRADE 1',
    'Absent',
    '2025-05-30',
    'Thu, 29 May 2025 14:53:11 GMT',
    'User Test',
    '1ST TERM 2025/2026',
    'All Sections',
    NULL
  );
INSERT INTO
  `attendance` (
    `id`,
    `groupecode`,
    `entityid`,
    `classid`,
    `status`,
    `datetaken`,
    `createdat`,
    `createdby`,
    `session`,
    `section`,
    `sectionid`
  )
VALUES
  (
    8,
    '2852',
    'SD20251114',
    'GRADE 1',
    'Absent',
    '2025-05-30',
    'Thu, 29 May 2025 14:53:11 GMT',
    'User Test',
    '1ST TERM 2025/2026',
    'All Sections',
    NULL
  );
INSERT INTO
  `attendance` (
    `id`,
    `groupecode`,
    `entityid`,
    `classid`,
    `status`,
    `datetaken`,
    `createdat`,
    `createdby`,
    `session`,
    `section`,
    `sectionid`
  )
VALUES
  (
    9,
    '2852',
    'SD20251111',
    'GRADE 1',
    'Absent',
    '2025-05-30',
    'Thu, 29 May 2025 14:53:11 GMT',
    'User Test',
    '1ST TERM 2025/2026',
    'All Sections',
    NULL
  );
INSERT INTO
  `attendance` (
    `id`,
    `groupecode`,
    `entityid`,
    `classid`,
    `status`,
    `datetaken`,
    `createdat`,
    `createdby`,
    `session`,
    `section`,
    `sectionid`
  )
VALUES
  (
    10,
    '2852',
    'SD20251110',
    'GRADE 1',
    'Absent',
    '2025-05-30',
    'Thu, 29 May 2025 14:53:11 GMT',
    'User Test',
    '1ST TERM 2025/2026',
    'All Sections',
    NULL
  );
INSERT INTO
  `attendance` (
    `id`,
    `groupecode`,
    `entityid`,
    `classid`,
    `status`,
    `datetaken`,
    `createdat`,
    `createdby`,
    `session`,
    `section`,
    `sectionid`
  )
VALUES
  (
    11,
    '6156',
    'SD20251112',
    'GRADE 1',
    'Present',
    '2025-05-31',
    'Sat, 31 May 2025 08:39:00 GMT',
    'User Test',
    '1ST TERM 2025/2026',
    'All Sections',
    NULL
  );
INSERT INTO
  `attendance` (
    `id`,
    `groupecode`,
    `entityid`,
    `classid`,
    `status`,
    `datetaken`,
    `createdat`,
    `createdby`,
    `session`,
    `section`,
    `sectionid`
  )
VALUES
  (
    12,
    '6156',
    'SD20251110',
    'GRADE 1',
    'Present',
    '2025-05-31',
    'Sat, 31 May 2025 08:39:00 GMT',
    'User Test',
    '1ST TERM 2025/2026',
    'All Sections',
    NULL
  );
INSERT INTO
  `attendance` (
    `id`,
    `groupecode`,
    `entityid`,
    `classid`,
    `status`,
    `datetaken`,
    `createdat`,
    `createdby`,
    `session`,
    `section`,
    `sectionid`
  )
VALUES
  (
    13,
    '6156',
    'SD20251113',
    'GRADE 1',
    'Absent',
    '2025-05-31',
    'Sat, 31 May 2025 08:39:00 GMT',
    'User Test',
    '1ST TERM 2025/2026',
    'All Sections',
    NULL
  );
INSERT INTO
  `attendance` (
    `id`,
    `groupecode`,
    `entityid`,
    `classid`,
    `status`,
    `datetaken`,
    `createdat`,
    `createdby`,
    `session`,
    `section`,
    `sectionid`
  )
VALUES
  (
    14,
    '6156',
    'SD20251111',
    'GRADE 1',
    'Present',
    '2025-05-31',
    'Sat, 31 May 2025 08:39:00 GMT',
    'User Test',
    '1ST TERM 2025/2026',
    'All Sections',
    NULL
  );
INSERT INTO
  `attendance` (
    `id`,
    `groupecode`,
    `entityid`,
    `classid`,
    `status`,
    `datetaken`,
    `createdat`,
    `createdby`,
    `session`,
    `section`,
    `sectionid`
  )
VALUES
  (
    15,
    '6156',
    'SD20251114',
    'GRADE 1',
    'Absent',
    '2025-05-31',
    'Sat, 31 May 2025 08:39:00 GMT',
    'User Test',
    '1ST TERM 2025/2026',
    'All Sections',
    NULL
  );

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: backup
# ------------------------------------------------------------


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: class
# ------------------------------------------------------------

INSERT INTO
  `class` (
    `id`,
    `classId`,
    `classexamid`,
    `title`,
    `section`,
    `sectionid`,
    `instructor`,
    `isActive`,
    `updatedAt`,
    `updatedBy`,
    `createdAt`,
    `createdBy`
  )
VALUES
  (
    4,
    '500819',
    '1743194',
    'GRADE 1',
    'B',
    '6316',
    '',
    'true',
    NULL,
    NULL,
    'Mon, 26 May 2025 09:16:02 GMT',
    'User Test'
  );
INSERT INTO
  `class` (
    `id`,
    `classId`,
    `classexamid`,
    `title`,
    `section`,
    `sectionid`,
    `instructor`,
    `isActive`,
    `updatedAt`,
    `updatedBy`,
    `createdAt`,
    `createdBy`
  )
VALUES
  (
    5,
    '500819',
    '5182678',
    'GRADE 1',
    'A',
    '7857',
    '',
    'true',
    NULL,
    NULL,
    'Mon, 26 May 2025 09:16:02 GMT',
    'User Test'
  );
INSERT INTO
  `class` (
    `id`,
    `classId`,
    `classexamid`,
    `title`,
    `section`,
    `sectionid`,
    `instructor`,
    `isActive`,
    `updatedAt`,
    `updatedBy`,
    `createdAt`,
    `createdBy`
  )
VALUES
  (
    6,
    '399847',
    '8505569',
    'GRADE 2',
    'A',
    '7857',
    '',
    'true',
    NULL,
    NULL,
    'Mon, 26 May 2025 09:16:02 GMT',
    'User Test'
  );
INSERT INTO
  `class` (
    `id`,
    `classId`,
    `classexamid`,
    `title`,
    `section`,
    `sectionid`,
    `instructor`,
    `isActive`,
    `updatedAt`,
    `updatedBy`,
    `createdAt`,
    `createdBy`
  )
VALUES
  (
    7,
    '964245',
    '7302229',
    'GRADE 3',
    'B',
    '6316',
    '',
    'true',
    NULL,
    NULL,
    'Mon, 26 May 2025 09:16:02 GMT',
    'User Test'
  );
INSERT INTO
  `class` (
    `id`,
    `classId`,
    `classexamid`,
    `title`,
    `section`,
    `sectionid`,
    `instructor`,
    `isActive`,
    `updatedAt`,
    `updatedBy`,
    `createdAt`,
    `createdBy`
  )
VALUES
  (
    8,
    '964245',
    '5925832',
    'GRADE 3',
    'A',
    '7857',
    '',
    'true',
    NULL,
    NULL,
    'Mon, 26 May 2025 09:16:02 GMT',
    'User Test'
  );
INSERT INTO
  `class` (
    `id`,
    `classId`,
    `classexamid`,
    `title`,
    `section`,
    `sectionid`,
    `instructor`,
    `isActive`,
    `updatedAt`,
    `updatedBy`,
    `createdAt`,
    `createdBy`
  )
VALUES
  (
    9,
    '409792',
    '3169146',
    'GRADE 4',
    'A',
    '7857',
    '',
    'true',
    NULL,
    NULL,
    'Tue, 27 May 2025 09:18:54 GMT',
    'User Test'
  );

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: clearlog
# ------------------------------------------------------------


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: deletedstudent
# ------------------------------------------------------------


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: examgroup
# ------------------------------------------------------------

INSERT INTO
  `examgroup` (
    `id`,
    `grouptitle`,
    `session`,
    `sessionid`,
    `createdat`,
    `createdby`
  )
VALUES
  (
    1,
    'EOT',
    NULL,
    NULL,
    'Wed May 28 2025 14:41:12 GMT+0000 (Greenwich Mean ',
    'User Test'
  );
INSERT INTO
  `examgroup` (
    `id`,
    `grouptitle`,
    `session`,
    `sessionid`,
    `createdat`,
    `createdby`
  )
VALUES
  (
    2,
    'END OF TERM',
    NULL,
    NULL,
    'Fri Jun 27 2025 13:56:12 GMT+0000 (Coordinated Uni',
    'User Test'
  );

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: examremarkgroup
# ------------------------------------------------------------


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: examresult
# ------------------------------------------------------------

INSERT INTO
  `examresult` (
    `resultid`,
    `examid`,
    `examclasscode`,
    `subject`,
    `subjectid`,
    `student_id`,
    `totalscore`,
    `examscore`,
    `rawexamscore`,
    `rawclassscore`,
    `classworkscore`,
    `othersscore`,
    `grade`,
    `position`,
    `examremark`,
    `teacherreamark`,
    `session`,
    `sessionid`,
    `examgroup`,
    `examgroupid`,
    `overallscore`,
    `overallposition`,
    `classize`,
    `exampercent`,
    `classworkpercent`,
    `otherpercent`
  )
VALUES
  (
    6,
    'MAT6823',
    'undefined',
    'MATHS',
    NULL,
    'SD20251110',
    '50',
    '22',
    '56',
    '45',
    '27',
    '0',
    '-',
    '3',
    'good',
    'ddddddddddddd',
    '1ST TERM 2025/2026',
    NULL,
    'EOT',
    NULL,
    '0',
    '0',
    '5',
    '40',
    '60',
    '0'
  );
INSERT INTO
  `examresult` (
    `resultid`,
    `examid`,
    `examclasscode`,
    `subject`,
    `subjectid`,
    `student_id`,
    `totalscore`,
    `examscore`,
    `rawexamscore`,
    `rawclassscore`,
    `classworkscore`,
    `othersscore`,
    `grade`,
    `position`,
    `examremark`,
    `teacherreamark`,
    `session`,
    `sessionid`,
    `examgroup`,
    `examgroupid`,
    `overallscore`,
    `overallposition`,
    `classize`,
    `exampercent`,
    `classworkpercent`,
    `otherpercent`
  )
VALUES
  (
    7,
    'MAT6823',
    'undefined',
    'MATHS',
    NULL,
    'SD20251111',
    '62',
    '22',
    '56',
    '65',
    '39',
    '0',
    '-',
    '1',
    'good',
    'ddddddddddddd',
    '1ST TERM 2025/2026',
    NULL,
    'EOT',
    NULL,
    '0',
    '0',
    '5',
    '40',
    '60',
    '0'
  );
INSERT INTO
  `examresult` (
    `resultid`,
    `examid`,
    `examclasscode`,
    `subject`,
    `subjectid`,
    `student_id`,
    `totalscore`,
    `examscore`,
    `rawexamscore`,
    `rawclassscore`,
    `classworkscore`,
    `othersscore`,
    `grade`,
    `position`,
    `examremark`,
    `teacherreamark`,
    `session`,
    `sessionid`,
    `examgroup`,
    `examgroupid`,
    `overallscore`,
    `overallposition`,
    `classize`,
    `exampercent`,
    `classworkpercent`,
    `otherpercent`
  )
VALUES
  (
    8,
    'MAT6823',
    'undefined',
    'MATHS',
    NULL,
    'SD20251112',
    '45',
    '18',
    '45',
    '45',
    '27',
    '0',
    '-',
    '4',
    'bad',
    NULL,
    '1ST TERM 2025/2026',
    NULL,
    'EOT',
    NULL,
    '0',
    '0',
    '5',
    '40',
    '60',
    '0'
  );
INSERT INTO
  `examresult` (
    `resultid`,
    `examid`,
    `examclasscode`,
    `subject`,
    `subjectid`,
    `student_id`,
    `totalscore`,
    `examscore`,
    `rawexamscore`,
    `rawclassscore`,
    `classworkscore`,
    `othersscore`,
    `grade`,
    `position`,
    `examremark`,
    `teacherreamark`,
    `session`,
    `sessionid`,
    `examgroup`,
    `examgroupid`,
    `overallscore`,
    `overallposition`,
    `classize`,
    `exampercent`,
    `classworkpercent`,
    `otherpercent`
  )
VALUES
  (
    9,
    'MAT6823',
    'undefined',
    'MATHS',
    NULL,
    'SD20251113',
    '43',
    '22',
    '56',
    '34',
    '20',
    '0',
    '-',
    '5',
    'bad',
    NULL,
    '1ST TERM 2025/2026',
    NULL,
    'EOT',
    NULL,
    '0',
    '0',
    '5',
    '40',
    '60',
    '0'
  );
INSERT INTO
  `examresult` (
    `resultid`,
    `examid`,
    `examclasscode`,
    `subject`,
    `subjectid`,
    `student_id`,
    `totalscore`,
    `examscore`,
    `rawexamscore`,
    `rawclassscore`,
    `classworkscore`,
    `othersscore`,
    `grade`,
    `position`,
    `examremark`,
    `teacherreamark`,
    `session`,
    `sessionid`,
    `examgroup`,
    `examgroupid`,
    `overallscore`,
    `overallposition`,
    `classize`,
    `exampercent`,
    `classworkpercent`,
    `otherpercent`
  )
VALUES
  (
    10,
    'MAT6823',
    'undefined',
    'MATHS',
    NULL,
    'SD20251114',
    '62',
    '22',
    '56',
    '65',
    '39',
    '0',
    '-',
    '1',
    'good',
    NULL,
    '1ST TERM 2025/2026',
    NULL,
    'EOT',
    NULL,
    '0',
    '0',
    '5',
    '40',
    '60',
    '0'
  );

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: examresultcode
# ------------------------------------------------------------

INSERT INTO
  `examresultcode` (
    `id`,
    `code`,
    `subject`,
    `subjectid`,
    `class`,
    `classid`,
    `section`,
    `sectionid`,
    `session`,
    `sessionid`,
    `examgroup`,
    `examgroupid`,
    `createdby`,
    `createdat`,
    `chosengrade`,
    `chosengradeid`
  )
VALUES
  (
    1,
    'MAT6823',
    'MATHS',
    NULL,
    'GRADE 1',
    NULL,
    'A',
    NULL,
    '1ST TERM 2025/2026',
    NULL,
    'EOT',
    NULL,
    'User Test',
    'Thu May 29 2025 14:53:11 GMT+0000 (Greenwich Mean ',
    'test',
    NULL
  );

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: expense
# ------------------------------------------------------------


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: expensehead
# ------------------------------------------------------------


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: feedetails
# ------------------------------------------------------------


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: feegeneraterecord
# ------------------------------------------------------------


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: feepaymentrecords
# ------------------------------------------------------------


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: feesgroup
# ------------------------------------------------------------


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: financelog
# ------------------------------------------------------------


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: grade
# ------------------------------------------------------------

INSERT INTO
  `grade` (
    `gradeid`,
    `gradecode`,
    `gradetitle`,
    `gradetitleid`,
    `minscore`,
    `maxscore`,
    `scoreremarks`,
    `grades`,
    `exampercent`,
    `classworkpercent`,
    `otherscorepercent`,
    `createdby`,
    `createdat`,
    `notes`
  )
VALUES
  (
    1,
    '565',
    'test',
    NULL,
    '50',
    '100',
    'good',
    '-',
    '40',
    '60',
    '0',
    'User Test',
    '2025-05-29',
    ''
  );
INSERT INTO
  `grade` (
    `gradeid`,
    `gradecode`,
    `gradetitle`,
    `gradetitleid`,
    `minscore`,
    `maxscore`,
    `scoreremarks`,
    `grades`,
    `exampercent`,
    `classworkpercent`,
    `otherscorepercent`,
    `createdby`,
    `createdat`,
    `notes`
  )
VALUES
  (
    2,
    '565',
    'test',
    NULL,
    '0',
    '49',
    'bad',
    '-',
    '40',
    '60',
    '0',
    'User Test',
    '2025-05-29',
    ''
  );

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: graduatedstudent
# ------------------------------------------------------------


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: guardian
# ------------------------------------------------------------

INSERT INTO
  `guardian` (
    `guardianId`,
    `userId`,
    `student_Id`,
    `gFirstName`,
    `gLastName`,
    `gOtherName`,
    `originalemail`,
    `gContact1`,
    `gContact2`,
    `gEmail`,
    `gAddress`,
    `gAddressLandmark`,
    `gSex`,
    `gRelation`
  )
VALUES
  (
    3,
    'rrx1o9',
    'SD20251111',
    'ama',
    'jackie',
    NULL,
    NULL,
    '343434',
    '',
    'c v',
    '',
    NULL,
    'Male',
    'dfvcv cv'
  );
INSERT INTO
  `guardian` (
    `guardianId`,
    `userId`,
    `student_Id`,
    `gFirstName`,
    `gLastName`,
    `gOtherName`,
    `originalemail`,
    `gContact1`,
    `gContact2`,
    `gEmail`,
    `gAddress`,
    `gAddressLandmark`,
    `gSex`,
    `gRelation`
  )
VALUES
  (
    4,
    'nxol05',
    'SD20251111',
    'sdfd',
    'dfsf',
    NULL,
    NULL,
    '3435334534545',
    '4545345345',
    '343545345',
    'wedasefrf',
    NULL,
    'Male',
    'mother'
  );
INSERT INTO
  `guardian` (
    `guardianId`,
    `userId`,
    `student_Id`,
    `gFirstName`,
    `gLastName`,
    `gOtherName`,
    `originalemail`,
    `gContact1`,
    `gContact2`,
    `gEmail`,
    `gAddress`,
    `gAddressLandmark`,
    `gSex`,
    `gRelation`
  )
VALUES
  (
    5,
    'mqado2',
    'SD20251110',
    'bbb',
    'cccc',
    NULL,
    NULL,
    'xfvvdf',
    'dsdfgsf',
    'xfvfdfv',
    'cfdvf fdvgdsf dgdsgf fgdg',
    NULL,
    'Male',
    'mo'
  );

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: inventory
# ------------------------------------------------------------


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: inventorycartegory
# ------------------------------------------------------------


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: inventorystock
# ------------------------------------------------------------


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: loginlog
# ------------------------------------------------------------

INSERT INTO
  `loginlog` (
    `id`,
    `userid`,
    `firstName`,
    `lastName`,
    `otherName`,
    `role`,
    `date`
  )
VALUES
  (
    1,
    'jgut27',
    'User',
    'Test',
    NULL,
    'Admin',
    'Tue May 27 2025 09:25:37 '
  );
INSERT INTO
  `loginlog` (
    `id`,
    `userid`,
    `firstName`,
    `lastName`,
    `otherName`,
    `role`,
    `date`
  )
VALUES
  (
    2,
    'jgut27',
    'User',
    'Test',
    NULL,
    'Admin',
    'Wed May 28 2025 11:29:49 '
  );
INSERT INTO
  `loginlog` (
    `id`,
    `userid`,
    `firstName`,
    `lastName`,
    `otherName`,
    `role`,
    `date`
  )
VALUES
  (
    3,
    'jgut27',
    'User',
    'Test',
    NULL,
    'Admin',
    'Wed May 28 2025 11:35:20 '
  );
INSERT INTO
  `loginlog` (
    `id`,
    `userid`,
    `firstName`,
    `lastName`,
    `otherName`,
    `role`,
    `date`
  )
VALUES
  (
    4,
    'jgut27',
    'User',
    'Test',
    NULL,
    'Admin',
    'Wed May 28 2025 11:35:58 '
  );
INSERT INTO
  `loginlog` (
    `id`,
    `userid`,
    `firstName`,
    `lastName`,
    `otherName`,
    `role`,
    `date`
  )
VALUES
  (
    5,
    'jgut27',
    'User',
    'Test',
    NULL,
    'Admin',
    'Wed May 28 2025 11:37:10 '
  );
INSERT INTO
  `loginlog` (
    `id`,
    `userid`,
    `firstName`,
    `lastName`,
    `otherName`,
    `role`,
    `date`
  )
VALUES
  (
    6,
    'jgut27',
    'User',
    'Test',
    NULL,
    'Admin',
    'Wed May 28 2025 11:38:45 '
  );
INSERT INTO
  `loginlog` (
    `id`,
    `userid`,
    `firstName`,
    `lastName`,
    `otherName`,
    `role`,
    `date`
  )
VALUES
  (
    7,
    'jgut27',
    'User',
    'Test',
    NULL,
    'Admin',
    'Wed May 28 2025 11:57:09 '
  );
INSERT INTO
  `loginlog` (
    `id`,
    `userid`,
    `firstName`,
    `lastName`,
    `otherName`,
    `role`,
    `date`
  )
VALUES
  (
    8,
    'jgut27',
    'User',
    'Test',
    NULL,
    'Admin',
    'Wed May 28 2025 12:01:16 '
  );
INSERT INTO
  `loginlog` (
    `id`,
    `userid`,
    `firstName`,
    `lastName`,
    `otherName`,
    `role`,
    `date`
  )
VALUES
  (
    9,
    'jgut27',
    'User',
    'Test',
    NULL,
    'Admin',
    'Wed May 28 2025 12:05:25 '
  );
INSERT INTO
  `loginlog` (
    `id`,
    `userid`,
    `firstName`,
    `lastName`,
    `otherName`,
    `role`,
    `date`
  )
VALUES
  (
    10,
    'jgut27',
    'User',
    'Test',
    NULL,
    'Admin',
    'Wed May 28 2025 12:08:39 '
  );
INSERT INTO
  `loginlog` (
    `id`,
    `userid`,
    `firstName`,
    `lastName`,
    `otherName`,
    `role`,
    `date`
  )
VALUES
  (
    11,
    'jgut27',
    'User',
    'Test',
    NULL,
    'Admin',
    'Wed May 28 2025 12:15:38 '
  );
INSERT INTO
  `loginlog` (
    `id`,
    `userid`,
    `firstName`,
    `lastName`,
    `otherName`,
    `role`,
    `date`
  )
VALUES
  (
    12,
    'jgut27',
    'User',
    'Test',
    NULL,
    'Admin',
    'Thu May 29 2025 12:25:37 '
  );
INSERT INTO
  `loginlog` (
    `id`,
    `userid`,
    `firstName`,
    `lastName`,
    `otherName`,
    `role`,
    `date`
  )
VALUES
  (
    13,
    'jgut27',
    'User',
    'Test',
    NULL,
    'Admin',
    'Sat May 31 2025 08:40:47 '
  );
INSERT INTO
  `loginlog` (
    `id`,
    `userid`,
    `firstName`,
    `lastName`,
    `otherName`,
    `role`,
    `date`
  )
VALUES
  (
    14,
    'jgut27',
    'User',
    'Test',
    NULL,
    'Admin',
    'Sat May 31 2025 08:44:07 '
  );
INSERT INTO
  `loginlog` (
    `id`,
    `userid`,
    `firstName`,
    `lastName`,
    `otherName`,
    `role`,
    `date`
  )
VALUES
  (
    15,
    'jgut27',
    'User',
    'Test',
    NULL,
    'Admin',
    'Mon Jun 02 2025 14:49:51 '
  );
INSERT INTO
  `loginlog` (
    `id`,
    `userid`,
    `firstName`,
    `lastName`,
    `otherName`,
    `role`,
    `date`
  )
VALUES
  (
    16,
    'jgut27',
    'User',
    'Test',
    NULL,
    'Admin',
    'Mon Jun 16 2025 12:38:09 '
  );
INSERT INTO
  `loginlog` (
    `id`,
    `userid`,
    `firstName`,
    `lastName`,
    `otherName`,
    `role`,
    `date`
  )
VALUES
  (
    17,
    'jgut27',
    'User',
    'Test',
    NULL,
    'Admin',
    'Tue Jun 24 2025 10:35:46 '
  );
INSERT INTO
  `loginlog` (
    `id`,
    `userid`,
    `firstName`,
    `lastName`,
    `otherName`,
    `role`,
    `date`
  )
VALUES
  (
    18,
    'jgut27',
    'User',
    'Test',
    NULL,
    'Admin',
    'Wed Jun 25 2025 10:46:38 '
  );
INSERT INTO
  `loginlog` (
    `id`,
    `userid`,
    `firstName`,
    `lastName`,
    `otherName`,
    `role`,
    `date`
  )
VALUES
  (
    19,
    'jgut27',
    'User',
    'Test',
    NULL,
    'Admin',
    'Thu Jun 26 2025 10:25:53 '
  );
INSERT INTO
  `loginlog` (
    `id`,
    `userid`,
    `firstName`,
    `lastName`,
    `otherName`,
    `role`,
    `date`
  )
VALUES
  (
    20,
    'jgut27',
    'User',
    'Test',
    NULL,
    'Admin',
    'Fri Jun 27 2025 13:57:25 '
  );
INSERT INTO
  `loginlog` (
    `id`,
    `userid`,
    `firstName`,
    `lastName`,
    `otherName`,
    `role`,
    `date`
  )
VALUES
  (
    21,
    'jgut27',
    'User',
    'Test',
    NULL,
    'Admin',
    'Sat Jun 28 2025 08:06:41 '
  );
INSERT INTO
  `loginlog` (
    `id`,
    `userid`,
    `firstName`,
    `lastName`,
    `otherName`,
    `role`,
    `date`
  )
VALUES
  (
    22,
    'jgut27',
    'User',
    'Test',
    NULL,
    'Admin',
    'Sun Jun 29 2025 08:46:19 '
  );

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: scholarshipenroll
# ------------------------------------------------------------


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: scholarshiplist
# ------------------------------------------------------------


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: school
# ------------------------------------------------------------

INSERT INTO
  `school` (
    `name`,
    `address`,
    `contact1`,
    `contact2`,
    `logolink`,
    `filename`,
    `email`,
    `id`,
    `backupmode`,
    `duration`,
    `backupemail`
  )
VALUES
  (
    'Lifeline International Preparatory Schools',
    '11th Street, greenfield junction, Accra Ghana',
    '234 23424234',
    '324 34545345',
    'http://136.244.77.140:5400/hb.jpg',
    'hb.jpg',
    'lifeline@gmail.com',
    1,
    'Auto',
    'Weekly',
    'undefined'
  );

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: sectiongroup
# ------------------------------------------------------------

INSERT INTO
  `sectiongroup` (
    `id`,
    `sectionName`,
    `isActive`,
    `createdAt`,
    `createdBy`
  )
VALUES
  (
    '7857',
    'A',
    'true',
    'Mon, 26 May 2025 09:16:02 GMT',
    'User Test'
  );
INSERT INTO
  `sectiongroup` (
    `id`,
    `sectionName`,
    `isActive`,
    `createdAt`,
    `createdBy`
  )
VALUES
  (
    '6316',
    'B',
    'true',
    'Mon, 26 May 2025 09:16:02 GMT',
    'User Test'
  );
INSERT INTO
  `sectiongroup` (
    `id`,
    `sectionName`,
    `isActive`,
    `createdAt`,
    `createdBy`
  )
VALUES
  (
    '10079',
    'C',
    'true',
    'Tue, 27 May 2025 09:18:54 GMT',
    'User Test'
  );

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: session
# ------------------------------------------------------------

INSERT INTO
  `session` (
    `id`,
    `sessionname`,
    `sessionaccountid`,
    `activeaccountid`,
    `activesessionname`,
    `startmonth`,
    `createdat`,
    `createdby`,
    `active`,
    `sessioncode`
  )
VALUES
  (
    1,
    '1ST TERM 2025/2026',
    'session_0mlk3zkm4',
    'session_24khnb2c0',
    '2ND TERM 2026',
    'JANUARY',
    'Mon, 26 May 2025 09:16:02 GMT',
    'User Test',
    'false',
    'session_0mlk3zkm4'
  );
INSERT INTO
  `session` (
    `id`,
    `sessionname`,
    `sessionaccountid`,
    `activeaccountid`,
    `activesessionname`,
    `startmonth`,
    `createdat`,
    `createdby`,
    `active`,
    `sessioncode`
  )
VALUES
  (
    2,
    '2ND TERM 2026',
    'session_24khnb2c0',
    'session_24khnb2c0',
    '2ND TERM 2026',
    'JANUARY',
    'Tue, 24 Jun 2025 10:35:35 GMT',
    'User Test',
    'true',
    'session_24khnb2c0'
  );

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: session_0mlk3zkm4
# ------------------------------------------------------------


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: session_24khnb2c0
# ------------------------------------------------------------


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: session_d3q3cmfbs
# ------------------------------------------------------------


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: sessionacountrecords
# ------------------------------------------------------------


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: staff
# ------------------------------------------------------------

INSERT INTO
  `staff` (
    `userId`,
    `sEmail`,
    `sGender`,
    `sLastName`,
    `sFirstName`,
    `contact1`,
    `contact2`,
    `address`,
    `staffId`,
    `definedRole`,
    `rolecode`,
    `info`,
    `id`,
    `active`
  )
VALUES
  (
    '4id3xv',
    'user@user.com',
    'Male',
    'Test',
    'User',
    '24342343',
    '23423423423',
    '',
    NULL,
    'Admin',
    '1,2,3,4,5,6',
    '',
    1,
    'True'
  );
INSERT INTO
  `staff` (
    `userId`,
    `sEmail`,
    `sGender`,
    `sLastName`,
    `sFirstName`,
    `contact1`,
    `contact2`,
    `address`,
    `staffId`,
    `definedRole`,
    `rolecode`,
    `info`,
    `id`,
    `active`
  )
VALUES
  (
    'jgut27',
    'user@user.com',
    'Male',
    'Test',
    'User',
    '234342',
    '34234',
    '',
    NULL,
    'Admin',
    '1,2,3,4,5,6',
    '',
    2,
    'True'
  );

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: student
# ------------------------------------------------------------

INSERT INTO
  `student` (
    `id`,
    `userId`,
    `student_id`,
    `firstName`,
    `lastName`,
    `otherName`,
    `class`,
    `classid`,
    `cartegory`,
    `cartegoryid`,
    `previousclass`,
    `section`,
    `sectionid`,
    `religion`,
    `gender`,
    `dateofbirth`,
    `accountbalance`,
    `feedetails`,
    `status`,
    `isActive`,
    `filename`,
    `imagelink`,
    `feepayable`,
    `scholarship`,
    `arrears`,
    `preference`,
    `preferenceamount`,
    `feegeneratedate`,
    `feegenerateforsession`,
    `feegeneratecode`,
    `deposit`,
    `amountpaid`,
    `accumulatedscore`
  )
VALUES
  (
    1,
    'uduciu',
    'SD20251110',
    'Naa',
    'Adorley',
    '',
    'GRADE 1',
    '500819',
    'CONTINUING STUDENT',
    '1',
    NULL,
    'A',
    '7857',
    'Christianity',
    'Male',
    '01-01-2020',
    0,
    '0',
    'Pending',
    'true',
    NULL,
    NULL,
    0,
    '0',
    '0.00',
    '0',
    '0',
    NULL,
    NULL,
    '0',
    0,
    '0',
    '0'
  );
INSERT INTO
  `student` (
    `id`,
    `userId`,
    `student_id`,
    `firstName`,
    `lastName`,
    `otherName`,
    `class`,
    `classid`,
    `cartegory`,
    `cartegoryid`,
    `previousclass`,
    `section`,
    `sectionid`,
    `religion`,
    `gender`,
    `dateofbirth`,
    `accountbalance`,
    `feedetails`,
    `status`,
    `isActive`,
    `filename`,
    `imagelink`,
    `feepayable`,
    `scholarship`,
    `arrears`,
    `preference`,
    `preferenceamount`,
    `feegeneratedate`,
    `feegenerateforsession`,
    `feegeneratecode`,
    `deposit`,
    `amountpaid`,
    `accumulatedscore`
  )
VALUES
  (
    2,
    'gsh9az',
    'SD20251111',
    'Obeng',
    'Manu',
    '',
    'GRADE 1',
    '500819',
    'GENERAL STUDENT',
    '1',
    NULL,
    'A',
    '7857',
    'Christianity',
    'Male',
    '01-01-2020',
    0,
    '0',
    'Pending',
    'true',
    NULL,
    NULL,
    0,
    '0',
    '0.00',
    '0',
    '0',
    NULL,
    NULL,
    '0',
    0,
    '0',
    '0'
  );
INSERT INTO
  `student` (
    `id`,
    `userId`,
    `student_id`,
    `firstName`,
    `lastName`,
    `otherName`,
    `class`,
    `classid`,
    `cartegory`,
    `cartegoryid`,
    `previousclass`,
    `section`,
    `sectionid`,
    `religion`,
    `gender`,
    `dateofbirth`,
    `accountbalance`,
    `feedetails`,
    `status`,
    `isActive`,
    `filename`,
    `imagelink`,
    `feepayable`,
    `scholarship`,
    `arrears`,
    `preference`,
    `preferenceamount`,
    `feegeneratedate`,
    `feegenerateforsession`,
    `feegeneratecode`,
    `deposit`,
    `amountpaid`,
    `accumulatedscore`
  )
VALUES
  (
    3,
    'yqpbyp',
    'SD20251112',
    'Julien',
    'Alvarez',
    '',
    'GRADE 1',
    '500819',
    'GENERAL STUDENT',
    '1',
    NULL,
    'A',
    '7857',
    'Christianity',
    'Male',
    '01-01-2020',
    0,
    '0',
    'Pending',
    'true',
    NULL,
    NULL,
    0,
    '0',
    '0.00',
    '0',
    '0',
    NULL,
    NULL,
    '0',
    0,
    '0',
    '0'
  );
INSERT INTO
  `student` (
    `id`,
    `userId`,
    `student_id`,
    `firstName`,
    `lastName`,
    `otherName`,
    `class`,
    `classid`,
    `cartegory`,
    `cartegoryid`,
    `previousclass`,
    `section`,
    `sectionid`,
    `religion`,
    `gender`,
    `dateofbirth`,
    `accountbalance`,
    `feedetails`,
    `status`,
    `isActive`,
    `filename`,
    `imagelink`,
    `feepayable`,
    `scholarship`,
    `arrears`,
    `preference`,
    `preferenceamount`,
    `feegeneratedate`,
    `feegenerateforsession`,
    `feegeneratecode`,
    `deposit`,
    `amountpaid`,
    `accumulatedscore`
  )
VALUES
  (
    4,
    'psec1x',
    'SD20251113',
    'Kwame',
    'Ato',
    'Sam',
    'GRADE 1',
    '500819',
    'GENERAL STUDENT',
    '1',
    NULL,
    'A',
    '7857',
    'Christianity',
    'Male',
    '01-01-2020',
    0,
    '0',
    'Pending',
    'true',
    NULL,
    NULL,
    0,
    '0',
    '0.00',
    '0',
    '0',
    NULL,
    NULL,
    '0',
    0,
    '0',
    '0'
  );
INSERT INTO
  `student` (
    `id`,
    `userId`,
    `student_id`,
    `firstName`,
    `lastName`,
    `otherName`,
    `class`,
    `classid`,
    `cartegory`,
    `cartegoryid`,
    `previousclass`,
    `section`,
    `sectionid`,
    `religion`,
    `gender`,
    `dateofbirth`,
    `accountbalance`,
    `feedetails`,
    `status`,
    `isActive`,
    `filename`,
    `imagelink`,
    `feepayable`,
    `scholarship`,
    `arrears`,
    `preference`,
    `preferenceamount`,
    `feegeneratedate`,
    `feegenerateforsession`,
    `feegeneratecode`,
    `deposit`,
    `amountpaid`,
    `accumulatedscore`
  )
VALUES
  (
    5,
    'hlv0w7',
    'SD20251114',
    'Amos',
    'Dylan',
    '',
    'GRADE 1',
    '500819',
    'SPECIAL STUDENT',
    '1',
    NULL,
    'A',
    '7857',
    'Christianity',
    'Male',
    '01-01-2020',
    0,
    '0',
    'Pending',
    'true',
    NULL,
    NULL,
    0,
    '0',
    '0.00',
    '0',
    '0',
    NULL,
    NULL,
    '0',
    0,
    '0',
    '0'
  );

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: studentscartegory
# ------------------------------------------------------------

INSERT INTO
  `studentscartegory` (
    `id`,
    `title`,
    `description`,
    `createdby`,
    `createdat`,
    `cartid`
  )
VALUES
  (
    1,
    'GENERAL STUDENT',
    'undefined',
    'User Test',
    'Mon, 26 May 2025 09:16:02 GMT',
    'c054q3p'
  );
INSERT INTO
  `studentscartegory` (
    `id`,
    `title`,
    `description`,
    `createdby`,
    `createdat`,
    `cartid`
  )
VALUES
  (
    2,
    'SPECIAL STUDENT',
    '',
    'undefined',
    'Mon, 26 May 2025 09:16:02 GMT',
    'wp5iiji'
  );
INSERT INTO
  `studentscartegory` (
    `id`,
    `title`,
    `description`,
    `createdby`,
    `createdat`,
    `cartid`
  )
VALUES
  (
    3,
    'CONTINUING STUDENT',
    '',
    'undefined',
    'Mon, 26 May 2025 09:16:02 GMT',
    'h52wuj6'
  );

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: subject
# ------------------------------------------------------------

INSERT INTO
  `subject` (
    `id`,
    `subjectcode`,
    `subjectname`,
    `type`,
    `isactive`,
    `createdat`,
    `createdby`
  )
VALUES
  (
    1,
    'y9vtw',
    'MATHS',
    'Theory',
    'true',
    'Mon, 26 May 2025 09:16:02 GMT',
    'User Test'
  );
INSERT INTO
  `subject` (
    `id`,
    `subjectcode`,
    `subjectname`,
    `type`,
    `isactive`,
    `createdat`,
    `createdby`
  )
VALUES
  (
    2,
    'hei2u',
    'ENGLISH',
    'Theory',
    'true',
    'Mon, 26 May 2025 09:16:02 GMT',
    'User Test'
  );
INSERT INTO
  `subject` (
    `id`,
    `subjectcode`,
    `subjectname`,
    `type`,
    `isactive`,
    `createdat`,
    `createdby`
  )
VALUES
  (
    3,
    '0pai5',
    'R.M.E',
    'Theory',
    'true',
    'Mon, 26 May 2025 09:16:02 GMT',
    'User Test'
  );
INSERT INTO
  `subject` (
    `id`,
    `subjectcode`,
    `subjectname`,
    `type`,
    `isactive`,
    `createdat`,
    `createdby`
  )
VALUES
  (
    4,
    'e9nk1',
    'COMPUTING',
    'Theory',
    'true',
    'Mon, 26 May 2025 09:16:02 GMT',
    'User Test'
  );

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: users
# ------------------------------------------------------------

INSERT INTO
  `users` (
    `userId`,
    `email`,
    `role`,
    `password`,
    `pass`,
    `rolecode`,
    `Id`,
    `pincode`,
    `createdAt`,
    `createdBy`,
    `isActive`
  )
VALUES
  (
    'jgut27',
    'user@user.com',
    'staff',
    '$2b$10$SzecT4SUIwQdG2DcQRxDEekilJ020VwUSg0hgC.jCsQKR.DzQtPle',
    NULL,
    '1,2,3,4,5,6',
    1,
    '1077',
    'Mon, 26 May 2025 09:24:14 GMT',
    'undefined',
    'true'
  );
INSERT INTO
  `users` (
    `userId`,
    `email`,
    `role`,
    `password`,
    `pass`,
    `rolecode`,
    `Id`,
    `pincode`,
    `createdAt`,
    `createdBy`,
    `isActive`
  )
VALUES
  (
    'uduciu',
    'naavi5e',
    'student',
    '$2b$10$f4pz/eGw6UhFeF89WcOasuCs1DdPi4K3dtizQRq8q9mkARbz8vkxy',
    'vnns4',
    '0',
    2,
    '4939',
    'Mon, 26 May 2025 09:16:02 GMT',
    'undefined',
    'true'
  );
INSERT INTO
  `users` (
    `userId`,
    `email`,
    `role`,
    `password`,
    `pass`,
    `rolecode`,
    `Id`,
    `pincode`,
    `createdAt`,
    `createdBy`,
    `isActive`
  )
VALUES
  (
    'gsh9az',
    'obengqar8',
    'student',
    '$2b$10$VxAw5RYkWS0B4X1Pt9nEE.dkjIHIIMfitxWcR505HLxry3kh5Oe0O',
    'pnrut',
    '0',
    3,
    '6063',
    'Mon, 26 May 2025 09:16:02 GMT',
    'undefined',
    'true'
  );
INSERT INTO
  `users` (
    `userId`,
    `email`,
    `role`,
    `password`,
    `pass`,
    `rolecode`,
    `Id`,
    `pincode`,
    `createdAt`,
    `createdBy`,
    `isActive`
  )
VALUES
  (
    'yqpbyp',
    'juliena28y',
    'student',
    '$2b$10$7q0M2bBlwW0emByBYGAcCeU/mrQAoFXjeH82C5lB84c9ELpe5wtXe',
    '8nvpe',
    '0',
    4,
    '7288',
    'Mon, 26 May 2025 09:16:02 GMT',
    'undefined',
    'true'
  );
INSERT INTO
  `users` (
    `userId`,
    `email`,
    `role`,
    `password`,
    `pass`,
    `rolecode`,
    `Id`,
    `pincode`,
    `createdAt`,
    `createdBy`,
    `isActive`
  )
VALUES
  (
    'psec1x',
    'kwameq8wz',
    'student',
    '$2b$10$ttrpvfnW0smcJ7iAWC3olO/sncVL/xRhZZLq5wuG2wPXZIsbFY0AC',
    '7x2ke',
    '0',
    5,
    '3354',
    'Mon, 26 May 2025 09:16:02 GMT',
    'undefined',
    'true'
  );
INSERT INTO
  `users` (
    `userId`,
    `email`,
    `role`,
    `password`,
    `pass`,
    `rolecode`,
    `Id`,
    `pincode`,
    `createdAt`,
    `createdBy`,
    `isActive`
  )
VALUES
  (
    'hlv0w7',
    'amoswjld',
    'student',
    '$2b$10$VXkleAh9m6gnawmiebqAKuD9WLs6hxVUuUJZ5GFBmCylf9J37csYm',
    'bp088',
    '0',
    6,
    '4494',
    'Mon, 26 May 2025 09:16:02 GMT',
    'undefined',
    'true'
  );
INSERT INTO
  `users` (
    `userId`,
    `email`,
    `role`,
    `password`,
    `pass`,
    `rolecode`,
    `Id`,
    `pincode`,
    `createdAt`,
    `createdBy`,
    `isActive`
  )
VALUES
  (
    'askrvx',
    '3434534@rgt.com',
    'guardian',
    '$2b$10$fV0daPt64BaEElIRntPRjuRssH/tvIFkUXgoxQi5G5joM90Bc7VBu',
    'dgfg',
    '0',
    7,
    '7381',
    'Mon, 02 Jun 2025 15:26:20 GMT',
    '',
    'true'
  );
INSERT INTO
  `users` (
    `userId`,
    `email`,
    `role`,
    `password`,
    `pass`,
    `rolecode`,
    `Id`,
    `pincode`,
    `createdAt`,
    `createdBy`,
    `isActive`
  )
VALUES
  (
    'wb1l6u',
    'ww@dfc.com',
    'guardian',
    '$2b$10$hzQqaxA7sIIvDD73Ch72eugjOvNBLzFMD/dwpe5LrjxSZrZ4OhavS',
    'errfsdfdfr',
    '0',
    8,
    '4364',
    'Mon, 02 Jun 2025 15:26:20 GMT',
    '',
    'true'
  );
INSERT INTO
  `users` (
    `userId`,
    `email`,
    `role`,
    `password`,
    `pass`,
    `rolecode`,
    `Id`,
    `pincode`,
    `createdAt`,
    `createdBy`,
    `isActive`
  )
VALUES
  (
    'rrx1o9',
    'c v',
    'guardian',
    '$2b$10$CCsuq/0.rffN5TNCp7eFYebqVSFod1ViluPopITle1c/Iik/yL5GW',
    '44bo3gg',
    '0',
    9,
    '3826',
    'Tue, 03 Jun 2025 10:05:27 GMT',
    '',
    'true'
  );
INSERT INTO
  `users` (
    `userId`,
    `email`,
    `role`,
    `password`,
    `pass`,
    `rolecode`,
    `Id`,
    `pincode`,
    `createdAt`,
    `createdBy`,
    `isActive`
  )
VALUES
  (
    'nxol05',
    '343545345',
    'guardian',
    '$2b$10$BhIChJm0Q0wWlGIP6W80huzMX9UCIcL6MOZRwwa1Gw0lyh0KrmqtG',
    '43545',
    '0',
    10,
    '3889',
    'Tue, 03 Jun 2025 10:51:40 GMT',
    '',
    'true'
  );
INSERT INTO
  `users` (
    `userId`,
    `email`,
    `role`,
    `password`,
    `pass`,
    `rolecode`,
    `Id`,
    `pincode`,
    `createdAt`,
    `createdBy`,
    `isActive`
  )
VALUES
  (
    'mqado2',
    'xfvfdfv',
    'guardian',
    '$2b$10$oIMyeIsPLGGDGk6YMzcS9eDEq1UzrETiD9uRy25sqtot0YAGyv91m',
    'vxfvdf',
    '0',
    11,
    '8012',
    'Tue, 03 Jun 2025 12:06:15 GMT',
    '',
    'true'
  );

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
