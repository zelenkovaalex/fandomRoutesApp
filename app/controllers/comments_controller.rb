class CommentsController < ApplicationController
  def create
    @trail = Trail.find(params[:trail_id])
    @comment = @trail.comments.new(comment_params)

    if @comment.save
      flash[:notice] = "Комментарий успешно добавлен"
      redirect_to trail_path(@trail) # Перенаправление на страницу маршрута
    else
      flash[:alert] = "Ошибка при добавлении комментария"
      redirect_to trail_path(@trail) # Перенаправление на страницу маршрута
    end
  end

  private

  def comment_params
  params.require(:comment).permit(:content)
end
end