class PropertiesListController < ApplicationController

  def index
    @property_list =Property.all 
  end
  def show
    @property = Property.find(params[:id])
  end  


  def search
    keyword = '%' + params[:keyword] + '%'
    @search_results = Property.find_by_sql ["select * from properties where name like ? or sector like ? or prop_for like ? or city like ?",keyword,keyword,keyword,keyword]
  end   
end
