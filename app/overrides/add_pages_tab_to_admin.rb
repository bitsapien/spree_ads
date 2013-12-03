Deface::Override.new(
  :name => "add_ads_tab_to_admin",
  :virtual_path => "spree/layouts/admin",
  :insert_bottom => "[data-hook='admin_tabs']",
  :text => %(<%= tab(:ads) %>)
)
