class Admin::PropertyContactsController < ApplicationController
  
    def destroy
      @property_contact = PropertyContact.find(params[:id])
      @property_contact.destroy
      redirect_to admin_property_contacts_path, notice: 'Property contact was successfully deleted.'
    end
  end