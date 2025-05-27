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
) ENGINE = InnoDB AUTO_INCREMENT = 9 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: assignfeelog
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `assignfeelog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `createdby` varchar(50) DEFAULT NULL,
  `createdat` varchar(20) DEFAULT NULL,
  `entity` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 3 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

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
) ENGINE = InnoDB AUTO_INCREMENT = 5 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

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
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

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
) ENGINE = InnoDB AUTO_INCREMENT = 3 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

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
) ENGINE = InnoDB AUTO_INCREMENT = 2 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

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
) ENGINE = InnoDB AUTO_INCREMENT = 2 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

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
) ENGINE = InnoDB AUTO_INCREMENT = 3 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

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
) ENGINE = InnoDB AUTO_INCREMENT = 3 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

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
) ENGINE = InnoDB AUTO_INCREMENT = 4 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

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
) ENGINE = InnoDB AUTO_INCREMENT = 2 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

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
) ENGINE = InnoDB AUTO_INCREMENT = 3 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

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
) ENGINE = InnoDB AUTO_INCREMENT = 3 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

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
) ENGINE = InnoDB AUTO_INCREMENT = 10 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

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
  `gContact1` varchar(20) DEFAULT NULL,
  `gContact2` varchar(30) DEFAULT NULL,
  `gEmail` varchar(20) DEFAULT NULL,
  `gAddress` varchar(50) DEFAULT NULL,
  `gAddressLandmark` varchar(50) DEFAULT NULL,
  `gSex` varchar(10) DEFAULT NULL,
  `gRelation` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`guardianId`)
) ENGINE = InnoDB AUTO_INCREMENT = 12 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

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
) ENGINE = InnoDB AUTO_INCREMENT = 2 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

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
) ENGINE = InnoDB AUTO_INCREMENT = 4 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

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
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

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
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

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
# SCHEMA DUMP FOR TABLE: session_fwpbe4oan
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `session_fwpbe4oan` (
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
) ENGINE = InnoDB AUTO_INCREMENT = 2 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

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
) ENGINE = InnoDB AUTO_INCREMENT = 105 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

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
) ENGINE = InnoDB AUTO_INCREMENT = 3 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

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
) ENGINE = InnoDB AUTO_INCREMENT = 2 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

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
) ENGINE = InnoDB AUTO_INCREMENT = 117 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: accountclosure
# ------------------------------------------------------------


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: accountupdatelog
# ------------------------------------------------------------


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: assignfeecartegory
# ------------------------------------------------------------

INSERT INTO
  `assignfeecartegory` (
    `id`,
    `total`,
    `feename`,
    `feeid`,
    `amount`,
    `class`,
    `classid`,
    `scartegory`,
    `feegeneratedate`,
    `createdat`,
    `createdby`,
    `cartgroupid`
  )
VALUES
  (
    1,
    '100',
    'TUITIO',
    NULL,
    50,
    'GRADE 1',
    NULL,
    'GENERAL STUDENT',
    NULL,
    '2025-05-22',
    'User Test',
    NULL
  );
INSERT INTO
  `assignfeecartegory` (
    `id`,
    `total`,
    `feename`,
    `feeid`,
    `amount`,
    `class`,
    `classid`,
    `scartegory`,
    `feegeneratedate`,
    `createdat`,
    `createdby`,
    `cartgroupid`
  )
VALUES
  (
    2,
    '100',
    'TRANSPORTATION',
    NULL,
    50,
    'GRADE 1',
    NULL,
    'GENERAL STUDENT',
    NULL,
    '2025-05-22',
    'User Test',
    NULL
  );
INSERT INTO
  `assignfeecartegory` (
    `id`,
    `total`,
    `feename`,
    `feeid`,
    `amount`,
    `class`,
    `classid`,
    `scartegory`,
    `feegeneratedate`,
    `createdat`,
    `createdby`,
    `cartgroupid`
  )
VALUES
  (
    3,
    '100',
    'TUITIO',
    NULL,
    50,
    'GRADE 3',
    NULL,
    'GENERAL STUDENT',
    NULL,
    '2025-05-22',
    'User Test',
    NULL
  );
INSERT INTO
  `assignfeecartegory` (
    `id`,
    `total`,
    `feename`,
    `feeid`,
    `amount`,
    `class`,
    `classid`,
    `scartegory`,
    `feegeneratedate`,
    `createdat`,
    `createdby`,
    `cartgroupid`
  )
VALUES
  (
    4,
    '100',
    'TRANSPORTATION',
    NULL,
    50,
    'GRADE 3',
    NULL,
    'GENERAL STUDENT',
    NULL,
    '2025-05-22',
    'User Test',
    NULL
  );
INSERT INTO
  `assignfeecartegory` (
    `id`,
    `total`,
    `feename`,
    `feeid`,
    `amount`,
    `class`,
    `classid`,
    `scartegory`,
    `feegeneratedate`,
    `createdat`,
    `createdby`,
    `cartgroupid`
  )
VALUES
  (
    5,
    '40',
    'TUITIO',
    NULL,
    20,
    'GRADE 1',
    NULL,
    'CONTI',
    NULL,
    '2025-05-22',
    'User Test',
    NULL
  );
INSERT INTO
  `assignfeecartegory` (
    `id`,
    `total`,
    `feename`,
    `feeid`,
    `amount`,
    `class`,
    `classid`,
    `scartegory`,
    `feegeneratedate`,
    `createdat`,
    `createdby`,
    `cartgroupid`
  )
VALUES
  (
    6,
    '40',
    'TRANSPORTATION',
    NULL,
    20,
    'GRADE 1',
    NULL,
    'CONTI',
    NULL,
    '2025-05-22',
    'User Test',
    NULL
  );
INSERT INTO
  `assignfeecartegory` (
    `id`,
    `total`,
    `feename`,
    `feeid`,
    `amount`,
    `class`,
    `classid`,
    `scartegory`,
    `feegeneratedate`,
    `createdat`,
    `createdby`,
    `cartgroupid`
  )
VALUES
  (
    7,
    '40',
    'TUITIO',
    NULL,
    20,
    'GRADE 3',
    NULL,
    'CONTI',
    NULL,
    '2025-05-22',
    'User Test',
    NULL
  );
INSERT INTO
  `assignfeecartegory` (
    `id`,
    `total`,
    `feename`,
    `feeid`,
    `amount`,
    `class`,
    `classid`,
    `scartegory`,
    `feegeneratedate`,
    `createdat`,
    `createdby`,
    `cartgroupid`
  )
VALUES
  (
    8,
    '40',
    'TRANSPORTATION',
    NULL,
    20,
    'GRADE 3',
    NULL,
    'CONTI',
    NULL,
    '2025-05-22',
    'User Test',
    NULL
  );

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: assignfeelog
# ------------------------------------------------------------

INSERT INTO
  `assignfeelog` (`id`, `createdby`, `createdat`, `entity`)
VALUES
  (1, 'User Test', '2025-05-22', 'GRADE 2');
INSERT INTO
  `assignfeelog` (`id`, `createdby`, `createdat`, `entity`)
VALUES
  (2, 'User Test', '2025-05-22', 'GRADE 2');

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: assignfeerecord
# ------------------------------------------------------------

INSERT INTO
  `assignfeerecord` (
    `id`,
    `class`,
    `total`,
    `createdat`,
    `createdby`,
    `status`,
    `cartegory`
  )
VALUES
  (
    1,
    'GRADE 1',
    '100',
    '2025-05-22',
    'User Test',
    'pending',
    'GENERAL STUDENT'
  );
INSERT INTO
  `assignfeerecord` (
    `id`,
    `class`,
    `total`,
    `createdat`,
    `createdby`,
    `status`,
    `cartegory`
  )
VALUES
  (
    2,
    'GRADE 3',
    '100',
    '2025-05-22',
    'User Test',
    'pending',
    'GENERAL STUDENT'
  );
INSERT INTO
  `assignfeerecord` (
    `id`,
    `class`,
    `total`,
    `createdat`,
    `createdby`,
    `status`,
    `cartegory`
  )
VALUES
  (
    3,
    'GRADE 1',
    '40',
    '2025-05-22',
    'User Test',
    'pending',
    'CONTI'
  );
INSERT INTO
  `assignfeerecord` (
    `id`,
    `class`,
    `total`,
    `createdat`,
    `createdby`,
    `status`,
    `cartegory`
  )
VALUES
  (
    4,
    'GRADE 3',
    '40',
    '2025-05-22',
    'User Test',
    'pending',
    'CONTI'
  );

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: attendance
# ------------------------------------------------------------


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
    1,
    '9176',
    'GRADE 1',
    'ABB',
    '3211',
    '',
    'true',
    NULL,
    NULL,
    'Thu, 22 May 2025 08:30:20 GMT',
    'User Test'
  );
INSERT INTO
  `class` (
    `id`,
    `classId`,
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
    2,
    '8869',
    'GRADE 3',
    NULL,
    '0',
    '',
    'true',
    'Thu, 22 May 2025 16:',
    'User Test',
    'Thu, 22 May 2025 09:18:15 GMT',
    'User Test'
  );

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: clearlog
# ------------------------------------------------------------


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: deletedstudent
# ------------------------------------------------------------

INSERT INTO
  `deletedstudent` (
    `id`,
    `userId`,
    `student_id`,
    `firstName`,
    `lastName`,
    `otherName`,
    `class`,
    `cartegory`,
    `previousclass`,
    `section`,
    `religion`,
    `gender`,
    `dateofbirth`,
    `accountbalance`,
    `status`,
    `isActive`,
    `filename`,
    `imagelink`,
    `feepayable`,
    `scholarship`,
    `arrears`,
    `preference`,
    `feegeneratedate`,
    `feegenerateforsession`,
    `feegeneratecode`,
    `deposit`,
    `amountpaid`
  )
VALUES
  (
    1,
    '7p8xwd',
    'SD20251111',
    'Cccc',
    'Vvvv',
    '',
    'GRADE 1',
    'GENERAL STUDENT',
    NULL,
    'A',
    'Christianity',
    'Male',
    '2025-05-13',
    0,
    'current',
    'true',
    NULL,
    NULL,
    0,
    '0',
    '0.00',
    '0',
    NULL,
    NULL,
    '0',
    0,
    '0'
  );

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
    'END OF',
    NULL,
    NULL,
    'Thu May 22 2025 13:44:17 GMT+0000 (Greenwich Mean ',
    'User Test'
  );

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
    1,
    'MAT4560',
    '9176',
    'MATHEMATICS',
    NULL,
    'SD20251112',
    '70',
    '35',
    '70',
    '70',
    '35',
    '0',
    'A',
    '1',
    'Excellent',
    NULL,
    '1ST TERM 2925/2026',
    NULL,
    'END OF',
    NULL,
    '0',
    '1',
    '1',
    '50',
    '50',
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
    2,
    'MAT2149',
    '9176',
    'MATHEMATICS',
    NULL,
    'SD20251112',
    '56',
    '22.5',
    '45',
    '67',
    '33.5',
    '0',
    'B',
    '1',
    'Good',
    NULL,
    '1ST TERM 2921',
    NULL,
    'END OF',
    NULL,
    '56',
    '1',
    '1',
    '50',
    '50',
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
    'MAT4560',
    'MATHEMATICS',
    NULL,
    'GRADE 1',
    NULL,
    'ABB',
    NULL,
    '1ST TERM 2925/2026',
    NULL,
    'END OF',
    NULL,
    'User Test',
    'Thu May 22 2025 13:44:17 GMT+0000 (Greenwich Mean ',
    'test',
    NULL
  );
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
    2,
    'MAT2149',
    'MATHEMATICS',
    NULL,
    'GRADE 1',
    NULL,
    'ABB',
    NULL,
    '1ST TERM 2921',
    NULL,
    'END OF',
    NULL,
    'User Test',
    'Sat May 24 2025 09:07:58 GMT+0000 (Greenwich Mean ',
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

INSERT INTO
  `feedetails` (
    `id`,
    `receiptid`,
    `feeitem`,
    `feeamount`,
    `amountapportioned`,
    `totalfeepaid`,
    `balbeforepay`,
    `balance`,
    `stdname`,
    `class`,
    `section`,
    `classid`,
    `student_id`,
    `collectedby`,
    `staffid`,
    `datecollected`,
    `sessionid`,
    `session`,
    `activeaccountid`
  )
VALUES
  (
    1,
    '25111090',
    'TUITIO',
    '50',
    '1',
    '1',
    '50',
    '49',
    'Bamba  Dieng',
    'GRADE 3',
    'ABB',
    '9176',
    'SD20251110',
    'User Test',
    '4id3xv',
    '2025-05-22',
    'session_d3q3cmfbs',
    '1ST TERM 2925/2026',
    'session_d3q3cmfbs'
  );
INSERT INTO
  `feedetails` (
    `id`,
    `receiptid`,
    `feeitem`,
    `feeamount`,
    `amountapportioned`,
    `totalfeepaid`,
    `balbeforepay`,
    `balance`,
    `stdname`,
    `class`,
    `section`,
    `classid`,
    `student_id`,
    `collectedby`,
    `staffid`,
    `datecollected`,
    `sessionid`,
    `session`,
    `activeaccountid`
  )
VALUES
  (
    2,
    '25111066',
    'TUITIO',
    '50',
    '1',
    '1',
    '49',
    '48',
    'Bamba  Dieng',
    'GRADE 3',
    'ABB',
    '9176',
    'SD20251110',
    'User Test',
    '4id3xv',
    '2025-05-22',
    'session_d3q3cmfbs',
    '1ST TERM 2925/2026',
    'session_d3q3cmfbs'
  );
INSERT INTO
  `feedetails` (
    `id`,
    `receiptid`,
    `feeitem`,
    `feeamount`,
    `amountapportioned`,
    `totalfeepaid`,
    `balbeforepay`,
    `balance`,
    `stdname`,
    `class`,
    `section`,
    `classid`,
    `student_id`,
    `collectedby`,
    `staffid`,
    `datecollected`,
    `sessionid`,
    `session`,
    `activeaccountid`
  )
VALUES
  (
    3,
    '25111066',
    'TRANSPORTATION',
    '50',
    '1',
    '1',
    '50',
    '49',
    'Bamba  Dieng',
    'GRADE 3',
    'ABB',
    '9176',
    'SD20251110',
    'User Test',
    '4id3xv',
    '2025-05-22',
    'session_d3q3cmfbs',
    '1ST TERM 2925/2026',
    'session_d3q3cmfbs'
  );

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: feegeneraterecord
# ------------------------------------------------------------

INSERT INTO
  `feegeneraterecord` (
    `code`,
    `session`,
    `createdby`,
    `date`,
    `id`,
    `entity`,
    `description`
  )
VALUES
  (
    'undefined',
    '1ST TERM 2925/2026',
    'User Test',
    '2025-05-22',
    1,
    'Class(es)',
    'GRADE 2'
  );

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: feepaymentrecords
# ------------------------------------------------------------

INSERT INTO
  `feepaymentrecords` (
    `id`,
    `student_id`,
    `amountpaid`,
    `stdname`,
    `class`,
    `mode`,
    `balbeforepayment`,
    `balanceafterpayment`,
    `arrears`,
    `session`,
    `activeaccountid`,
    `date`,
    `collectedby`,
    `receiptid`,
    `amountinvolved`,
    `activity`
  )
VALUES
  (
    1,
    'SD20251110',
    '1',
    'Bamba  Dieng',
    'GRADE 3',
    'Cash',
    '100',
    '99',
    '0',
    '1ST TERM 2925/2026',
    'session_d3q3cmfbs',
    '2025-05-22',
    'User Test',
    '25111090',
    NULL,
    'Fee Payment'
  );
INSERT INTO
  `feepaymentrecords` (
    `id`,
    `student_id`,
    `amountpaid`,
    `stdname`,
    `class`,
    `mode`,
    `balbeforepayment`,
    `balanceafterpayment`,
    `arrears`,
    `session`,
    `activeaccountid`,
    `date`,
    `collectedby`,
    `receiptid`,
    `amountinvolved`,
    `activity`
  )
VALUES
  (
    2,
    'SD20251110',
    '1',
    'Bamba  Dieng',
    'GRADE 3',
    'Cash',
    '99',
    '98',
    '0',
    '1ST TERM 2925/2026',
    'session_d3q3cmfbs',
    '2025-05-22',
    'User Test',
    '25111066',
    NULL,
    'Fee Payment'
  );

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: feesgroup
# ------------------------------------------------------------

INSERT INTO
  `feesgroup` (
    `id`,
    `feeid`,
    `name`,
    `description`,
    `createdby`,
    `createdat`,
    `status`
  )
VALUES
  (
    1,
    'ton9gg4',
    'TUITIO',
    '',
    'undefined',
    '2025-05-22',
    'true'
  );
INSERT INTO
  `feesgroup` (
    `id`,
    `feeid`,
    `name`,
    `description`,
    `createdby`,
    `createdat`,
    `status`
  )
VALUES
  (
    2,
    '19aw0vv',
    'TRANSPORTATION',
    '',
    'User Test',
    '2025-05-22',
    'true'
  );

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
    7,
    '918',
    'test',
    NULL,
    '70',
    '100',
    'Excellent',
    'A',
    '50',
    '50',
    '0',
    'User Test',
    '2025-05-22',
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
    8,
    '918',
    'test',
    NULL,
    '40',
    '69',
    'Good',
    'B',
    '50',
    '50',
    '0',
    'User Test',
    '2025-05-22',
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
    9,
    '918',
    'test',
    NULL,
    '0',
    '39',
    'Fail',
    'C',
    '50',
    '50',
    '0',
    'User Test',
    '2025-05-22',
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
    1,
    'lakgt6',
    'SD20251110',
    'Bamb',
    'Rr',
    NULL,
    NULL,
    '32342',
    '234234234',
    'Bamb',
    'bamb ad',
    NULL,
    'Male',
    'Mother'
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
    2,
    'em8toa',
    'SD20251110',
    'Bam',
    'Gg',
    NULL,
    NULL,
    'wewerw',
    'werwer',
    'bam',
    'bamb ad2',
    NULL,
    'Male',
    'Mother'
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
    3,
    '3gx6hw',
    'SD20251111',
    'C',
    'Cv',
    NULL,
    NULL,
    'cvvvv',
    '',
    'cv',
    'cvcvcvcv',
    NULL,
    'Male',
    'Father'
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
    'gljxbv',
    'SD20251111',
    'Cc',
    'Cv',
    NULL,
    NULL,
    'cvvvvvvvvv',
    '',
    'cvv',
    'c',
    NULL,
    'Male',
    'Mother'
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
    'gkmhii',
    'SD20251112',
    'Olu',
    'M',
    NULL,
    NULL,
    'olu',
    '',
    '',
    'olu 1',
    NULL,
    'Male',
    'Mother'
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
    6,
    '4kpxik',
    'SD20251112',
    'Oluwa',
    'L',
    NULL,
    NULL,
    'olu',
    '',
    '',
    'olu 2',
    NULL,
    'Male',
    'Mother'
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
    7,
    '00pqn6',
    'SD20251113',
    'Dodo',
    'Cv',
    NULL,
    NULL,
    '',
    '',
    '',
    '',
    NULL,
    'Male',
    'Mother'
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
    8,
    'd431vj',
    'SD20251115',
    'Ben',
    'Doku',
    NULL,
    'dfgdsg@gmail.com',
    '23444444444',
    '234434553',
    'Ben2ub',
    'sunyani Enclave',
    NULL,
    '-',
    'Father'
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
    9,
    'fpc4pr',
    'SD20251115',
    'Grace',
    'Doku',
    NULL,
    'fvsdvf@gmail.com',
    '244442323',
    '2323444355',
    'Gracek6l',
    'Accra lapaz',
    NULL,
    '-',
    'Mother'
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
    10,
    '2vjwx5',
    'SD20251116',
    'Zulu',
    'Natal',
    NULL,
    '',
    '34354545656',
    '',
    'Zuluwg9',
    'dome',
    NULL,
    '-',
    'Auntie'
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
    11,
    '32bqb1',
    'SD20251117',
    'bbb',
    '',
    NULL,
    '',
    '',
    '',
    'bbbgee',
    '',
    NULL,
    '-',
    ''
  );

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: inventory
# ------------------------------------------------------------


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: inventorycartegory
# ------------------------------------------------------------

INSERT INTO
  `inventorycartegory` (
    `id`,
    `cartegoryname`,
    `createdby`,
    `createdat`,
    `isactive`,
    `notes`
  )
VALUES
  (
    1,
    'RRR',
    'User Test',
    'Sat, 24 May 2025 09:07:57 GMT',
    'true',
    'undefined'
  );

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
    '4id3xv',
    'User',
    'Test',
    NULL,
    'Admin',
    'Tue May 20 2025 16:29:56 '
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
    '4id3xv',
    'User',
    'Test',
    NULL,
    'Admin',
    'Thu May 22 2025 08:38:21 '
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
    '4id3xv',
    'User',
    'Test',
    NULL,
    'Admin',
    'Sat May 24 2025 06:04:40 '
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
    'Lifeline International Preparatory School',
    'opposite life of man, street accra newtow Ghana',
    '24323434234',
    '2342342342',
    'http://136.244.77.140:5400/hb.jpg',
    'hb.jpg',
    'life@gmail.com',
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
    '3211',
    'A',
    'true',
    'Thu, 22 May 2025 08:30:20 GMT',
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
    '7767',
    'B00',
    'true',
    'Sat, 24 May 2025 09:07:57 GMT',
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
    2,
    '1ST TERM 2921',
    'session_fwpbe4oan',
    'session_fwpbe4oan',
    '1ST TERM 2921',
    'JANUARY',
    'Sat, 24 May 2025 09:07:57 GMT',
    'User Test',
    'true',
    'session_fwpbe4oan'
  );

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: session_d3q3cmfbs
# ------------------------------------------------------------


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: session_fwpbe4oan
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
    'agew95',
    'SD20251110',
    'Bamba',
    'Dieng',
    '',
    'GRADE 3',
    '9176',
    'GENERAL STUDENT',
    '1',
    NULL,
    'ABB',
    '-',
    'Christianity',
    'Male',
    '01-01-2020',
    98,
    'TUITION-50-1-48,TRANSPORTATION-50-1-49',
    'current',
    'true',
    NULL,
    NULL,
    100,
    '0',
    '0',
    '0',
    '0',
    '2025-05-22',
    '1ST TERM 2925/2026',
    '0',
    0,
    '2',
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
    '7p8xwd',
    'SD20251111',
    'Cccc',
    'Vvvv',
    '',
    'Deleted',
    '1',
    'GENERAL STUDENT',
    '1',
    NULL,
    'Deleted',
    '3211',
    'Christianity',
    'Male',
    '2025-05-13',
    0,
    '0',
    'current',
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
    'n1jq60',
    'SD20251112',
    'Oluwa',
    'Baba',
    '',
    'GRADE 1',
    '9176',
    'CONTINUAL',
    '1',
    NULL,
    'ABB',
    '3211',
    'Christianity',
    'Male',
    '2025-05-06',
    0,
    '0',
    'current',
    'true',
    '77824pass.jpg',
    'http://136.244.77.140:5400/77824pass.jpg',
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
    '1jyo6f',
    'SD20251113',
    'Frank',
    'Dodoo',
    '',
    'GRADE 1',
    '9176',
    'GENERAL STUDENT',
    '1',
    NULL,
    'NONE',
    '-',
    'Christianity',
    'Male',
    '2025-05-13',
    0,
    '0',
    'current',
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
    '2xup4z',
    'SD20251114',
    'Continual',
    'Continual',
    '',
    'GRADE 1',
    '9176',
    'GENERAL STUDENT',
    '2',
    NULL,
    'NONE',
    '-',
    'Christianity',
    'Male',
    '01-01-2020',
    0,
    '0',
    'current',
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
    6,
    'vopivi',
    'SD20251115',
    'Jeremy',
    'Doku',
    'Manny',
    'GRADE 3',
    '8869',
    'GENERAL STUDENT',
    NULL,
    NULL,
    'NONE',
    '0',
    'Christian',
    '-',
    '21/05/94',
    0,
    '0',
    'current',
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
    7,
    't2v4z8',
    'SD20251116',
    'Gregory',
    'Aidoo',
    '',
    'GRADE 3',
    '8869',
    'GENERAL STUDENT',
    NULL,
    NULL,
    'NONE',
    '0',
    'Other',
    '-',
    '21/03/21',
    0,
    '0',
    'current',
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
    8,
    'e84mjk',
    'SD20251117',
    'bbbbbb',
    'bbbb',
    'bbbb',
    'GRADE 3',
    '8869',
    'GENERAL STUDENT',
    NULL,
    NULL,
    'NONE',
    '0',
    'bbbb',
    '-',
    'bbbb',
    0,
    '0',
    'current',
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
    9,
    'g13cd5',
    'SD20251118',
    'rrrr',
    '',
    '',
    'GRADE 3',
    '8869',
    'GENERAL STUDENT',
    NULL,
    NULL,
    'NONE',
    '0',
    '',
    '-',
    '',
    0,
    '0',
    'current',
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
    10,
    'yt6ldm',
    'SD20251119',
    'rrrrr',
    'eee',
    'eeee',
    'GRADE 3',
    '8869',
    'GENERAL STUDENT',
    NULL,
    NULL,
    'NONE',
    '0',
    'eeee',
    '-',
    'ww',
    0,
    '0',
    'current',
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
    11,
    'o7cdyo',
    'SD20251120',
    'eeee',
    'eeee',
    'eeee',
    'GRADE 3',
    '8869',
    'GENERAL STUDENT',
    NULL,
    NULL,
    'NONE',
    '0',
    'eeee',
    '-',
    'ww',
    0,
    '0',
    'current',
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
    12,
    '4necy6',
    'SD20251121',
    'rrrrrr',
    'eeee',
    'eeee',
    'GRADE 3',
    '8869',
    'GENERAL STUDENT',
    NULL,
    NULL,
    'NONE',
    '0',
    'eeee',
    '-',
    'www',
    0,
    '0',
    'current',
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
    13,
    'ftppsm',
    'SD20251122',
    'eeee',
    'eeee',
    'eeee',
    'GRADE 3',
    '8869',
    'GENERAL STUDENT',
    NULL,
    NULL,
    'NONE',
    '0',
    'eeee',
    '-',
    'wwww',
    0,
    '0',
    'current',
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
    14,
    'gh8jjh',
    'SD20251123',
    'rrrrr',
    'eee',
    'eeee',
    'GRADE 3',
    '8869',
    'GENERAL STUDENT',
    NULL,
    NULL,
    'NONE',
    '0',
    'eeee',
    '-',
    'www',
    0,
    '0',
    'current',
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
    15,
    '98hcr4',
    'SD20251124',
    'eeee',
    'eeeee',
    'eeee',
    'GRADE 3',
    '8869',
    'GENERAL STUDENT',
    NULL,
    NULL,
    'NONE',
    '0',
    'eeee',
    '-',
    'wwww',
    0,
    '0',
    'current',
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
    16,
    'x2qzti',
    'SD20251125',
    'dewe',
    'wed',
    'wded',
    'GRADE 3',
    '8869',
    'GENERAL STUDENT',
    NULL,
    NULL,
    'NONE',
    '0',
    'wed',
    '-',
    'wed',
    0,
    '0',
    'current',
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
    17,
    'oscxqt',
    'SD20251126',
    'wed',
    'wed',
    'wed',
    'GRADE 3',
    '8869',
    'GENERAL STUDENT',
    NULL,
    NULL,
    'NONE',
    '0',
    'wed',
    '-',
    'wed',
    0,
    '0',
    'current',
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
    18,
    'zo78fm',
    'SD20251127',
    'wed',
    'wed',
    'wed',
    'GRADE 3',
    '8869',
    'GENERAL STUDENT',
    NULL,
    NULL,
    'NONE',
    '0',
    'wed',
    '-',
    'wed',
    0,
    '0',
    'current',
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
    19,
    '3pg1ny',
    'SD20251128',
    'wed',
    'wed',
    'wed',
    'GRADE 3',
    '8869',
    'GENERAL STUDENT',
    NULL,
    NULL,
    'NONE',
    '0',
    'wed',
    '-',
    'wed',
    0,
    '0',
    'current',
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
    20,
    '3dhu82',
    'SD20251129',
    'wed',
    'ed',
    'wed',
    'GRADE 3',
    '8869',
    'GENERAL STUDENT',
    NULL,
    NULL,
    'NONE',
    '0',
    'dwed',
    '-',
    'wed',
    0,
    '0',
    'current',
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
    21,
    'b46qlb',
    'SD20251130',
    'wed',
    'wed',
    'wed',
    'GRADE 3',
    '8869',
    'GENERAL STUDENT',
    NULL,
    NULL,
    'NONE',
    '0',
    'ed',
    '-',
    'wed',
    0,
    '0',
    'current',
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
    22,
    'kcozve',
    'SD20251131',
    'ed',
    'wed',
    'de',
    'GRADE 3',
    '8869',
    'GENERAL STUDENT',
    NULL,
    NULL,
    'NONE',
    '0',
    'wed',
    '-',
    'wed',
    0,
    '0',
    'current',
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
    23,
    'bh5gih',
    'SD20251132',
    'wed',
    'de',
    'wed',
    'GRADE 3',
    '8869',
    'GENERAL STUDENT',
    NULL,
    NULL,
    'NONE',
    '0',
    'de',
    '-',
    'de',
    0,
    '0',
    'current',
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
    24,
    'isio3d',
    'SD20251133',
    'w',
    'wed',
    'wed',
    'GRADE 3',
    '8869',
    'GENERAL STUDENT',
    NULL,
    NULL,
    'NONE',
    '0',
    'wed',
    '-',
    'ed',
    0,
    '0',
    'current',
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
    25,
    'fpc7oy',
    'SD20251134',
    'wd',
    'wed',
    'wed',
    'GRADE 3',
    '8869',
    'GENERAL STUDENT',
    NULL,
    NULL,
    'NONE',
    '0',
    'wed',
    '-',
    'wd',
    0,
    '0',
    'current',
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
    26,
    'v69ojh',
    'SD20251135',
    'wd',
    'wd',
    'w',
    'GRADE 3',
    '8869',
    'GENERAL STUDENT',
    NULL,
    NULL,
    'NONE',
    '0',
    'wed',
    '-',
    'wed',
    0,
    '0',
    'current',
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
    27,
    'u95jye',
    'SD20251136',
    'wed',
    'wd',
    'wed',
    'GRADE 3',
    '8869',
    'GENERAL STUDENT',
    NULL,
    NULL,
    'NONE',
    '0',
    'wed',
    '-',
    'wed',
    0,
    '0',
    'current',
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
    28,
    'ps6oq6',
    'SD20251137',
    'wd',
    'wed',
    'wded',
    'GRADE 3',
    '8869',
    'GENERAL STUDENT',
    NULL,
    NULL,
    'NONE',
    '0',
    'wd',
    '-',
    'wed',
    0,
    '0',
    'current',
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
    29,
    'u2hcb0',
    'SD20251138',
    'dewe',
    'w',
    'de',
    'GRADE 3',
    '8869',
    'GENERAL STUDENT',
    NULL,
    NULL,
    'NONE',
    '0',
    'dwed',
    '-',
    'wed',
    0,
    '0',
    'current',
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
    30,
    '4nk9u7',
    'SD20251139',
    'dwed',
    'wd',
    'wded',
    'GRADE 3',
    '8869',
    'GENERAL STUDENT',
    NULL,
    NULL,
    'NONE',
    '0',
    'wed',
    '-',
    'wd',
    0,
    '0',
    'current',
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
    31,
    'ceuk8z',
    'SD20251140',
    'wd',
    'wed',
    'dwe',
    'GRADE 3',
    '8869',
    'GENERAL STUDENT',
    NULL,
    NULL,
    'NONE',
    '0',
    'wed',
    '-',
    'de',
    0,
    '0',
    'current',
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
    32,
    '6irrc6',
    'SD20251141',
    'wd',
    'wed',
    'wded',
    'GRADE 3',
    '8869',
    'GENERAL STUDENT',
    NULL,
    NULL,
    'NONE',
    '0',
    'wed',
    '-',
    'wed',
    0,
    '0',
    'current',
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
    33,
    'inknvr',
    'SD20251142',
    'wed',
    'wed',
    'wdew',
    'GRADE 3',
    '8869',
    'GENERAL STUDENT',
    NULL,
    NULL,
    'NONE',
    '0',
    'wef',
    '-',
    'wed',
    0,
    '0',
    'current',
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
    34,
    'pshajl',
    'SD20251143',
    'wd',
    'wfw',
    'fwf',
    'GRADE 3',
    '8869',
    'GENERAL STUDENT',
    NULL,
    NULL,
    'NONE',
    '0',
    'wwwf',
    '-',
    'wef',
    0,
    '0',
    'current',
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
    35,
    'kg293m',
    'SD20251144',
    'wd',
    'wfw',
    'fwf',
    'GRADE 3',
    '8869',
    'GENERAL STUDENT',
    NULL,
    NULL,
    'NONE',
    '0',
    'wwwf',
    '-',
    'wef',
    0,
    '0',
    'current',
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
    36,
    'odm9bs',
    'SD20251145',
    'wd',
    'wfw',
    'fwf',
    'GRADE 3',
    '8869',
    'GENERAL STUDENT',
    NULL,
    NULL,
    'NONE',
    '0',
    'wwwf',
    '-',
    'wef',
    0,
    '0',
    'current',
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
    37,
    'k3azgj',
    'SD20251146',
    'wd',
    'wfw',
    'fwf',
    'GRADE 3',
    '8869',
    'GENERAL STUDENT',
    NULL,
    NULL,
    'NONE',
    '0',
    'wwwf',
    '-',
    'wef',
    0,
    '0',
    'current',
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
    38,
    'nri6md',
    'SD20251147',
    'wd',
    'wfw',
    'fwf',
    'GRADE 3',
    '8869',
    'GENERAL STUDENT',
    NULL,
    NULL,
    'NONE',
    '0',
    'wwwf',
    '-',
    'wef',
    0,
    '0',
    'current',
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
    39,
    'koabvl',
    'SD20251148',
    'wd',
    'wfw',
    'fwf',
    'GRADE 3',
    '8869',
    'GENERAL STUDENT',
    NULL,
    NULL,
    'NONE',
    '0',
    'wwwf',
    '-',
    'wef',
    0,
    '0',
    'current',
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
    40,
    'bydqx2',
    'SD20251149',
    'wd',
    'wfw',
    'fwf',
    'GRADE 3',
    '8869',
    'GENERAL STUDENT',
    NULL,
    NULL,
    'NONE',
    '0',
    'wwwf',
    '-',
    'wef',
    0,
    '0',
    'current',
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
    41,
    'i9gb6q',
    'SD20251150',
    'wd',
    'wfw',
    'fwf',
    'GRADE 3',
    '8869',
    'GENERAL STUDENT',
    NULL,
    NULL,
    'NONE',
    '0',
    'wwwf',
    '-',
    'wef',
    0,
    '0',
    'current',
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
    42,
    'cq2g39',
    'SD20251151',
    'wd',
    'wfw',
    'fwf',
    'GRADE 3',
    '8869',
    'GENERAL STUDENT',
    NULL,
    NULL,
    'NONE',
    '0',
    'wwwf',
    '-',
    'wef',
    0,
    '0',
    'current',
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
    43,
    'v3rhoo',
    'SD20251152',
    'wd',
    'wfw',
    'fwf',
    'GRADE 3',
    '8869',
    'GENERAL STUDENT',
    NULL,
    NULL,
    'NONE',
    '0',
    'wwwf',
    '-',
    'wef',
    0,
    '0',
    'current',
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
    44,
    'wrk01p',
    'SD20251153',
    'wd',
    'wfw',
    'fwf',
    'GRADE 3',
    '8869',
    'GENERAL STUDENT',
    NULL,
    NULL,
    'NONE',
    '0',
    'wwwf',
    '-',
    'wef',
    0,
    '0',
    'current',
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
    45,
    'tev5av',
    'SD20251154',
    'wd',
    'wfw',
    'fwf',
    'GRADE 3',
    '8869',
    'GENERAL STUDENT',
    NULL,
    NULL,
    'NONE',
    '0',
    'wwwf',
    '-',
    'wef',
    0,
    '0',
    'current',
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
    46,
    'u9sq77',
    'SD20251155',
    'wd',
    'wfw',
    'fwf',
    'GRADE 3',
    '8869',
    'GENERAL STUDENT',
    NULL,
    NULL,
    'NONE',
    '0',
    'wwwf',
    '-',
    'wef',
    0,
    '0',
    'current',
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
    47,
    'iuzkhg',
    'SD20251156',
    'wd',
    'wfw',
    'fwf',
    'GRADE 3',
    '8869',
    'GENERAL STUDENT',
    NULL,
    NULL,
    'NONE',
    '0',
    'wwwf',
    '-',
    'wef',
    0,
    '0',
    'current',
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
    48,
    '7im2tc',
    'SD20251157',
    'wd',
    'wfw',
    'fwf',
    'GRADE 3',
    '8869',
    'GENERAL STUDENT',
    NULL,
    NULL,
    'NONE',
    '0',
    'wwwf',
    '-',
    'wef',
    0,
    '0',
    'current',
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
    49,
    'zs2aku',
    'SD20251158',
    'wd',
    'wfw',
    'fwf',
    'GRADE 3',
    '8869',
    'GENERAL STUDENT',
    NULL,
    NULL,
    'NONE',
    '0',
    'wwwf',
    '-',
    'wef',
    0,
    '0',
    'current',
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
    50,
    'pb96on',
    'SD20251159',
    'wd',
    'wfw',
    'fwf',
    'GRADE 3',
    '8869',
    'GENERAL STUDENT',
    NULL,
    NULL,
    'NONE',
    '0',
    'wwwf',
    '-',
    'wef',
    0,
    '0',
    'current',
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
    51,
    'qwq8dc',
    'SD20251160',
    'wd',
    'wfw',
    'fwf',
    'GRADE 3',
    '8869',
    'GENERAL STUDENT',
    NULL,
    NULL,
    'NONE',
    '0',
    'wwwf',
    '-',
    'wef',
    0,
    '0',
    'current',
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
    52,
    'dwqi5m',
    'SD20251161',
    'wd',
    'wfw',
    'fwf',
    'GRADE 3',
    '8869',
    'GENERAL STUDENT',
    NULL,
    NULL,
    'NONE',
    '0',
    'wwwf',
    '-',
    'wef',
    0,
    '0',
    'current',
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
    53,
    'e2xywo',
    'SD20251162',
    'wd',
    'wfw',
    'fwf',
    'GRADE 3',
    '8869',
    'GENERAL STUDENT',
    NULL,
    NULL,
    'NONE',
    '0',
    'wwwf',
    '-',
    'wef',
    0,
    '0',
    'current',
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
    54,
    'wej787',
    'SD20251163',
    'wd',
    'wfw',
    'fwf',
    'GRADE 3',
    '8869',
    'GENERAL STUDENT',
    NULL,
    NULL,
    'NONE',
    '0',
    'wwwf',
    '-',
    'wef',
    0,
    '0',
    'current',
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
    55,
    '5qchic',
    'SD20251164',
    'wd',
    'wfw',
    'fwf',
    'GRADE 3',
    '8869',
    'GENERAL STUDENT',
    NULL,
    NULL,
    'NONE',
    '0',
    'wwwf',
    '-',
    'wef',
    0,
    '0',
    'current',
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
    56,
    'a6ew1b',
    'SD20251165',
    'wd',
    'wfw',
    'fwf',
    'GRADE 3',
    '8869',
    'GENERAL STUDENT',
    NULL,
    NULL,
    'NONE',
    '0',
    'wwwf',
    '-',
    'wef',
    0,
    '0',
    'current',
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
    57,
    'rhqlrt',
    'SD20251166',
    'wd',
    'wfw',
    'fwf',
    'GRADE 3',
    '8869',
    'GENERAL STUDENT',
    NULL,
    NULL,
    'NONE',
    '0',
    'wwwf',
    '-',
    'wef',
    0,
    '0',
    'current',
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
    58,
    'pwie9o',
    'SD20251167',
    'wd',
    'wfw',
    'fwf',
    'GRADE 3',
    '8869',
    'GENERAL STUDENT',
    NULL,
    NULL,
    'NONE',
    '0',
    'wwwf',
    '-',
    'wef',
    0,
    '0',
    'current',
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
    59,
    'ievpsj',
    'SD20251168',
    'wd',
    'wfw',
    'fwf',
    'GRADE 3',
    '8869',
    'GENERAL STUDENT',
    NULL,
    NULL,
    'NONE',
    '0',
    'wwwf',
    '-',
    'wef',
    0,
    '0',
    'current',
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
    60,
    'k9jnus',
    'SD20251169',
    'wd',
    'wfw',
    'fwf',
    'GRADE 3',
    '8869',
    'GENERAL STUDENT',
    NULL,
    NULL,
    'NONE',
    '0',
    'wwwf',
    '-',
    'wef',
    0,
    '0',
    'current',
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
    61,
    'hf1cqr',
    'SD20251170',
    'wd',
    'wfw',
    'fwf',
    'GRADE 3',
    '8869',
    'GENERAL STUDENT',
    NULL,
    NULL,
    'NONE',
    '0',
    'wwwf',
    '-',
    'wef',
    0,
    '0',
    'current',
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
    62,
    'z9l09l',
    'SD20251171',
    'wd',
    'wfw',
    'fwf',
    'GRADE 3',
    '8869',
    'GENERAL STUDENT',
    NULL,
    NULL,
    'NONE',
    '0',
    'wwwf',
    '-',
    'wef',
    0,
    '0',
    'current',
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
    63,
    'n5yrhl',
    'SD20251172',
    'wd',
    'wfw',
    'fwf',
    'GRADE 3',
    '8869',
    'GENERAL STUDENT',
    NULL,
    NULL,
    'NONE',
    '0',
    'wwwf',
    '-',
    'wef',
    0,
    '0',
    'current',
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
    64,
    'njbpmv',
    'SD20251173',
    'wd',
    'wfw',
    'fwf',
    'GRADE 3',
    '8869',
    'GENERAL STUDENT',
    NULL,
    NULL,
    'NONE',
    '0',
    'wwwf',
    '-',
    'wef',
    0,
    '0',
    'current',
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
    65,
    '44765u',
    'SD20251174',
    'wd',
    'wfw',
    'fwf',
    'GRADE 3',
    '8869',
    'GENERAL STUDENT',
    NULL,
    NULL,
    'NONE',
    '0',
    'wwwf',
    '-',
    'wef',
    0,
    '0',
    'current',
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
    66,
    '3h579k',
    'SD20251175',
    'wd',
    'wfw',
    'fwf',
    'GRADE 3',
    '8869',
    'GENERAL STUDENT',
    NULL,
    NULL,
    'NONE',
    '0',
    'wwwf',
    '-',
    'wef',
    0,
    '0',
    'current',
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
    67,
    'mj85rt',
    'SD20251176',
    'wd',
    'wfw',
    'fwf',
    'GRADE 3',
    '8869',
    'GENERAL STUDENT',
    NULL,
    NULL,
    'NONE',
    '0',
    'wwwf',
    '-',
    'wef',
    0,
    '0',
    'current',
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
    68,
    'ruic5k',
    'SD20251177',
    'wd',
    'wfw',
    'fwf',
    'GRADE 3',
    '8869',
    'GENERAL STUDENT',
    NULL,
    NULL,
    'NONE',
    '0',
    'wwwf',
    '-',
    'wef',
    0,
    '0',
    'current',
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
    69,
    '6w33ac',
    'SD20251178',
    'wd',
    'wfw',
    'fwf',
    'GRADE 3',
    '8869',
    'GENERAL STUDENT',
    NULL,
    NULL,
    'NONE',
    '0',
    'wwwf',
    '-',
    'wef',
    0,
    '0',
    'current',
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
    70,
    'q1gjla',
    'SD20251179',
    'wd',
    'wfw',
    'fwf',
    'GRADE 3',
    '8869',
    'GENERAL STUDENT',
    NULL,
    NULL,
    'NONE',
    '0',
    'wwwf',
    '-',
    'wef',
    0,
    '0',
    'current',
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
    71,
    'u8ejgw',
    'SD20251180',
    'wd',
    'wfw',
    'fwf',
    'GRADE 3',
    '8869',
    'GENERAL STUDENT',
    NULL,
    NULL,
    'NONE',
    '0',
    'wwwf',
    '-',
    'wef',
    0,
    '0',
    'current',
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
    72,
    '28hz2q',
    'SD20251181',
    'wd',
    'wfw',
    'fwf',
    'GRADE 3',
    '8869',
    'GENERAL STUDENT',
    NULL,
    NULL,
    'NONE',
    '0',
    'wwwf',
    '-',
    'wef',
    0,
    '0',
    'current',
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
    73,
    '68ccl2',
    'SD20251182',
    'wd',
    'wfw',
    'fwf',
    'GRADE 3',
    '8869',
    'GENERAL STUDENT',
    NULL,
    NULL,
    'NONE',
    '0',
    'wwwf',
    '-',
    'wef',
    0,
    '0',
    'current',
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
    74,
    'k7f0l8',
    'SD20251183',
    'wd',
    'wfw',
    'fwf',
    'GRADE 3',
    '8869',
    'GENERAL STUDENT',
    NULL,
    NULL,
    'NONE',
    '0',
    'wwwf',
    '-',
    'wef',
    0,
    '0',
    'current',
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
    75,
    '13p1vx',
    'SD20251184',
    'wd',
    'wfw',
    'fwf',
    'GRADE 3',
    '8869',
    'GENERAL STUDENT',
    NULL,
    NULL,
    'NONE',
    '0',
    'wwwf',
    '-',
    'wef',
    0,
    '0',
    'current',
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
    76,
    's4qovz',
    'SD20251185',
    'wd',
    'wfw',
    'fwf',
    'GRADE 3',
    '8869',
    'GENERAL STUDENT',
    NULL,
    NULL,
    'NONE',
    '0',
    'wwwf',
    '-',
    'wef',
    0,
    '0',
    'current',
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
    77,
    'bdc2sr',
    'SD20251186',
    'wd',
    'wfw',
    'fwf',
    'GRADE 3',
    '8869',
    'GENERAL STUDENT',
    NULL,
    NULL,
    'NONE',
    '0',
    'wwwf',
    '-',
    'wef',
    0,
    '0',
    'current',
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
    78,
    'qkpae6',
    'SD20251187',
    'wd',
    'wfw',
    'fwf',
    'GRADE 3',
    '8869',
    'GENERAL STUDENT',
    NULL,
    NULL,
    'NONE',
    '0',
    'wwwf',
    '-',
    'wef',
    0,
    '0',
    'current',
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
    79,
    'dvjwbo',
    'SD20251188',
    'wd',
    'wfw',
    'fwf',
    'GRADE 3',
    '8869',
    'GENERAL STUDENT',
    NULL,
    NULL,
    'NONE',
    '0',
    'wwwf',
    '-',
    'wef',
    0,
    '0',
    'current',
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
    80,
    '8y1f70',
    'SD20251189',
    'wd',
    'wfw',
    'fwf',
    'GRADE 3',
    '8869',
    'GENERAL STUDENT',
    NULL,
    NULL,
    'NONE',
    '0',
    'wwwf',
    '-',
    'wef',
    0,
    '0',
    'current',
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
    81,
    'gbguwc',
    'SD20251190',
    'wd',
    'wfw',
    'fwf',
    'GRADE 3',
    '8869',
    'GENERAL STUDENT',
    NULL,
    NULL,
    'NONE',
    '0',
    'wwwf',
    '-',
    'wef',
    0,
    '0',
    'current',
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
    82,
    'n1vuf1',
    'SD20251191',
    'wd',
    'wfw',
    'fwf',
    'GRADE 3',
    '8869',
    'GENERAL STUDENT',
    NULL,
    NULL,
    'NONE',
    '0',
    'wwwf',
    '-',
    'wef',
    0,
    '0',
    'current',
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
    83,
    'udw6vr',
    'SD20251192',
    'wd',
    'wfw',
    'fwf',
    'GRADE 3',
    '8869',
    'GENERAL STUDENT',
    NULL,
    NULL,
    'NONE',
    '0',
    'wwwf',
    '-',
    'wef',
    0,
    '0',
    'current',
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
    84,
    '4znefq',
    'SD20251193',
    'wd',
    'wfw',
    'fwf',
    'GRADE 3',
    '8869',
    'GENERAL STUDENT',
    NULL,
    NULL,
    'NONE',
    '0',
    'wwwf',
    '-',
    'wef',
    0,
    '0',
    'current',
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
    85,
    'lfle80',
    'SD20251194',
    'wd',
    'wfw',
    'fwf',
    'GRADE 3',
    '8869',
    'GENERAL STUDENT',
    NULL,
    NULL,
    'NONE',
    '0',
    'wwwf',
    '-',
    'wef',
    0,
    '0',
    'current',
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
    86,
    '6sbwl0',
    'SD20251195',
    'wd',
    'wfw',
    'fwf',
    'GRADE 3',
    '8869',
    'GENERAL STUDENT',
    NULL,
    NULL,
    'NONE',
    '0',
    'wwwf',
    '-',
    'wef',
    0,
    '0',
    'current',
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
    87,
    'i4xp4u',
    'SD20251196',
    'wd',
    'wfw',
    'fwf',
    'GRADE 3',
    '8869',
    'GENERAL STUDENT',
    NULL,
    NULL,
    'NONE',
    '0',
    'wwwf',
    '-',
    'wef',
    0,
    '0',
    'current',
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
    88,
    'v5897t',
    'SD20251197',
    'wd',
    'wfw',
    'fwf',
    'GRADE 3',
    '8869',
    'GENERAL STUDENT',
    NULL,
    NULL,
    'NONE',
    '0',
    'wwwf',
    '-',
    'wef',
    0,
    '0',
    'current',
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
    89,
    'e90eue',
    'SD20251198',
    'wd',
    'wfw',
    'fwf',
    'GRADE 3',
    '8869',
    'GENERAL STUDENT',
    NULL,
    NULL,
    'NONE',
    '0',
    'wwwf',
    '-',
    'wef',
    0,
    '0',
    'current',
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
    90,
    '3tv4bz',
    'SD20251199',
    'wd',
    'wfw',
    'fwf',
    'GRADE 3',
    '8869',
    'GENERAL STUDENT',
    NULL,
    NULL,
    'NONE',
    '0',
    'wwwf',
    '-',
    'wef',
    0,
    '0',
    'current',
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
    91,
    'wdn5g0',
    'SD20251200',
    'wd',
    'wfw',
    'fwf',
    'GRADE 3',
    '8869',
    'GENERAL STUDENT',
    NULL,
    NULL,
    'NONE',
    '0',
    'wwwf',
    '-',
    'wef',
    0,
    '0',
    'current',
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
    92,
    '6wlwyk',
    'SD20251201',
    'wd',
    'wfw',
    'fwf',
    'GRADE 3',
    '8869',
    'GENERAL STUDENT',
    NULL,
    NULL,
    'NONE',
    '0',
    'wwwf',
    '-',
    'wef',
    0,
    '0',
    'current',
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
    93,
    '4gkdho',
    'SD20251202',
    'wd',
    'wfw',
    'fwf',
    'GRADE 3',
    '8869',
    'GENERAL STUDENT',
    NULL,
    NULL,
    'NONE',
    '0',
    'wwwf',
    '-',
    'wef',
    0,
    '0',
    'current',
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
    94,
    'fx3o65',
    'SD20251203',
    'wd',
    'wfw',
    'fwf',
    'GRADE 3',
    '8869',
    'GENERAL STUDENT',
    NULL,
    NULL,
    'NONE',
    '0',
    'wwwf',
    '-',
    'wef',
    0,
    '0',
    'current',
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
    95,
    '2vi64o',
    'SD20251204',
    'wd',
    'wfw',
    'fwf',
    'GRADE 3',
    '8869',
    'GENERAL STUDENT',
    NULL,
    NULL,
    'NONE',
    '0',
    'wwwf',
    '-',
    'wef',
    0,
    '0',
    'current',
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
    96,
    '067ub1',
    'SD20251205',
    'wd',
    'wfw',
    'fwf',
    'GRADE 3',
    '8869',
    'GENERAL STUDENT',
    NULL,
    NULL,
    'NONE',
    '0',
    'wwwf',
    '-',
    'wef',
    0,
    '0',
    'current',
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
    97,
    '8h3msu',
    'SD20251206',
    'wd',
    'wfw',
    'fwf',
    'GRADE 3',
    '8869',
    'GENERAL STUDENT',
    NULL,
    NULL,
    'NONE',
    '0',
    'wwwf',
    '-',
    'wef',
    0,
    '0',
    'current',
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
    98,
    'bolxgt',
    'SD20251207',
    'wd',
    'wfw',
    'fwf',
    'GRADE 3',
    '8869',
    'GENERAL STUDENT',
    NULL,
    NULL,
    'NONE',
    '0',
    'wwwf',
    '-',
    'wef',
    0,
    '0',
    'current',
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
    99,
    'hxnks6',
    'SD20251208',
    'wd',
    'wfw',
    'fwf',
    'GRADE 3',
    '8869',
    'GENERAL STUDENT',
    NULL,
    NULL,
    'NONE',
    '0',
    'wwwf',
    '-',
    'wef',
    0,
    '0',
    'current',
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
    100,
    '9mhvje',
    'SD20251209',
    'wd',
    'wfw',
    'fwf',
    'GRADE 3',
    '8869',
    'GENERAL STUDENT',
    NULL,
    NULL,
    'NONE',
    '0',
    'wwwf',
    '-',
    'wef',
    0,
    '0',
    'current',
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
    101,
    '5en8nt',
    'SD20251210',
    'wd',
    'wfw',
    'fwf',
    'GRADE 3',
    '8869',
    'GENERAL STUDENT',
    NULL,
    NULL,
    'NONE',
    '0',
    'wwwf',
    '-',
    'wef',
    0,
    '0',
    'current',
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
    102,
    'l8l3f7',
    'SD20251211',
    'wd',
    'wfw',
    'fwf',
    'GRADE 3',
    '8869',
    'GENERAL STUDENT',
    NULL,
    NULL,
    'NONE',
    '0',
    'wwwf',
    '-',
    'wef',
    0,
    '0',
    'current',
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
    103,
    'zq7v5x',
    'SD20251212',
    'wd',
    'wfw',
    'fwf',
    'GRADE 3',
    '8869',
    'GENERAL STUDENT',
    NULL,
    NULL,
    'NONE',
    '0',
    'wwwf',
    '-',
    'wef',
    0,
    '0',
    'current',
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
    104,
    '5l85la',
    'SD20251213',
    'wd',
    'wfw',
    'fwf',
    'GRADE 3',
    '8869',
    'GENERAL STUDENT',
    NULL,
    NULL,
    'NONE',
    '0',
    'wwwf',
    '-',
    'wef',
    0,
    '0',
    'current',
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
    '',
    'User Test',
    'Sat, 24 May 2025 09:07:57 GMT',
    'ziv9cxr'
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
    'CONTI',
    '',
    'User Test',
    'Thu, 22 May 2025 15:37:10 GMT',
    'lpsaz1n'
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
    'fck4h',
    'MATHEMATICS',
    'Theory',
    'true',
    'Thu, 22 May 2025 15:37:10 GMT',
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
    '4id3xv',
    'user@user.com',
    'staff',
    '$2b$10$TUy7vZDL2d9QxIwFSNifM.cmdWVfFmFBprp4Xa4GVSelnS4mpqIAy',
    NULL,
    '1,2,3,4,5,6',
    1,
    '3329',
    'Tue, 20 May 2025 16:09:55 GMT',
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
    'lakgt6',
    'Bamb',
    'parent',
    '$2b$10$QVSrjiwfldZYCp1cYhe/9ODb6l.ImeFEBIwhWCIpzpdALGIUkKDCa',
    '1t91x',
    '0',
    2,
    '3145',
    'Thu, 22 May 2025 09:18:15 GMT',
    'User Test',
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
    'agew95',
    'bambalz2w',
    'student',
    '$2b$10$X24Q3/7o2Lcy8CykhKKnc.8Lv.10GtMA9QPFGSRYQRlGFajU48tfq',
    'ijwy1',
    '0',
    3,
    '9710',
    'Thu, 22 May 2025 09:18:15 GMT',
    'User Test',
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
    'em8toa',
    'bam',
    'parent',
    '$2b$10$6rpJmrTHQkMpjyENuPAajOGSDuqUqGIizPI9adMIZVxAB4NfQstmK',
    '3lu0t',
    '0',
    4,
    '3145',
    'Thu, 22 May 2025 09:18:15 GMT',
    'User Test',
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
    '3gx6hw',
    'cv',
    'parent',
    '$2b$10$/fXE8GyICzz9YVH594meg.nJnRvkppjxRtURpVTEa56hHJ1.WKfpO',
    'fdy5p',
    '0',
    5,
    '4271',
    'Thu, 22 May 2025 09:18:15 GMT',
    'User Test',
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
    'gljxbv',
    'cvv',
    'parent',
    '$2b$10$THx32zJcon5YdgubVGfS4uTqo8pijy.tYQUIfFksqrrkHqugNNU1K',
    'alvqp',
    '0',
    7,
    '4271',
    'Thu, 22 May 2025 09:18:15 GMT',
    'User Test',
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
    'gkmhii',
    'olu0pof',
    'parent',
    '$2b$10$cmlVfv99ZsG/S5nzb4bmG.nT67awhmYoGbhDTBz/gIwGMD9cF6rBC',
    'zncf9',
    '0',
    8,
    '4766',
    'Thu, 22 May 2025 09:18:15 GMT',
    'User Test',
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
    '4kpxik',
    'oluwa325d',
    'parent',
    '$2b$10$3Y2ekDgETHIBtyRWxW./SOWt4wptdjYkctQ4srDfzY9WjTvJZpGui',
    'q24x7',
    '0',
    9,
    '4766',
    'Thu, 22 May 2025 09:18:15 GMT',
    'User Test',
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
    'n1jq60',
    'oluwarz52',
    'student',
    '$2b$10$36cx5bPCbjKPaDZD1LA0iudcnj2r7Qi2t1qIWQWuLjHqeIaWa08ey',
    'nlztt',
    '0',
    10,
    '7962',
    'Thu, 22 May 2025 09:18:15 GMT',
    'User Test',
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
    '00pqn6',
    'dodog9ae',
    'parent',
    '$2b$10$Wetf/eRY4g62Jvv4Jll7P.jlss1s7Z93R4/SgVtgk4FV1l4m1PZGC',
    'v29h0',
    '0',
    11,
    '2559',
    'Thu, 22 May 2025 09:18:15 GMT',
    'User Test',
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
    '1jyo6f',
    'frankysso',
    'student',
    '$2b$10$EG.YS7HdhTwTf1Eoacd82uwf7RNMdihyrHcMwfefYEMIVya50Uuoy',
    'xube9',
    '0',
    12,
    '8633',
    'Thu, 22 May 2025 09:18:15 GMT',
    'User Test',
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
    '2xup4z',
    'continualipuf',
    'student',
    '$2b$10$Ve6ofEKm7pyrpuCK4ewWB.hdksUbCVKjJknHcIcfkRdi0SkEHFEIC',
    'g02v8',
    '0',
    13,
    '1942',
    'Thu, 22 May 2025 09:18:15 GMT',
    'User Test',
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
    'vopivi',
    'Jeremyauj',
    'student',
    '$2b$10$s1hknzTotoTHT0K5BC9A7.TNQImAdQFx54sBgofBNkFoWEFRqtARG',
    'jkeba',
    '0',
    14,
    '4421',
    'Sat, 24 May 2025 09:07:57 GMT',
    'User Test',
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
    'd431vj',
    'Ben2ub',
    'parent',
    '$2b$10$xoNdBBJkCvDUqbMRwicCCO2gYg6I6nyzBebeuL6OZ4H907jATO30G',
    '8sYRL',
    '0',
    15,
    '5962',
    'Sat, 24 May 2025 09:07:57 GMT',
    'User Test',
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
    'fpc4pr',
    'Gracek6l',
    'parent',
    '$2b$10$c9N8/.1nS0asOi6Ekf3A7.LSYLpu5G/zhwJpqfLrLGVMpCP5popVq',
    'BdHd1',
    '0',
    16,
    '1581',
    'Sat, 24 May 2025 09:07:57 GMT',
    'User Test',
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
    't2v4z8',
    'Gregorylte',
    'student',
    '$2b$10$v.yF2OouRdxIxUjEKrEFW./1bPIRsA5iRCbbTqL0M29EBj.1kM4ju',
    'zuklo',
    '0',
    17,
    '9333',
    'Sat, 24 May 2025 09:07:57 GMT',
    'User Test',
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
    '2vjwx5',
    'Zuluwg9',
    'parent',
    '$2b$10$yq0Crlz67e3jjsmSedSwHe/kvB2DSFHUdUwiCbgl3byBVG7gbIjyi',
    'HYxQw',
    '0',
    18,
    '7181',
    'Sat, 24 May 2025 09:07:57 GMT',
    'User Test',
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
    'e84mjk',
    'bbbbbbxpp',
    'student',
    '$2b$10$pijXhI0bjzlR5KKQZwgC1ecpY/MuCBmIU5Fdrd/dwerXuJxoNc.MC',
    'fsmo6',
    '0',
    19,
    '8893',
    'Sat, 24 May 2025 09:07:57 GMT',
    'User Test',
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
    '32bqb1',
    'bbbgee',
    'parent',
    '$2b$10$Ubi1gX5afcFu1htzdsjUCuuukDHYLs9XZJhATZ/ZdxErCwWH8Qp8u',
    '3Sh1P',
    '0',
    20,
    '2976',
    'Sat, 24 May 2025 09:07:57 GMT',
    'User Test',
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
    'g13cd5',
    'rrrr7ve',
    'student',
    '$2b$10$nBhSkdmZcL8OKGbwGY4AqeM.s01IQV6S5jxoSBNBr8NCfSktI857m',
    'wyj1l',
    '0',
    21,
    '1805',
    'Sat, 24 May 2025 09:07:57 GMT',
    'User Test',
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
    'yt6ldm',
    'rrrrrfp8',
    'student',
    '$2b$10$1lkM1pziEZOZlbt17a11COfqNGDhDFZ.b3kj3Ab9Hr71OcL4ISewS',
    'gpxmx',
    '0',
    22,
    '1845',
    'Sat, 24 May 2025 09:07:57 GMT',
    'User Test',
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
    'o7cdyo',
    'eeeempc',
    'student',
    '$2b$10$b.rLJAcoCBdrs9duma6lAO4faLsnmdqU/hqpVtkAbJIpDKLTQlVp2',
    'vynxg',
    '0',
    23,
    '8795',
    'Sat, 24 May 2025 09:07:57 GMT',
    'User Test',
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
    '4necy6',
    'rrrrrrvx3',
    'student',
    '$2b$10$bwE3OKvGe0Jxu9oHsEXGEeAyUunc6RZov03Me0ZyD2bYmAzCu.hxC',
    'ilkoa',
    '0',
    24,
    '7041',
    'Sat, 24 May 2025 09:07:57 GMT',
    'User Test',
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
    'ftppsm',
    'eeeeuwe',
    'student',
    '$2b$10$lsnpt2B/N07GR2n92kg0AO7pnqr.3oJC9KVdI0rftaZBdrWJMCjYy',
    'buflk',
    '0',
    25,
    '9626',
    'Sat, 24 May 2025 09:07:57 GMT',
    'User Test',
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
    'gh8jjh',
    'rrrrrzdq',
    'student',
    '$2b$10$vguZxyaL0eLNDaqryQitROCX0/hH4e/pLVugNoQZosvqI3ptMg3rm',
    'dg8s7',
    '0',
    26,
    '1190',
    'Sat, 24 May 2025 09:07:57 GMT',
    'User Test',
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
    '98hcr4',
    'eeee7ig',
    'student',
    '$2b$10$d2hL02wG09Soj7tMC0lhTOG6diDjAAYPO2OedFRIG6FMWrKEMlRse',
    'k8gog',
    '0',
    27,
    '7723',
    'Sat, 24 May 2025 09:07:57 GMT',
    'User Test',
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
    'x2qzti',
    'dewexqp',
    'student',
    '$2b$10$TDD1QvVaBrR1yYr0x66aSu9WNwh2VZ.sE8lKlXHeY8ymWUvgVhtHu',
    'gjyzz',
    '0',
    28,
    '5349',
    'Sat, 24 May 2025 09:07:57 GMT',
    'User Test',
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
    'oscxqt',
    'wedlzm',
    'student',
    '$2b$10$ZqItjJF3eOQ4kgasnZLHd.wBB024hMYU8lkFQWUccHNpx8wkyqeYe',
    'fetpy',
    '0',
    29,
    '5279',
    'Sat, 24 May 2025 09:07:57 GMT',
    'User Test',
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
    'zo78fm',
    'wedfaq',
    'student',
    '$2b$10$m1oWFr.goMq1CvT5ZDhl1O43GG6TTPjBOwdVfhCwR6yC.f8uewMXy',
    'gps6h',
    '0',
    30,
    '4800',
    'Sat, 24 May 2025 09:07:57 GMT',
    'User Test',
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
    '3pg1ny',
    'wedekn',
    'student',
    '$2b$10$ZBfyumFdUQleCHDnnpoqpObBZUo2BafjaH3oieXHhkLIXWrLxaVf6',
    'wxtna',
    '0',
    31,
    '5777',
    'Sat, 24 May 2025 09:07:57 GMT',
    'User Test',
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
    '3dhu82',
    'wedvai',
    'student',
    '$2b$10$ngVMmzKsZHRNCMa0nAq2eeVAc9cSZ5TqOhKvd7iXYBJleFdAl/e1i',
    'wu4rs',
    '0',
    32,
    '8792',
    'Sat, 24 May 2025 09:07:57 GMT',
    'User Test',
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
    'b46qlb',
    'weddyq',
    'student',
    '$2b$10$l00HLtGdv8i6bTCUBifl5u0m0ZG4RG9QAk6DVqjv5O77XpbhASQ.m',
    'zifka',
    '0',
    33,
    '1404',
    'Sat, 24 May 2025 09:07:57 GMT',
    'User Test',
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
    'kcozve',
    'eddlz',
    'student',
    '$2b$10$f6oU6A3lwZyiMz6H1dmmqOJFkMHMceXRWHWElHnItjKjTc0evIx/a',
    'tf8zl',
    '0',
    34,
    '9389',
    'Sat, 24 May 2025 09:07:57 GMT',
    'User Test',
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
    'bh5gih',
    'wedhii',
    'student',
    '$2b$10$7XuJo3GJKrtY6kZSQNLjr.sMEu6CRCEkv3.1h.v/rMNZ9GT5.wIK6',
    'yheia',
    '0',
    35,
    '4170',
    'Sat, 24 May 2025 09:07:57 GMT',
    'User Test',
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
    'isio3d',
    'w5ef',
    'student',
    '$2b$10$SErkxA9zWbqqi4fQzJveie.oVQxFD3btMuRDD/2DneUq5waZl19F2',
    'go9ut',
    '0',
    36,
    '9330',
    'Sat, 24 May 2025 09:07:57 GMT',
    'User Test',
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
    'fpc7oy',
    'wdn5k',
    'student',
    '$2b$10$G.CJqCvVXW6joltcLSqE1OLpV7UTFYj/MYyIqAbN7UwPVrzCPOPyG',
    'jvyqn',
    '0',
    37,
    '4905',
    'Sat, 24 May 2025 09:07:57 GMT',
    'User Test',
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
    'v69ojh',
    'wdssu',
    'student',
    '$2b$10$hkbcZNm5N.cRtIWcqBN6Ku1uv6Q4s/gg4zRm4CH/xPwxxgai8Lvu6',
    'blb9r',
    '0',
    38,
    '3705',
    'Sat, 24 May 2025 09:07:57 GMT',
    'User Test',
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
    'u95jye',
    'wedvmh',
    'student',
    '$2b$10$o9idL2Q07HT8DwT9Uq0FteDHuKbbQnY14MHp3DBCaGLFyow0qpQUC',
    'dm8wo',
    '0',
    39,
    '7035',
    'Sat, 24 May 2025 09:07:57 GMT',
    'User Test',
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
    'ps6oq6',
    'wdeqo',
    'student',
    '$2b$10$nJqMrzgn/sCrPlWBQjliWOYyctivWfdVD4.FdZGYOWPd5xee2W7X6',
    '1ypyh',
    '0',
    40,
    '2985',
    'Sat, 24 May 2025 09:07:57 GMT',
    'User Test',
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
    'u2hcb0',
    'dewet4z',
    'student',
    '$2b$10$rkw5jd1HOkZL/Pf4dK0UGuHitYjFGfE1txBT26b4trpc4H.a3dxwO',
    'aqfsy',
    '0',
    41,
    '2969',
    'Sat, 24 May 2025 09:07:57 GMT',
    'User Test',
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
    '4nk9u7',
    'dwedlfu',
    'student',
    '$2b$10$R.3PTSr0Iwa0w1eZlJi8JebHvgODtvtrSxhX8pWt6kpV.3C00/OJ.',
    'z7no2',
    '0',
    42,
    '9266',
    'Sat, 24 May 2025 09:07:57 GMT',
    'User Test',
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
    'ceuk8z',
    'wdwve',
    'student',
    '$2b$10$TpGXhsWMXhfSpvkWj/7icOcPXyhHedtC3OmPmLYpHNhRxeligNJ0C',
    'cdxrf',
    '0',
    43,
    '4351',
    'Sat, 24 May 2025 09:07:57 GMT',
    'User Test',
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
    '6irrc6',
    'wd29o',
    'student',
    '$2b$10$FHtlG20G7IUCzkQbEEhH2.Pb.40ehrP66Ov0F3ql4cXTX0nIsIjxG',
    'reltv',
    '0',
    44,
    '6532',
    'Sat, 24 May 2025 09:07:57 GMT',
    'User Test',
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
    'inknvr',
    'wedfsn',
    'student',
    '$2b$10$eIzq9BYNQUedU.r8ahIXSOXx7sEb88u5b6ODbpyibV.ytl6q2AZ..',
    '4ljm6',
    '0',
    45,
    '6107',
    'Sat, 24 May 2025 09:07:57 GMT',
    'User Test',
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
    'pshajl',
    'wdzmu',
    'student',
    '$2b$10$RIMeKTaoCgiLetcj4tZjje5Q27n/jGfCgKhJi0kjHBUo7/yYPQMuq',
    'lpo8t',
    '0',
    46,
    '3559',
    'Sat, 24 May 2025 09:07:57 GMT',
    'User Test',
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
    'kg293m',
    'wdook',
    'student',
    '$2b$10$vFi/.QchBkhQy/3TI6.USu4jAbDij/EZVT50NE9.YjzEV4iFRt9Jq',
    'vywnx',
    '0',
    47,
    '8262',
    'Sat, 24 May 2025 09:07:57 GMT',
    'User Test',
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
    'odm9bs',
    'wdnsw',
    'student',
    '$2b$10$E9vO2oAsBIwOBQUjnHsjc.HisPMGHu7.lmfoP03EvzKtTQKlGx1dG',
    'mfrcw',
    '0',
    48,
    '8808',
    'Sat, 24 May 2025 09:07:57 GMT',
    'User Test',
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
    'k3azgj',
    'wd5tb',
    'student',
    '$2b$10$6HJzLnnyG5n09aikvDgUhehSmtN4cJBbJhTYvdUkTk5gXoy4CXM2e',
    'muogu',
    '0',
    49,
    '1669',
    'Sat, 24 May 2025 09:07:57 GMT',
    'User Test',
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
    'nri6md',
    'wdw7h',
    'student',
    '$2b$10$Bl99b5HEKrK7h5FyjHMO2OefScHlYdJWwkGhdKENnXDDBevFT3DBS',
    'tx4sa',
    '0',
    50,
    '7972',
    'Sat, 24 May 2025 09:07:57 GMT',
    'User Test',
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
    'koabvl',
    'wd6zv',
    'student',
    '$2b$10$PhuJUTfJCImX87nhxTtOI.dov9FwgVL9cnQFb681XUSP4NU2CJMKa',
    'pwzkg',
    '0',
    51,
    '8379',
    'Sat, 24 May 2025 09:07:57 GMT',
    'User Test',
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
    'bydqx2',
    'wdaj7',
    'student',
    '$2b$10$JicJgA67CW31qKU1bKoGPuILI12QDZfEwXlD9VX/s5O7a62TZFaP.',
    'psgnt',
    '0',
    52,
    '9322',
    'Sat, 24 May 2025 09:07:57 GMT',
    'User Test',
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
    'i9gb6q',
    'wd4cx',
    'student',
    '$2b$10$.KpsuVYNCKByFgLe875YWOs86.u5ZTSf7EtpAKhgOlwzIyIf1vuuy',
    'ynoau',
    '0',
    53,
    '7104',
    'Sat, 24 May 2025 09:07:57 GMT',
    'User Test',
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
    'cq2g39',
    'wdbqi',
    'student',
    '$2b$10$l1BXlTNPlloSTbexg20tGOcNfQYMytD0SLa35qbnabgGmJfs6Q1qG',
    '4mtn3',
    '0',
    54,
    '5320',
    'Sat, 24 May 2025 09:07:57 GMT',
    'User Test',
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
    'v3rhoo',
    'wdwiv',
    'student',
    '$2b$10$dNe1pUqnz/Z2AaKTIcBD0ejkET6t8uQdGnhgu/QJNiAkUcox.NKt6',
    '7vy9g',
    '0',
    55,
    '8730',
    'Sat, 24 May 2025 09:07:57 GMT',
    'User Test',
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
    'wrk01p',
    'wdqhr',
    'student',
    '$2b$10$GiwSBFDkVqsX.ciQMfvLTO.oYcBSfnh/bG352EAgPUwH40cKiRQIK',
    '2ze6f',
    '0',
    56,
    '3213',
    'Sat, 24 May 2025 09:07:57 GMT',
    'User Test',
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
    'tev5av',
    'wdas4',
    'student',
    '$2b$10$pI2WOmwifb.jvvnM2DPiR./A5ImIwtefCHc/mnNbt15owIOsJrh92',
    'obwpq',
    '0',
    57,
    '9276',
    'Sat, 24 May 2025 09:07:57 GMT',
    'User Test',
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
    'u9sq77',
    'wdupc',
    'student',
    '$2b$10$cAOAVLrpR37M754dmYujVO1LLmLOELRoOlm0twwkpOf5pmGDLW5jW',
    'rit62',
    '0',
    58,
    '6955',
    'Sat, 24 May 2025 09:07:57 GMT',
    'User Test',
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
    'iuzkhg',
    'wdsbr',
    'student',
    '$2b$10$X6hjpuNklWryIUGdnSnDzurLnWoli3Sfk/Py7vwB7vTvPUPms6vEW',
    'uklry',
    '0',
    59,
    '9838',
    'Sat, 24 May 2025 09:07:57 GMT',
    'User Test',
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
    '7im2tc',
    'wdizn',
    'student',
    '$2b$10$GCOruV6r.uQZphTCHbz1K.L2.9DdLF68CvEaLL/zeV/0qGtrF13Mi',
    'rovys',
    '0',
    60,
    '2140',
    'Sat, 24 May 2025 09:07:57 GMT',
    'User Test',
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
    'zs2aku',
    'wd18o',
    'student',
    '$2b$10$o/2xL79hmhVqnHCEZvqidO3jXy96rcvJM.ARtGNhN/Z54L4ms0nGC',
    'va24v',
    '0',
    61,
    '8434',
    'Sat, 24 May 2025 09:07:57 GMT',
    'User Test',
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
    'pb96on',
    'wdwhm',
    'student',
    '$2b$10$dQfKYmsDhzX7ccpZ/zC4DOeGPzqFNynjc2u2xkXqiKk1vzWT.GGIe',
    'wjcoo',
    '0',
    62,
    '4244',
    'Sat, 24 May 2025 09:07:57 GMT',
    'User Test',
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
    'qwq8dc',
    'wdqui',
    'student',
    '$2b$10$uJ72DZICIL2KjE8kORRTn.GicDbSaKGB1.kjm36q1S5jCyZMVt54u',
    'qju9j',
    '0',
    63,
    '4939',
    'Sat, 24 May 2025 09:07:57 GMT',
    'User Test',
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
    'dwqi5m',
    'wdubz',
    'student',
    '$2b$10$w5kLPrrek0iSxpd.06wc8.kvOXbsJS5hU4TyHQG90RGBKekzsuvCu',
    'fa1ee',
    '0',
    64,
    '2498',
    'Sat, 24 May 2025 09:07:57 GMT',
    'User Test',
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
    'e2xywo',
    'wdvha',
    'student',
    '$2b$10$3w8PyIKg9LkZo.WbWhEqW.ngK7YtUmw/yY2OiOzHK1tcTdgZbtD3m',
    'hxlpo',
    '0',
    65,
    '6399',
    'Sat, 24 May 2025 09:07:57 GMT',
    'User Test',
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
    'wej787',
    'wdvz9',
    'student',
    '$2b$10$nj.IQ879yyNnbte63J.JMeJHSTqmpMYFYB8WKTPnuRuAJ5N9AWGVK',
    'ay7gm',
    '0',
    66,
    '7868',
    'Sat, 24 May 2025 09:07:57 GMT',
    'User Test',
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
    '5qchic',
    'wd3mh',
    'student',
    '$2b$10$dt9clH2L0.p2IrblsUuj0un2Wf4Alose6bhwpTZz2X2KICZVWCEGu',
    'xpfin',
    '0',
    67,
    '6874',
    'Sat, 24 May 2025 09:07:57 GMT',
    'User Test',
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
    'a6ew1b',
    'wdozy',
    'student',
    '$2b$10$UwC431.1M414b4LWJUqIH.s5rjO9GMlu6rs8hTRSZ2qkgd0LbVZ1S',
    'v6yuh',
    '0',
    68,
    '5765',
    'Sat, 24 May 2025 09:07:57 GMT',
    'User Test',
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
    'rhqlrt',
    'wdtkn',
    'student',
    '$2b$10$r.vG5ifO3WJwHQLmNvIX6.B.fwkXMJnuuRrdzj8.Fu/EKiPAMkM7u',
    'h5fki',
    '0',
    69,
    '4510',
    'Sat, 24 May 2025 09:07:57 GMT',
    'User Test',
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
    'pwie9o',
    'wdzcj',
    'student',
    '$2b$10$n8EE45Sfq9.yquVGZAkpiuCXT1/KMfinWbJhWcWwmZK9sGRGnJ6DO',
    'y7lda',
    '0',
    70,
    '9386',
    'Sat, 24 May 2025 09:07:57 GMT',
    'User Test',
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
    'ievpsj',
    'wdjje',
    'student',
    '$2b$10$bxPZZrbu66N5pxverFEJmOmZoviGhdA/L0MSey55OcL1EIy5LAXVG',
    'vw4kh',
    '0',
    71,
    '6483',
    'Sat, 24 May 2025 09:07:57 GMT',
    'User Test',
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
    'k9jnus',
    'wdsbm',
    'student',
    '$2b$10$uIsiWc6743b158R.vaQcAe/lYFEEkEbSVm9bRbOVzFudSZQUw74Ei',
    'zwnxr',
    '0',
    72,
    '6112',
    'Sat, 24 May 2025 09:07:57 GMT',
    'User Test',
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
    'hf1cqr',
    'wdvya',
    'student',
    '$2b$10$mQiy7sQexh9orNz89pvWBeOO07Pbvh/PIYNsJ2xl24IyBXXKoMeMG',
    'kkmwd',
    '0',
    73,
    '4568',
    'Sat, 24 May 2025 09:07:57 GMT',
    'User Test',
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
    'z9l09l',
    'wd3nn',
    'student',
    '$2b$10$yTNCMXH/MmWPUlTGTyBN/u4E17BsyvcNt25AoXqqeTNOFzV/t61/C',
    'py8fo',
    '0',
    74,
    '5662',
    'Sat, 24 May 2025 09:07:57 GMT',
    'User Test',
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
    'n5yrhl',
    'wdp3x',
    'student',
    '$2b$10$x8jBErZ/44.rTFNu1AOpReqnSWL3fcdIhK2f4mzmj..nG5uueFn5S',
    'yk8zv',
    '0',
    75,
    '2023',
    'Sat, 24 May 2025 09:07:57 GMT',
    'User Test',
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
    'njbpmv',
    'wdvjg',
    'student',
    '$2b$10$fW7eKbjWBu2AuHUx6uQDRuPpuLZptzF4FQuv/X8xsT/4n4pglRzL.',
    'ehjxo',
    '0',
    76,
    '3567',
    'Sat, 24 May 2025 09:07:57 GMT',
    'User Test',
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
    '44765u',
    'wdyu7',
    'student',
    '$2b$10$Ly9M0KzuBiac4bpz6BtdAeOS4H1TBkfdUaBvOyjpQISyJVpNFg2OK',
    'jo2z6',
    '0',
    77,
    '6403',
    'Sat, 24 May 2025 09:07:57 GMT',
    'User Test',
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
    '3h579k',
    'wdl7b',
    'student',
    '$2b$10$.DZFVyzC/ZjCqORZ6Lv/leUK6C.Y6TfRTocPaBEVxyojGKc3BVxI6',
    't1uz1',
    '0',
    78,
    '3008',
    'Sat, 24 May 2025 09:07:57 GMT',
    'User Test',
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
    'mj85rt',
    'wdioc',
    'student',
    '$2b$10$D/zdQZMztfPPRt0BQj6Ou.AJ3KU.FTYYe0PaKnPVELG2NV450rUP2',
    '4njju',
    '0',
    79,
    '6000',
    'Sat, 24 May 2025 09:07:57 GMT',
    'User Test',
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
    'ruic5k',
    'wdsls',
    'student',
    '$2b$10$KJXYBEL17sgqJvfNqylMW.2ikGwH6NEM.8yMAMYFf66I7QmB6txYS',
    'y37gn',
    '0',
    80,
    '4907',
    'Sat, 24 May 2025 09:07:57 GMT',
    'User Test',
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
    '6w33ac',
    'wd2fj',
    'student',
    '$2b$10$QlgWQMhcBybhZCD7JelDmeEXitfr36y4pHqcQNiM/Owbzat4qhpnm',
    'tso7k',
    '0',
    81,
    '1827',
    'Sat, 24 May 2025 09:07:57 GMT',
    'User Test',
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
    'q1gjla',
    'wdjx6',
    'student',
    '$2b$10$5WQ2liSMm/rSQXny58IFCeBP1Q2Gafdal0sNSNYQrrzN9krTOWKvm',
    'wsqxt',
    '0',
    82,
    '1953',
    'Sat, 24 May 2025 09:07:57 GMT',
    'User Test',
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
    'u8ejgw',
    'wdgs5',
    'student',
    '$2b$10$ul9BwC2cVlyttiGah.QUZOny.fkKPupZjc2YcGw0.kTFh5N0GHkbC',
    'q1p2l',
    '0',
    83,
    '5405',
    'Sat, 24 May 2025 09:07:57 GMT',
    'User Test',
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
    '28hz2q',
    'wdccv',
    'student',
    '$2b$10$6AE.q7Cxec.RiGAx4jiqGeT8ATJWNvl0eiJacX4msvRH1jH3hSjb.',
    'jgkil',
    '0',
    84,
    '2288',
    'Sat, 24 May 2025 09:07:57 GMT',
    'User Test',
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
    '68ccl2',
    'wdjj3',
    'student',
    '$2b$10$d3ZdCde0NqLuRQWYkEz35.06HQIvF9wG29FxEu/5UtRQcOBWFY.Qi',
    'jetwh',
    '0',
    85,
    '5068',
    'Sat, 24 May 2025 09:07:57 GMT',
    'User Test',
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
    'k7f0l8',
    'wdyso',
    'student',
    '$2b$10$dI0AGj637pff2yG65SmsDOq5c6uA5xdKWxK7yUELaGTdmoLoX1Bgq',
    'ngobx',
    '0',
    86,
    '7543',
    'Sat, 24 May 2025 09:07:57 GMT',
    'User Test',
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
    '13p1vx',
    'wdloh',
    'student',
    '$2b$10$UGLw9Wz9gXrljnrcTf1J0ujiQWNZsLY1niLnfZ/q6DrLmtQqIgQ1S',
    'gcqg2',
    '0',
    87,
    '9266',
    'Sat, 24 May 2025 09:07:57 GMT',
    'User Test',
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
    's4qovz',
    'wd9nf',
    'student',
    '$2b$10$AefMBpKzD63wb0nYBKNFLOAgEbTjjA2lQUMgEYe/sw/kU2EUdMeB6',
    'bzsnd',
    '0',
    88,
    '2547',
    'Sat, 24 May 2025 09:07:57 GMT',
    'User Test',
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
    'bdc2sr',
    'wdjyf',
    'student',
    '$2b$10$adpWKwagGpOdw57TYbqqf.IGFSg54b86skcbV95cgg3rVk1BNl/DO',
    'ladsj',
    '0',
    89,
    '1033',
    'Sat, 24 May 2025 09:07:57 GMT',
    'User Test',
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
    'qkpae6',
    'wdwry',
    'student',
    '$2b$10$esC98lu/l/doN2EPh2ngz.sZnmcd/GTGpyTqpurdx2wzMjKe79HSe',
    'mvjan',
    '0',
    90,
    '3026',
    'Sat, 24 May 2025 09:07:57 GMT',
    'User Test',
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
    'dvjwbo',
    'wduvr',
    'student',
    '$2b$10$kPVdScgSaM78RctG4TbOkeaI5jcmAuYz99LAp3U07FrIme1kR4g5S',
    'iyzwc',
    '0',
    91,
    '7429',
    'Sat, 24 May 2025 09:07:57 GMT',
    'User Test',
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
    '8y1f70',
    'wdal5',
    'student',
    '$2b$10$bwxAPSngerauIFYOiZ4Tduh78nwt0gRyxmyp6FYInyq5IjTAWLrte',
    'ajimk',
    '0',
    92,
    '5290',
    'Sat, 24 May 2025 09:07:57 GMT',
    'User Test',
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
    'gbguwc',
    'wdafj',
    'student',
    '$2b$10$kUh.9q8WJZKaoD/spnJOGOw3X648orMoDyXy1AGvF5yY4kNAbgPea',
    'oxyxv',
    '0',
    93,
    '6520',
    'Sat, 24 May 2025 09:07:57 GMT',
    'User Test',
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
    'n1vuf1',
    'wdwb7',
    'student',
    '$2b$10$qDsXtKXWPHUA0LVYPYEuBOHDuRbkl1qUMh3VU8UGDpAMameQ1d5lm',
    'wkhf2',
    '0',
    94,
    '1101',
    'Sat, 24 May 2025 09:07:57 GMT',
    'User Test',
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
    'udw6vr',
    'wdgg3',
    'student',
    '$2b$10$/HDnRWCiUBlPAnsEKg3Kn.ZHzlQQqXq10gQP7EtHuqt5d0XsK66pu',
    'awcbw',
    '0',
    95,
    '9183',
    'Sat, 24 May 2025 09:07:57 GMT',
    'User Test',
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
    '4znefq',
    'wdbb4',
    'student',
    '$2b$10$KBLPTAaI7PLA3gXlvVjgIORRhwyAvgOqAOQCQb/zp1hHynDhKnLSm',
    'c3osv',
    '0',
    96,
    '9582',
    'Sat, 24 May 2025 09:07:57 GMT',
    'User Test',
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
    'lfle80',
    'wddkb',
    'student',
    '$2b$10$d4CMpc8WEYKYfEisMQ8cvuEi58Xfw5zM0iHhUoW9XbmUTmG8CVdrO',
    '7gt7v',
    '0',
    97,
    '2699',
    'Sat, 24 May 2025 09:07:57 GMT',
    'User Test',
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
    '6sbwl0',
    'wdjer',
    'student',
    '$2b$10$zDfJ4YkBkI1tdvYx4xduzeXS8g9pw79sVNhjq7Ixn0v3pnQqm0aGa',
    'bbbax',
    '0',
    98,
    '1633',
    'Sat, 24 May 2025 09:07:57 GMT',
    'User Test',
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
    'i4xp4u',
    'wd2yl',
    'student',
    '$2b$10$7Jo2xUyg2Zs7tTR1Fky.teWk9HcRUncHx9skDHEmHCAJ82ku2u7LO',
    'fzvag',
    '0',
    99,
    '5137',
    'Sat, 24 May 2025 09:07:57 GMT',
    'User Test',
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
    'v5897t',
    'wdlna',
    'student',
    '$2b$10$VsJK7Bd8Xq042jiAGkk7fuBh5ZwprMIaXUO.KOeHH/5OwEgFo/Y5C',
    'gddlt',
    '0',
    100,
    '4609',
    'Sat, 24 May 2025 09:07:57 GMT',
    'User Test',
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
    'e90eue',
    'wdmma',
    'student',
    '$2b$10$0HFbmdTycba3X/Q2iOoJbug19k4HyIeFDX8dgoX0a0kzmwq/25h2a',
    'gv2ny',
    '0',
    101,
    '2949',
    'Sat, 24 May 2025 09:07:57 GMT',
    'User Test',
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
    '3tv4bz',
    'wdmae',
    'student',
    '$2b$10$/52LCFbkpuqHysOa43vX9OOwV3IADCqjP5ciAvIB.W/rEjVK0Ve2O',
    'zoigz',
    '0',
    102,
    '4252',
    'Sat, 24 May 2025 09:07:57 GMT',
    'User Test',
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
    'wdn5g0',
    'wdl3o',
    'student',
    '$2b$10$GOPkeC/u4KC4bzLGj9gFr.2RgwnTwEmKbRx0XV0GPpYaMQYl8ERFu',
    'u4vwo',
    '0',
    103,
    '8892',
    'Sat, 24 May 2025 09:07:57 GMT',
    'User Test',
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
    '6wlwyk',
    'wdisv',
    'student',
    '$2b$10$auPbMVla7TQu2CcVHo8Ureks1wS0SEiZwO.aAKRX6MIh5FpWAtbGS',
    'axa3s',
    '0',
    104,
    '9445',
    'Sat, 24 May 2025 09:07:57 GMT',
    'User Test',
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
    '4gkdho',
    'wdwkf',
    'student',
    '$2b$10$E0VYWet4WS1DkwXP3i6IIeuX40iSCGkYbMe4RYcfiqW0H63nETAN2',
    '5i1xw',
    '0',
    105,
    '6157',
    'Sat, 24 May 2025 09:07:57 GMT',
    'User Test',
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
    'fx3o65',
    'wdulm',
    'student',
    '$2b$10$FzJ9EyDK2N6KYPVlwVHAQOj5kcgRaKCtPFYwv6B1/qeNmftgLDgBq',
    'gjabm',
    '0',
    106,
    '8667',
    'Sat, 24 May 2025 09:07:57 GMT',
    'User Test',
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
    '2vi64o',
    'wdazj',
    'student',
    '$2b$10$J7VUjOHEC/HbmGntQDZUEu1ABE0wgrB.9Zy/hY8h/R14Z.3bxCdbi',
    'skshm',
    '0',
    107,
    '7882',
    'Sat, 24 May 2025 09:07:57 GMT',
    'User Test',
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
    '067ub1',
    'wdaxp',
    'student',
    '$2b$10$f1BxGF0esMyMxm9wxBiVNuslPO2qeQ5hx/0urnOGtd82dIZmjRsQW',
    'puzsc',
    '0',
    108,
    '7122',
    'Sat, 24 May 2025 09:07:57 GMT',
    'User Test',
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
    '8h3msu',
    'wdg1x',
    'student',
    '$2b$10$CMgbqQzMJXmyPaoBdfGRNub9Rtyw6IQhYeEL05nynPjLrJ3s2lkOu',
    'uy487',
    '0',
    109,
    '7397',
    'Sat, 24 May 2025 09:07:57 GMT',
    'User Test',
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
    'bolxgt',
    'wdzmy',
    'student',
    '$2b$10$THgfRpTDV9zIFR2kaREc/.qi7DUwRk9XmH4YW7cU1A3b2n6B4NReS',
    '5bzxz',
    '0',
    110,
    '3925',
    'Sat, 24 May 2025 09:07:57 GMT',
    'User Test',
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
    'hxnks6',
    'wdgew',
    'student',
    '$2b$10$5NgGnPYgpUhfVE8vR8aoOef7dk/Ir8V87I5fsJy8ikbqyfBivI/xW',
    'bpgvv',
    '0',
    111,
    '6433',
    'Sat, 24 May 2025 09:07:57 GMT',
    'User Test',
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
    '9mhvje',
    'wdyqm',
    'student',
    '$2b$10$DJ4WE4gnZ29OmXMDrxhjx.hcrQBrvYABlxocibzLrQ8/WgRB3qcpW',
    'la9wo',
    '0',
    112,
    '5703',
    'Sat, 24 May 2025 09:07:57 GMT',
    'User Test',
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
    '5en8nt',
    'wdsms',
    'student',
    '$2b$10$R44FklHWkDqqhtKpFVRZ2e1DEascndp9WUFQjWJL3MIHyM6VqgfR.',
    's8jvx',
    '0',
    113,
    '4268',
    'Sat, 24 May 2025 09:07:57 GMT',
    'User Test',
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
    'l8l3f7',
    'wdrqg',
    'student',
    '$2b$10$ogLHqqM3KRNmesKWaCE35uAGlhZpq95egws9K9YnNejJxa8sbUQC2',
    'jq55y',
    '0',
    114,
    '7580',
    'Sat, 24 May 2025 09:07:57 GMT',
    'User Test',
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
    'zq7v5x',
    'wdrag',
    'student',
    '$2b$10$o/M.AF8AqD4aPyPxCyDR5eOuI8eGXUvaNVGNJrvNlDaC6suZMgew2',
    'widoh',
    '0',
    115,
    '1428',
    'Sat, 24 May 2025 09:07:57 GMT',
    'User Test',
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
    '5l85la',
    'wd58n',
    'student',
    '$2b$10$7E.DxCN4eWseA5Fbw1rQP.9YaNQXF5A0eq2jaVLHUf9vfpiWIYuK.',
    'uvvvy',
    '0',
    116,
    '2642',
    'Sat, 24 May 2025 09:07:57 GMT',
    'User Test',
    'true'
  );

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
