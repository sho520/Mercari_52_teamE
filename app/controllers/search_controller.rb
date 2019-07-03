class SearchController < ApplicationController

  before_action :set_ransack

  def search
    @keyword = params[:keyword]
    
    if @keyword.empty?
      @items = Item.where.not(state_id: 5).order('id DESC').page(params[:page]).per(16)
      render layout: 'common' and return
    end

    @items = Item.where('name LIKE(?)', "%#{params[:keyword]}%").where.not(state_id: 5).order('id DESC').page(params[:page]).per(16)

    if @items.empty?
      @items = Item.where.not(state_id: 5).order('id DESC').page(params[:page]).per(16)
      @not_find = "該当する商品が見つかりません。検索条件を変えて、再度お試しください。"
    end

    render layout: 'common'
  end

  def detail
    @items = @search.result(distinct: true).page(params[:page]).per(16)

    if @items.empty?
      @items = Item.order('id DESC').where.not(state_id: 5).page(params[:page]).per(16)
      @not_find = "該当する商品が見つかりません。検索条件を変えて、再度お試しください。"
    end

    render layout: 'common'
  end

  def set_ransack
    @search = Item.ransack(params[:q])
  end

end