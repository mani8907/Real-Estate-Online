class UserMailer < ApplicationMailer

    def send_property_details(user_email, property)
        @user = User.find_by(email: user_email)
        @property = property
        
        mail(to: user_email, subject: 'Property Details') do |format|
          format.html { render 'propertiesdetails_email' } 
        end
    end
         
end
