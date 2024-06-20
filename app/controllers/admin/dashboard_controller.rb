class Admin::DashboardController < ApplicationController
  def index
    @properties_count = Property.count
    @users_count = User.count
    @property_contacted_count = PropertyContact.count
   
  end

  def property_contacts
    @property_contacts = PropertyContact.includes(:user, :property).all
  end
end
