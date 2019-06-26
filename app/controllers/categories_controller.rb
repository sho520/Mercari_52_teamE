class CategoriesController < ApplicationController

  def index
    @root_category = Category.roots.all()
    @women = @root_category.find(2)
    render layout: 'common'
  end

  def show
    @category = Category.find(params[:id])

    if @category.has_children?
      if @category.has_parent?
        @items = Item.where(category_id: @category.child_ids)
      else
        @items = Item.where(category_id: @category.descendant_ids)
      end
    else
      @items = Item.where(category_id: @category.id)
    end

    @images = []
      @items.each do |item|
        @images << item.images.first
      end
    render layout: 'common'
  end

end
