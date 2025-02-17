class RegistrationsController < Devise::RegistrationsController
    private
  
    def sign_up_params
      params.require(:user).permit(:email, :password, :password_confirmation, :name, :contact, :city)
    end
  
    def account_update_params
      params.require(:user).permit(:email, :password, :password_confirmation, :current_password, :name, :contact, :city)
    end
  end