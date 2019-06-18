class ItemsController < ApplicationController

  def index
    @items = Item.limit(15).order("id DESC").page(params[:page]).per(16)
    render layout: 'top'
  end

  def show
    @item = Item.find(params[:id])
    @images = @item.images

    @next_item = Item.find(params[:id].to_i + 1)
    if params[:id].to_i != 1
      @prev_item = Item.find(params[:id].to_i - 1)
    end

    @owner_items = Item.where(owner_id: @item.owner_id)
    @owner_images = []
      @owner_items.each do |owner_item|
        @owner_images << owner_item.images.first
      end
    
    @category_items = Item.where(category_id: @item.category_id)
    @category_images = []
    @category_items.each do |category_item|
      @category_images << category_item.images.first
    end

    
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
