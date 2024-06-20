class ApplicationController < ActionController::Base
    def after_sign_in_path_for(resourse)
        properties_list_index_url
    end
    def after_sign_out_path_for(resourse)
        home_index_url
    end
    def after_sign_up_path_for(resource)
        new_user_session_path  # Redirect to the login page after sign-up
    end
    
    private
    def authenticate_admin!
        redirect_to root_path, alert: "Access denied." unless current_user&.admin
    end
    
    before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :contact, :city])
  end
end
