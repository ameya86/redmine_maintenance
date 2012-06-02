class MaintenanceHook < Redmine::Hook::ViewListener
  render_on :view_layouts_base_html_head, :partial => 'maintenances/html_head', :if => Proc.new{|p| '1' == Setting.plugin_redmine_maintenance['maintenance']}
  render_on :view_layouts_base_body_bottom, :partial => 'maintenances/body_bottom', :if => Proc.new{|p| '1' == Setting.plugin_redmine_maintenance['maintenance']}
end
