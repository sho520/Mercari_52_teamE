class MyitemsController < ApplicationController
  before_action :set_item, only: [:show, :destroy, :edit]

  def show
    @images = @item.images
    render layout: 'common'
  end
  def edit
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
    binding.pry
    redirect_to item_path(@item)
  end

  def destroy
    if @item.owner == current_user
      @item.destroy
      redirect_to user_path
    else
      flash[:alert] = "ユーザーは自分以外の商品を削除することはできません"
      redirect_to user_myitem_path
    end
  end

  private

  def set_item
    @item = Item.find(params[:id])
  end

end
