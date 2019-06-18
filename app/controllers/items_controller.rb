class ItemsController < ApplicationController

  def index
    @items = Item.limit(15).order("id DESC").page(params[:page]).per(16)
    render layout: 'top'
  end

  def show
    @item = Item.find(params[:id])
    @images = @item.images
    render layout: 'application'

    # binding.pry
  end

  def new
    @item = Item.new
    render layout: 'second_application'
  end

  def confirm
    render layout: 'second_application'
  end

  def done
    render :layout => 'second_application'
  end

  def brand
    render layout: 'application'
  end

  def category
    render layout: 'application'
  end

  def create
    Item.create(item_params)

  end

  private
  def item_params
    params.permit(:name)
  end


end
