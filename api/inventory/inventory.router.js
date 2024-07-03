const router = require("express").Router();
const { checkToken } = require("../../auth/token_validation");
const {
  createInventory,
  createInventoryCartegory,

  getInventoryById,
  getAllInventory,
  updateInventory,
  // updateInventorystatus,
  updateInventorycartegory,
  deleteAllInventory,
  addstockInventory,
  getstockInventory,
  getCart,


} = require("./inventory.controller");


router.get("/",  getAllInventory);
router.get("/cart",  getCart);
router.post("/cart",  createInventoryCartegory);
router.post("/addstock",  addstockInventory);
router.get("/getstock",  getstockInventory);


router.post("/editcartegory",  updateInventorycartegory);
router.post("/",  createInventory);



router.get("/:Inventory_id",  getInventoryById);
router.patch("/item",  updateInventory);
// router.patch("/status/:Inventory_id",  updateInventorystatus);
router.delete("/",  deleteAllInventory);

module.exports = router;
