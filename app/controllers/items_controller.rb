class ItemsController < ApplicationController

  def index
    @items = Item.page(params[:page]).per(16).includes(:images)
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

    render layout: 'common'
  end

  def new
    @item = Item.new
    @large_classes = LargeClass.all
    @middle_classes = MiddleClass.all
    @small_classes = SmallClass.all
    @conditions = Condition.all
    @sizes = Size.all
    @shipping_fee_payers = ShippingFeePayer.all
    @delivery_ways = DeliveryWay.all
    @shipping_days = ShippingDay.all
    render layout: 'second_application'
  end

  def edit
    @item = Item.find(params[:id])
    @category = @item.category
    @categories = Category.roots.all
    @conditions = Condition.all
    @large_classes = LargeClass.all
    @middle_classes = MiddleClass.all
    @small_classes = SmallClass.all
    @shipping_fee_payers = ShippingFeePayer.all
    @shipping_days = ShippingDay.all
    @price = @item.price
    render layout: 'second_application'
  end

  def update
    @item = Item.find(params[:id])
    @item.update(item_params)
  end

  def confirm
    render layout: 'second_application'
  end

  def done
    render :layout => 'second_application'
  end

  def brand
    render layout: 'common'
  end

  def create
    Item.create(item_params)
    redirect_to :action => "new"
  end

  private
  def item_params
    params.require(:item).permit(:name, :description, :large_class_id, :middle_class_id, :small_class_id, :condition_id, :shipping_fee_payer_id, :shipping_day_id, :price)
  end



end
