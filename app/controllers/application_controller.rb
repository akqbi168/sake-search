class ApplicationController < ActionController::Base

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  # deviseのresourceオブジェクトの中に保存するカラムを指定
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :generation_id, :gender_id])
  end

  # ログアウト後に遷移するpathを指定
  def after_sign_out_path_for(resource)
    root_path
  end

end