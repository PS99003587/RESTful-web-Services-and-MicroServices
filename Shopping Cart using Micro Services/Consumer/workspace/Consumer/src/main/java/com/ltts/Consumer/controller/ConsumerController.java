package com.ltts.Consumer.controller;

public class ConsumerController {
	@Controller
	@RequestMapping(value = “consume”)
	public class ConsumerController {

	/*
	* adding logger
	*/
	protected Logger logger = Logger.getLogger(ConsumerController.class.getName());

	@Autowired
	private ConsumerService consumerService;

	@RequestMapping(value = “/productList”, method = RequestMethod.GET)
	// @RequestMapping(method=RequestMethod.GET)
	public String productList(ModelMap model) {
	model.put(“listProducts”, consumerService.getAllProducts());
	return “product/ListInventory”;
	}

	@RequestMapping(value = “/products/{productId}”, method = RequestMethod.GET)
	public String productById(@PathVariable(“productId”) Long productId, HttpSession session) {
	List<ItemEntity> itemEntityList = new ArrayList<ItemEntity>();
	if (session.getAttribute(“item”) == null) {
	itemEntityList = new ArrayList<ItemEntity>();
	ProductEntity productEntity = consumerService.getProductById(productId);
	ItemEntity itemEntity = new ItemEntity(productEntity, 1);
	itemEntityList.add(itemEntity);
	session.setAttribute(“item”, itemEntityList);
	} else {
	itemEntityList = (List<ItemEntity>) session.getAttribute(“item”);
	// verify whether item is already exist or not
	int index = this.ifProductExists(productId, itemEntityList);
	if (index == -1) {
	ProductEntity productEntity = consumerService.getProductById(productId);
	ItemEntity itemEntity = new ItemEntity(productEntity, 1);
	itemEntityList.add(itemEntity);
	} else {
	int quantity = itemEntityList.get(index).getProductQuantity() + 1;
	itemEntityList.get(index).setProductQuantity(quantity);
	}
	session.setAttribute(“item”, itemEntityList);
	}

	return “item/Selection”;

	}
}
