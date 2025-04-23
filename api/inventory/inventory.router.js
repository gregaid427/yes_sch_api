const router = require("express").Router();
const { checkToken } = require("../../auth/token_validation");
const {
  createInventory,
  createInventoryCartegory,
  truncateTable,
  getInventoryById,
  getAllInventory,
  updateInventory,
  // updateInventorystatus,
  updateInventorycartegory,
  deleteSingleInventory,
  addstockInventory,
  getstockInventory,
  getCart,
  deleteSingleInventorystock,
  deleteSingleCartstock


} = require("./inventory.controller");




router.get("/", checkToken, getAllInventory);
router.get("/cart",checkToken,  getCart);
router.post("/cart", checkToken, createInventoryCartegory);
router.post("/addstock", checkToken, addstockInventory);
router.get("/getstock", checkToken, getstockInventory);


router.post("/editcartegory", checkToken, updateInventorycartegory);
router.post("/", checkToken, createInventory);


router.delete("/truncate",checkToken,  truncateTable);

router.get("/:Inventory_id",checkToken,  getInventoryById);
router.patch("/item", checkToken, updateInventory);
// router.patch("/status/:Inventory_id",  updateInventorystatus);
router.delete("/cartegory/:id",checkToken,  deleteSingleCartstock);

router.delete("/:id",checkToken,  deleteSingleInventory);
router.post("/stock/delete",checkToken,  deleteSingleInventorystock);


module.exports = router;
