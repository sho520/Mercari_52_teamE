class ItemsController < ApplicationController
  before_action :find_item, only: [:show, :edit, :update, :confirm, :pay, :done, :buy]
  before_action :authenticate_user!, only: [:new]

  def index
    @items = Item.page(params[:page]).per(16).includes(:images)
    @root_category = Category.roots.all()
    render layout: 'top'
  end

  def show

    @item = Item.find(params[:id])
    @images = @item.images
    @comments = Comment.where(item_id: @item.id)
    @comment = Comment.new

    if Item.find(params[:id]) != Item.last
      @next_item = Item.find(params[:id].to_i + 1)
    end
    if params[:id].to_i != 1
      @prev_item = Item.find(params[:id].to_i - 1)
    end

    @owner_items = Item.where(owner_id: @item.owner_id).where.not(state_id: 5).where.not(id: params[:id])
    @owner_images = []
      @owner_items.each do |owner_item|
        @owner_images << owner_item.images.first
      end

    @category_items = Item.where(category_id: @item.category_id).where.not(state_id: 5).where.not(id: params[:id])
    @category_images = []
    @category_items.each do |category_item|
      @category_images << category_item.images.first
    end

    @prefecture = JpPrefecture::Prefecture.find(@item.prefecture_id)
    @ken = @prefecture.name

    render layout: 'common'
  end

  def new
    @item = Item.new
    5.times {@item.images.build}
    # @large_classes = LargeClass.all
    @middle_classes = MiddleClass.all
    # @small_classes = SmallClass.all

    @root = Category.roots

    # @categorys = Category.all
    # @parents = []
    # @root.each do |root|
    #   @parents << root.children
    # end
    @children = Category.where("ancestry LIKE(?)", "%/%")
    # @children = []
    # @parents.each do |parent|
    #   @children << parent.children
    # end

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
    redirect_to item_path(@item)
  end

  def confirm
    if user_signed_in?
      @images = @item.images
      render layout: 'second_application'
    else
      redirect_to new_user_session_path
    end
  end

  def pay #クレジットカード登録
  end

  def buy #クレジットカードで購入
    Payjp.api_key = Rails.application.credentials.payjp[:payjp_secret_key]

    Payjp::Charge.create(amount: @item.price,
      card: params['payjp-token'],
      currency: 'jpy')
    # 決済後の処理
    if @item.update(state_id: 2, buyer_id: current_user.id)
      flash[:success] = '購入しました'
      redirect_to action: 'done'
    else
      flash[:alert] = '購入に失敗しました'
      redirect_to action: 'confirm'
    end
  end

  def done
    render :layout => 'second_application'
  end

  def brand
    render layout: 'common'
  end

  def create
    @item = Item.new(item_params)
    @item.save
    redirect_to :action => "index"
  end

  private

  def find_item
    @item = Item.find(params[:id])
    @images = @item.images
  end

  def item_params
    params.require(:item).permit(:name, :state_id, :size_id,:large_class_id,:middle_class_id, :category_id,:prefecture_id, :description, :condition_id, :shipping_fee_payer_id, :shipping_day_id, :price, images_attributes:[:id,:image_url]).merge(owner_id: current_user.id)
  end

  def image_params
    params.require(:image).permit(:id, :item_id, :created_id, :image_url)
  end

end
