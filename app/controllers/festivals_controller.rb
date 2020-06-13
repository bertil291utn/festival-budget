class FestivalsController < ApplicationController
  def index
    @festivals = Festival.all
  end

  def new
    @festival = Festival.new
    respond_to do |format|
      format.html
      format.js
    end
  end

  def create
    user = current_user
    @festival = user.festivals.build(festival_params)
    return render :new unless @festival.save

    redirect_to festivals_path, notice: 'New festival has been added'
  end

  private

  def festival_params
    params.require(:festival).permit(:name, :budget, :image)
  end
end
