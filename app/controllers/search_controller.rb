class SearchController < ApplicationController
  
  def search
    @items = Item.where('name LIKE(?)', "%#{params[:keyword]}%")
    render layout: 'application'
  end

end