Deface::Override.new(:virtual_path => "layouts/spree_application",
                     :name => "add_analytics_header",
                     :insert_bottom => "[data-hook='inside_head']",
                     :partial => "/analytics/header")
