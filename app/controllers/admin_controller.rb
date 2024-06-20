class AdminController < ApplicationController
  def login
    if request.post?
     if params[:username] == "mkr" && params[:password]=="0909"
        session[:admin] = "admin"
        flash[:notice] = "Admin logged in"
        redirect_to admin_dashboard_index_url
     else
       flash[:notice] = "Invalid username/password"
       render :action => :login 
     end
    end
  end
  def logout
    session[:admin] = nil
    flash[:notice] = "Admin logged out"
    redirect_to home_index_url
  end
end
