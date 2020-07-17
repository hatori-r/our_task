class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  def check_guest
    email = resource&.email || params[:nickname][:email].downcase
    if email == 'guest@example.com'
      redirect_to root_path, alert: 'ゲストユーザーは変更・削除することが出来ません。'
    end
  end

  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:nickname])
  end
end
