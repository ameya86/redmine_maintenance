class MaintenanceHook < Redmine::Hook::ViewListener
  render_on :view_layouts_base_html_head, :partial => 'maintenances/html_head'
  render_on :view_layouts_base_body_bottom, :partial => 'maintenances/body_bottom'
end
