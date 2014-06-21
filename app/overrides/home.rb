Deface::Override.new(
	:virtual_path => "spree/home/index",
	:insert_after => "[data-hook='homepage_products']",
	:text         => "<p>I'm here! Can you catch me?</p>",
	:name         => "test"
)
