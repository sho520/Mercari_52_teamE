class MyitemsController < ApplicationController

  def show
    @item = Item.find(params[:id])
    @images = @item.images
    render layout: 'common'
  end

end
