class CommentsController < ApplicationController
  def create
    @comment = current_user.comments.build(comment_params)
  end
end

  private

  def comment_params
    params.require(:comment).permit(:contect)
  end
