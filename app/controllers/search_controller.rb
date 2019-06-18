class SearchController < ApplicationController
  
  def search
    @keyword = params[:keyword]

    if @keyword.empty?
      @items = Item.order('id DESC') and return
    end

    @items = Item.where('name LIKE(?)', "%#{params[:keyword]}%").order('id DESC')

    if @items.empty?
      @items = Item.order('id DESC')
      @not_find = "該当する商品が見つかりません。検索条件を変えて、再度お試しください。" and return
    end
  end

end