class ApplicationController < ActionController::Base
  before_action :set_global_variable
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern

  def set_global_variable
    $app_name=ENV["NAME_APP"]
  end
end
