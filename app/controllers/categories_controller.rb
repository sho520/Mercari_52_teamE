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
        @items = Item.where(category_id: @category.child_ids).where.not(state_id: 5)
      else
        @items = Item.where(category_id: @category.descendant_ids).where.not(state_id: 5)
      end
    else
      @items = Item.where(category_id: @category.id).where.not(state_id: 5)
    end

    @images = []
      @items.each do |item|
        @images << item.images.first
      end
    render layout: 'common'
  end

end
