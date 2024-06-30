

const pool = require("../../config/database.js");
const logger = require("../../util/logger.js");
let date = new Date();

module.exports = {
  createInventory: async (req, res) => {
    const data = req.body;
console.log(data)
    let date = Date.now();

    let sqlQuery = `insert into inventory (itemName,cartegory,quantity,CreatedBy,supplier,createdAt,supplierContact1,supplierContact2,SupplierInfo,isActive) values
 ('${data.itemName}','${data.cartegory}',${data.quantity},'${data.CreatedBy}','${data.supplier}','${date}','${data.supplierContact1}','${data.supplierContact2}','${data.SupplierInfo}','true')`;
    pool.query(sqlQuery, (error, result) => {
      if (error) {
        logger.info(
          `${req.method} ${req.originalUrl},'DB error:'${error.sqlMessage}, create new Inventory`
        );
        return res
          .status(500)
          .json({ success: 0, error: "internal server error" });
      }

      if (result.affectedRows == 1) {
        logger.info(`${req.method} ${req.originalUrl}, create new Inventory`);
        return res
        .status(200)
        .json({ success: 1, data:result });
      }
    });
  },


  getInventoryById: (req, res) => {
    const id = parseInt(req.params.Inventory_id);
    let sqlQuery = `select * from Inventory where Inventory_id = ${id}`;
    pool.query(sqlQuery, (error, result) => {
      if (error) {
        logger.info(
          `${req.method} ${req.originalUrl},'DB error:'${error.sqlMessage}, fetch Inventory by id`
        );
        return res
          .status(500)
          .json({ success: 0, error: "internal server error" });
      }

      if (!result) {
        logger.info(
          `${req.method} ${req.originalUrl}, fetch Inventory by id: no record found`
        );
        return res
          .status(200)
          .json({ success: 1, error: "fetch Inventory by id: no record found" });
      }
      logger.info(`${req.method} ${req.originalUrl}, fetch Inventory by id`);
      res.status(200).json({ success: 1, data: result });
    });
  },

  getAllInventory: (req, res) => {
    let sqlQuery = `select * from inventory  where isActive = 'true'`;
    pool.query(sqlQuery, (error, result) => {
      if (error) {
        logger.info(
          `${req.method} ${req.originalUrl}, 'server error', fetch all Inventory`
        );

        return res
          .status(500)
          .json({ success: 0, error: "internal server error" });
      }

      logger.info(
        `${req.method} ${req.originalUrl},'success', fetch all Inventory`
      );

      res.status(200).json({ success: 1, data: result });
    });
  },
  
  createInventoryCartegory: (req, res) => {
    const data = req.body;

console.log(data)
    let sqlQuery = `insert into inventorycartegory (cartegoryname,createdby,createdat,isActive,notes) values
                                                 ('${data.cartegoryname}','${data.createdby}','${date}','true','${data.notes}')`  
   pool.query(sqlQuery, (error, result) => {
      if (error) {
        logger.info(
          `${req.method}  ${error.sqlMessage}, ${req.originalUrl}, 'server error', create  Inventory cartegory`
        );

        return res
          .status(500)
          .json({ success: 0, error: "internal server error" });
      }

      logger.info(
        `${req.method} ${req.originalUrl},'success', create  Inventory cartegory`
      );

      res.status(200).json({ success: 1, data: result });
    });
  },
  getCart: (req, res) => {
    let sqlQuery = `select * from inventorycartegory  where isActive = 'true'`;
    pool.query(sqlQuery, (error, result) => {
      if (error) {
        logger.info(
          `${req.method} ${req.originalUrl}, 'server error', fetch all Inventory`
        );

        return res
          .status(500)
          .json({ success: 0, error: "internal server error" });
      }

      logger.info(
        `${req.method} ${req.originalUrl},'success', fetch all Inventory`
      );

      res.status(200).json({ success: 1, data: result });
    });
  },


  updateInventory: (req, res) => {
    const data = req.body;

    let sqlQuery = `update Inventory set Inventory_name ='${data.Inventory_name}',date='${data.date}',Inventory_group='${data.Inventory_group}',updated_at='${data.created_at}',updated_at='${data.updated_by}' where Inventory_id = ${data.Inventory_id}`;

    pool.query(sqlQuery, (error, result) => {
      if (error) {
        logger.info(
          `${req.method} ${req.originalUrl},'DB error:'${error.sqlMessage}, update Inventory data`
        );
        return res
          .status(500)
          .json({ success: 0, error: "internal server error" });
      }

      if (result.affectedRows != 1) {
        logger.info(
          `${req.method} ${req.originalUrl}, update Inventory data: no record found`
        );
        return res
          .status(200)
          .json({ success: 0, error: "update Inventory data: no record found" });
      }

      if (result.affectedRows == 1) {
        logger.info(`${req.method} ${req.originalUrl}, update Inventory data`);
        return res
          .status(200)
          .json({ success: 1, error: "update Inventory data success" });
      }
    });
  },

  updateInventorycartegory: (req, res) => {
    const data = req.body;

    let sqlQuery = `update Inventorycartegory set cartegoryname ='${data.cartegoryName}',notes='${data.notes}' where id ='${data.id}' `;

    pool.query(sqlQuery, (error, result) => {
      if (error) {
        logger.info(
          `${req.method} ${req.originalUrl},'DB error:'${error.sqlMessage}, update Inventory cartegory data`
        );
        return res
          .status(500)
          .json({ success: 0, error: "internal server error" });
      }

      if (result.affectedRows != 1) {
        logger.info(
          `${req.method} ${req.originalUrl}, update Inventory data: no record found`
        );
        return res
          .status(200)
          .json({ success: 0, error: "update Inventory cartegory data: no record found" });
      }

      if (result.affectedRows == 1) {
        logger.info(`${req.method} ${req.originalUrl}, update Inventory cartegory data`);
        return res
          .status(200)
          .json({ success: 1, message: "update Inventory cartegory data success" });
      }
    });
  },

  updateInventoryStatus: (req, res) => {

    let sqlQuery = `update Inventory set Inventory_status ='false'`;

    pool.query(sqlQuery, (error, result) => {
      if (error) {
        logger.info(
          `${req.method} ${req.originalUrl},'DB error:'${error.sqlMessage}, update Inventory data`
        );
        return res
          .status(500)
          .json({ success: 0, error: "internal server error" });
      }

      if (result.affectedRows != 1) {
        logger.info(
          `${req.method} ${req.originalUrl}, update Inventory data: no record found`
        );
        return res
          .status(200)
          .json({ success: 0, error: "update Inventory data: no record found" });
      }

      if (result.affectedRows == 1) {
        logger.info(`${req.method} ${req.originalUrl}, update Inventory data`);
        return res
          .status(200)
          .json({ success: 1, error: "update Inventory data success" });
      }
    });
  },


  deleteAllInventory: (req, res) => {
    const id = req.body;
    // let sqlQuery = `delete from Inventory where userId = ${id.Inventory_id}`;
    let sqlQuery = `delete from Inventory`;

    pool.query(sqlQuery, (error, result) => {
      if (error) {
        logger.info(
          `${req.method} ${req.originalUrl},'DB error:'${error.sqlMessage}, delete Inventory by id`
        );
        return res
          .status(500)
          .json({ success: 0, error: "internal server error" });
      }

      if (result.affectedRows != 1) {
        logger.info(
          `${req.method} ${req.originalUrl}, delete Inventory by  id: no Inventory record found`
        );
        return res
          .status(200)
          .json({
            success: 0,
            error: "delete Inventory by id: no Inventory record found",
          });
      }
      if (result.affectedRows == 1) {
        logger.info(`${req.method} ${req.originalUrl}, delete Inventory  by id`);
        return res.status(200).json({
          success: 1,
          message: "Inventory deleted successfully",
        });
      }
    });
  },
};
