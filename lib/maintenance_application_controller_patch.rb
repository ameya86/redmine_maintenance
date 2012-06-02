require_dependency 'application_controller'

class ApplicationController < ActionController::Base
  before_filter :maintenance

  # メンテナンスy画面を表示する
  def maintenance
    if '1' == Setting.plugin_redmine_maintenance['maintenance'] 
      # 管理者以外はメンテナンス画面を表示する
      # ログイン画面の表示は可能にする
      if !User.current.admin? && !('account' == controller_name && 'login' == action_name)
        render :template => 'maintenances/show', :layout => 'maintenance'
        return false
      end
    end
  end
end
