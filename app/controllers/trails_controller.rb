class TrailsController < ApplicationController
  def index
    @trails = Trail.all
  end

  def new
    @trail = Trail.new
  end

  def create
    @trail = Trail.new(trail_params)
    if @trail.save
      flash[:notice] = "Маршрут успешно создан"
      redirect_to trails_path
    else
      render :new
    end
  end

  def destroy
    @trail = Trail.find(params[:id])
    @trail.destroy
    flash[:notice] = "Маршрут успешно удален"
    redirect_to trails_path
  end

  private

  def trail_params
    params.require(:trail).permit(:title, :description)
  end

  def show
    @trail = Trail.find_by(id: params[:id])
    if @trail.nil?
      flash[:alert] = "Маршрут не найден"
      redirect_to trails_path
    end
  end

end