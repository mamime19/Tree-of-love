class ApplicationController < ActionController::Base
	before_action :configure_permitted_parameters, if: :devise_controller? 
   def after_sign_out_path_for(resource)
    root_path
  end
  private

    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up,keys:[:email]) # 注目
      devise_parameter_sanitizer.permit(:sign_in,keys:[:email])
    end
end
