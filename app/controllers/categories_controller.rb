class CategoriesController < ApplicationController

  def index
    render layout: 'common'
  end

  def show
    @items = Item.all()
    @images = []
      @items.each do |item|
        @images << item.images.first
      end
    render layout: 'common'
  end

end
