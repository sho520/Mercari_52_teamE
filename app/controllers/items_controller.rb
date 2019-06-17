class ItemsController < ApplicationController
  # protect_from_forgery

  def index
    render layout: 'top'
  end

  def show
    render layout: 'application'
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
