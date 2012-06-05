require 'redmine'
require 'maintenance_hook'
require 'maintenance_application_controller_patch'

Redmine::Plugin.register :redmine_maintenance do
  name 'Redmine Maintenance plugin'
  author 'OZAWA Yasuhiro'
  description 'Maintenance mode'
  version '0.0.2'
  url 'https://github.com/ameya86/redmine_maintenance'
  author_url 'http://blog.livedoor.jp/ameya86/'

  settings :default => {
      'maintenance' => '0',
      'title' => 'Maintenance',
      'message' => 'Maintenance now.',
    }, :partial => 'maintenances/settings'
end
