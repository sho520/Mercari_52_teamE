class CommentsController < ApplicationController
  before_action :set_item

  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(comment_params)
    @comment.save
    redirect_to item_path(@item)
  end



  private
  def comment_params
    params.require(:comment).permit(:comment).merge(user_id: current_user.id, item_id: @item.id)
  end

  def set_item
    @item = Item.find(params[:item_id])
  end

end
