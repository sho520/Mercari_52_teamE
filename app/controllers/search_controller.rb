class SearchController < ApplicationController
  
  def search
    @keyword = params[:keyword]

    if @keyword.empty?
      @items = Item.order('id DESC').page(params[:page]).per(16)
      render layout: 'common' and return
    end

    @items = Item.where('name LIKE(?)', "%#{params[:keyword]}%").order('id DESC').page(params[:page]).per(16)

    if @items.empty?
      @items = Item.order('id DESC').page(params[:page]).per(16)
      @not_find = "該当する商品が見つかりません。検索条件を変えて、再度お試しください。"
      render layout: 'common' and return
    end

    render layout: 'common'
  end

end