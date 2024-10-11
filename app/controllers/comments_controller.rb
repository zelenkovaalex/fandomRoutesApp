class CommentsController < ApplicationController
  def create
    @trail = Trail.find(params[:trail_id])
    @comment = @trail.comments.new(comment_params)

    if @comment.save
      flash[:notice] = "Комментарий добавлен"
      redirect_to @trail
    else
      flash.now[:alert] = "Ошибка при добавлении комментария"
      render 'trails/show'
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:content)
  end
end