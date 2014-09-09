Deface::Override.new(
	:virtual_path => "spree/home/index",
	:remove => "[data-hook='homepage_productsa']",
	:name   => "remove_products"
)
