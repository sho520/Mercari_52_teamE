class SearchController < ApplicationController
  
  def search
    @keyword = params[:keyword]
    @items = Item.where('name LIKE(?)', "%#{params[:keyword]}%")
    render layout: 'application'
  end

end