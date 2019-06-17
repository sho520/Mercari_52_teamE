class SearchController < ApplicationController
  
  def search
    @keyword = params[:keyword]
    if @keyword == ""
      @items = Item.limit(16).order('id DESC')
    else
      @items = Item.where('name LIKE(?)', "%#{params[:keyword]}%")
    end
    # binding pry
    
    render layout: 'application'
  end

end