const pool = require("../../config/database.js");
// const logger = require("../../util/logger.js");
var createHash = require("hash-generator");

let date = new Date();
date = date.toUTCString();


module.exports = {
  createInventory: async (req, res) => {
    const data = req.body;
    console.log(data);

    function hashgenerator(num) {
      return createHash(num);
    }

    let code = hashgenerator(6);

    let sqlQuery = `insert into inventory (itemName,itemId,cartegory,quantity,CreatedBy,supplier,createdAt,supplierContact1,supplierContact2,SupplierInfo,isActive,description) values
 ('${data.itemName}','${code}','${data.cartegory}',${data.quantity},'${data.CreatedBy}','${data.supplier}','${date}','${data.supplierContact1}','${data.supplierContact2}','${data.SupplierInfo}','true','${data.description}')`;
    pool.query(sqlQuery, (error, result) => {
      if (error) {
        console.log(
          `${req.method} ${req.originalUrl},'DB error:'${error.sqlMessage}, create new Inventory`
         );
        return res
          .status(500)
                   .json({ success: 0, error: "internal server error",message:error });

      }

      if (result.affectedRows == 1) {
        console.log(
          `${req.method} ${req.originalUrl},Success create new Inventory`
         );
        let sqlQuery = `select * from inventory  where isActive = 'true'`;
        pool.query(sqlQuery, (error, result) => {
          res.status(200).json({ success: 1, data: result });
        });
      }
    });
  },
  addstockInventory: async (req, res) => {
    const data = req.body;
    console.log(data);
 

    let sql2 = `select quantity from inventory where itemName = '${data.item}'`;
    pool.query(sql2, (error, result) => {
      if (error) {
       console.log(
       `${req.method} ${req.originalUrl},'DB error:'${error.sqlMessage}, create new Inventory`
       );
        return res
          .status(500)
                   .json({ success: 0, error: "internal server error",message:error });

      }

      if (!result) {
       console.log(`${req.method} ${req.originalUrl}, create new inventory`);
        return res
          .status(200)
          .json({ success: 0, message: "Product Non Exist" });
      }
      if (result) {
       console.log(`${req.method} ${req.originalUrl}, item Exists`);

        let myresult = parseInt(result[0].quantity) + parseInt(data.quantity);
        let sqlQuery2 = `update inventory set quantity='${myresult}' where itemName = '${data.item}'`;

        pool.query(sqlQuery2, (error, result) => {
          if (error) {
           console.log(
           `${req.method} ${req.originalUrl},'DB error:'${error.sqlMessage}, Error updating main inventory`
           );
            return res
              .status(500)
              .json({
                success: 0,
                error: "internal server error- failed to update inventory",
              });
          }

          if (result.affectedRows == 1) {
            /////////////////////////////////////////////////////finally insert into inventory stock

            let sqlQuery = `insert into inventorystock (item,cartegory,quantity,availableqty,Createdby,supplier,date,note) values
          ('${data.item}','${data.cartegory}','${data.quantity}','${data.availableqty}','${data.CreatedBy}','${data.supplier}','${data.date}','${data.note}')`;
            pool.query(sqlQuery, (error, result) => {
              if (error) {
               console.log(
               `${req.method} ${req.originalUrl},'DB error:'${error.sqlMessage}, create new inventory stock`
               );
                return res
                  .status(500)
                           .json({ success: 0, error: "internal server error",message:error });

              }

              if (result.affectedRows == 1) {
                let sqlQuery = `select * from inventorystock  where isActive = 'true'`;
                pool.query(sqlQuery, (error, result) => {
                  res.status(200).json({ success: 1, data: result });
                });
               
              }
            });
          }
        });
      }
    });
  },

  getInventoryById: (req, res) => {
    const id = parseInt(req.params.Inventory_id);
    let sqlQuery = `select * from inventory where inventory_id = ${id}`;
    pool.query(sqlQuery, (error, result) => {
      if (error) {
       console.log(
       `${req.method} ${req.originalUrl},'DB error:'${error.sqlMessage}, fetch inventory by id`
       );
        return res
          .status(500)
                   .json({ success: 0, error: "internal server error",message:error });

      }

      if (!result) {
       console.log(
       `${req.method} ${req.originalUrl}, fetch inventory by id: no record found`
       );
        return res.status(200).json({
          success: 1,
          error: "fetch inventory by id: no record found",
        });
      }
     console.log(`${req.method} ${req.originalUrl}, fetch inventory by id`);
      res.status(200).json({ success: 1, data: result });
    });
  },

  getAllInventory: (req, res) => {
    let sqlQuery = `select * from inventory  where isActive = 'true'`;
    pool.query(sqlQuery, (error, result) => {
      if (error) {
       console.log(
       `${req.method} ${req.originalUrl}, 'server error', fetch all Inventory`
       );

        return res
          .status(500)
                   .json({ success: 0, error: "internal server error",message:error });

      }

     console.log(
     `${req.method} ${req.originalUrl},'success', fetch all Inventory`
     );

      res.status(200).json({ success: 1, data: result });
    });
  },

  getstockInventory: (req, res) => {
    let sqlQuery = `select * from inventorystock  where isactive = 'true'`;
    pool.query(sqlQuery, (error, result) => {
      if (error) {
       console.log(
       `${req.method} ${req.originalUrl}, 'server error', fetch all Inventory`
       );

        return res
          .status(500)
                   .json({ success: 0, error: "internal server error",message:error });

      }

     console.log(
     `${req.method} ${req.originalUrl},'success', fetch all Inventory`
     );

      res.status(200).json({ success: 1, data: result });
    });
  },

  createInventoryCartegory: (req, res) => {
    const data = req.body;

    console.log(data);
    let sqlQuery = `insert into inventorycartegory (cartegoryname,createdby,createdat,isActive,notes) values
                                                 ('${data.cartegoryname}','${data.createdby}','${date}','true','${data.notes}')`;
    pool.query(sqlQuery, (error, result) => {
      if (error) {
       console.log(
       `${req.method}  ${error.sqlMessage}, ${req.originalUrl}, 'server error', create  Inventory cartegory`
       );

        return res
          .status(500)
                   .json({ success: 0, error: "internal server error",message:error });

      }

     console.log(
     `${req.method} ${req.originalUrl},'success', create  Inventory cartegory`
     );
      console.log(
        `${req.method} ${req.originalUrl},Success create new Inventory`
       );
      res.status(200).json({ success: 1, data: result });
    });
  },
  getCart: (req, res) => {
    let sqlQuery = `select * from inventorycartegory  where isActive = 'true'`;
    pool.query(sqlQuery, (error, result) => {
      if (error) {
       console.log(
       `${req.method} ${req.originalUrl}, 'server error', fetch all Inventory`
       );

        return res
          .status(500)
                   .json({ success: 0, error: "internal server error",message:error });

      }

     console.log(
     `${req.method} ${req.originalUrl},'success', fetch all Inventory`
     );

      res.status(200).json({ success: 1, data: result });
    });
  },

  updateInventory: (req, res) => {
    const data = req.body;

    let sqlQuery = `update inventory set itemName ='${data.itemName}',cartegory='${data.cartegory}',quantity='${data.quantity}',description='${data.description}',CreatedBy='${data.CreatedBy}',supplier='${data.supplier}',supplierContact1='${data.supplierContact1}',supplierContact2='${data.supplierContact2}',SupplierInfo='${data.SupplierInfo}' where id = ${data.id}`;

    pool.query(sqlQuery, (error, result) => {
      if (error) {
       console.log(
       `${req.method} ${req.originalUrl},'DB error:'${error.sqlMessage}, update Inventory data`
       );
        return res
          .status(500)
                   .json({ success: 0, error: "internal server error",message:error });

      }

      if (result.affectedRows != 1) {
       console.log(
       `${req.method} ${req.originalUrl}, update Inventory data: no record found`
       );
        return res.status(200).json({
          success: 0,
          error: "update Inventory data: no record found",
        });
      }

      if (result.affectedRows == 1) {
       console.log(`${req.method} ${req.originalUrl}, update Inventory data`);
        return res
          .status(200)
          .json({ success: 1, Message: "update Inventory data success" });
      }
    });
  },

  updateInventorycartegory: (req, res) => {
    const data = req.body;

    let sqlQuery = `update inventorycartegory set cartegoryname ='${data.cartegoryName}',notes='${data.notes}' where id ='${data.id}' `;

    pool.query(sqlQuery, (error, result) => {
      if (error) {
       console.log(
       `${req.method} ${req.originalUrl},'DB error:'${error.sqlMessage}, update Inventory cartegory data`
       );
        return res
          .status(500)
                   .json({ success: 0, error: "internal server error",message:error });

      }

      if (result.affectedRows != 1) {
       console.log(
       `${req.method} ${req.originalUrl}, update Inventory data: no record found`
       );
        return res.status(200).json({
          success: 0,
          error: "update Inventory cartegory data: no record found",
        });
      }

      if (result.affectedRows == 1) {
        let sqlQuery = `select * from inventorycartegory  where isActive = 'true'`;
        pool.query(sqlQuery, (error, result) => {
          if (error) {
           console.log(
           `${req.method} ${req.originalUrl}, 'server error', fetch all Inventory`
           );
    
            return res
              .status(500)
                       .json({ success: 0, error: "internal server error",message:error });
    
          }
    
         console.log(
         `${req.method} ${req.originalUrl},'success', fetch all Inventory`
         );
    
          res.status(200).json({ success: 1, data: result });
        });
      }
    });
  },

  updateInventoryStatus: (req, res) => {
    let sqlQuery = `update inventory set inventory_status ='false'`;

    pool.query(sqlQuery, (error, result) => {
      if (error) {
       console.log(
       `${req.method} ${req.originalUrl},'DB error:'${error.sqlMessage}, update inventory data`
       );
        return res
          .status(500)
                   .json({ success: 0, error: "internal server error",message:error });

      }

      if (result.affectedRows != 1) {
       console.log(
       `${req.method} ${req.originalUrl}, update inventory data: no record found`
       );
        return res.status(200).json({
          success: 0,
          error: "update inventory data: no record found",
        });
      }

      if (result.affectedRows == 1) {
       console.log(`${req.method} ${req.originalUrl}, update inventory data`);
        return res
          .status(200)
          .json({ success: 1, error: "update inventory data success" });
      }
    });
  },
  truncateTable: (req, res) => {
    let sqlQuery = `truncate table inventory`;
    pool.query(sqlQuery, (error, result) => {
      if (error) {
       console.log(
       `${req.method} ${req.originalUrl},'DB error:'${error.sqlMessage}, delete all records`
       );
        return res
          .status(500)
                   .json({ success: 0, error: "internal server error",message:error });

      }
      if (result.affectedRows == 1) {
       console.log(`${req.method} ${req.originalUrl}, delete all records`);
        return res.status(200).json({
          success: 1,
          message: "delete all record success",
        });
      }
    });
  },
  deleteSingleInventory: (req, res) => {
    const id = req.params.id;
     let sqlQuery = `delete from inventory where id = ${id}`;
   // let sqlQuery = `delete from inventory`;

    pool.query(sqlQuery, (error, result) => {
      if (error) {
       console.log(
       `${req.method} ${req.originalUrl},'DB error:'${error.sqlMessage}, delete inventory by id`
       );
        return res
          .status(500)
                   .json({ success: 0, error: "internal server error",message:error });

      }

      if (result.affectedRows != 1) {
       console.log(
       `${req.method} ${req.originalUrl}, delete inventory by  id: no inventory record found`
       );
        return res.status(200).json({
          success: 0,
          error: "delete inventory by id: no inventory record found",
        });
      }
      if (result.affectedRows == 1) {
        if (result.affectedRows == 1) {
          let sqlQuery = `select * from inventory  where isActive = 'true'`;
          pool.query(sqlQuery, (error, result) => {
            res.status(200).json({ success: 1, data: result });
          });
        }
      }
    });
  },
  
  deleteSingleCartstock: (req, res) => {
    const id = req.params.id;
     let sqlQuery = `delete from inventorycartegory where id = ${id}`;
   // let sqlQuery = `delete from inventory`;

    pool.query(sqlQuery, (error, result) => {
      if (error) {
       console.log(
       `${req.method} ${req.originalUrl},'DB error:'${error.sqlMessage}, delete inventory Cartegory by id`
       );
        return res
          .status(500)
                   .json({ success: 0, error: "internal server error",message:error });

      }

      if (result.affectedRows != 1) {
       console.log(
       `${req.method} ${req.originalUrl}, delete inventory Cartegory by  id: no inventory Cartegory record found`
       );
        return res.status(200).json({
          success: 0,
          error: "delete inventory Cartegory by id: no inventory cartegory record found",
        });
      }
      if (result.affectedRows == 1) {
          let sqlQuery = `select * from inventorycartegory  where isActive = 'true'`;
          pool.query(sqlQuery, (error, result) => {
            res.status(200).json({ success: 1, data: result });
          });
        
      }
    });
  },
  deleteSingleInventorystock: (req, res) => {
    const id = req.params.id;
     let sqlQuery = `delete from inventorystock where id = ${id}`;
   // let sqlQuery = `delete from inventory`;

    pool.query(sqlQuery, (error, result) => {
      if (error) {
       console.log(
       `${req.method} ${req.originalUrl},'DB error:'${error.sqlMessage}, delete inventory stock by id`
       );
        return res
          .status(500)
                   .json({ success: 0, error: "internal server error",message:error });

      }

      if (result.affectedRows != 1) {
       console.log(
       `${req.method} ${req.originalUrl}, delete inventory by  id: no inventory stock record found`
       );
        return res.status(200).json({
          success: 0,
          error: "delete inventory sock by id: no inventory stock record found",
        });
      }
      if (result.affectedRows == 1) {
          let sqlQuery = `select * from inventorystock  where isActive = 'true'`;
          pool.query(sqlQuery, (error, result) => {
            res.status(200).json({ success: 1, data: result });
          });
        
      }
    });
  },

  
};
