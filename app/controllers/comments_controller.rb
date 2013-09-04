class CommentsController < ApplicationController

  def create
    @comment = Comment.new(comment_params)
    @comment.save
    @match = Match.find(comment_params[:content_id])
  end
  
  def destroy
      @comment = Comment.find(params[:id])
      @comment.destroy
  end
  private
  def comment_params
    params.require(:comment).permit(:content_id, :content_type, :user_id, :body)
  end
end

