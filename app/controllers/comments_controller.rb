class CommentsController < ApplicationController
  before_action :set_item

  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(comment_params)
    @comment.save
    respond_to do |format|
      format.html do
        redirect_to item_path(@item)
      end
      format.json
    end
  end



  private
  def comment_params
    if user_signed_in?
      params.require(:comment).permit(:comment).merge(user_id: current_user.id, item_id: @item.id)
    else
      params.require(:comment).permit(:comment).merge(user_id: 0, item_id: @item.id)
    end
  end

  def set_item
    @item = Item.find(params[:item_id])
  end

end
