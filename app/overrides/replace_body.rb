Deface::Override.new(
	:virtual_path => "spree/layouts/spree_application",
	:replace => "[data-hook=\"body\"]",
	:name         => "body",
        :text         => "
<body>

    <%= render :partial => 'spree/shared/new_header' %>

    <%= render :partial => 'spree/shared/carousel' if content_for? :carousel %>  
    <%= render :partial => 'spree/shared/marketing' if content_for? :marketing %>

       <%= breadcrumbs(@taxon) %>
   <div class=\"container\">
       <%= render :partial => 'spree/shared/sidebar' if content_for? :sidebar %>

          <%= flash_messages %>
          <%= yield %>

       
       <%= yield :templates %>
    </div>
    
      <%= render :partial => 'spree/shared/footer' %>


    <%= render :partial => 'spree/shared/google_analytics' %>
    <script>
      Spree.api_key = <%= raw(try_spree_current_user.try(:spree_api_key).to_s.inspect) %>;
    </script>


</body>
") 
