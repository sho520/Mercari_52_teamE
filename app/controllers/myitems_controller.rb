class MyitemsController < ApplicationController

  def show
    @item = Item.find(params[:id])
    @images = @item.images
    render layout: 'common'
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

  def destroy
    item = Item.find(params[:id])
    item.destroy
    redirect_to user_path
  end

end
