Deface::Override.new(
        :virtual_path => "spree/shared/_main_nav_bar",
        :insert_after => "li#home-link",
        :text         => "<li id='product'><%= link_to Spree.t(:product), spree.products_path %> ",
        :name         => "products"
)

