Deface::Override.new(
	:virtual_path => "spree/home/index",
	:insert_after => "div#myCarcial",
	:name	      => "marketing",
	:text         => "

	<div id=\"marketing\">
           test
        </div>
")
