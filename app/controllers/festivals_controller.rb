class FestivalsController < ApplicationController # :nodoc:
  def index
    @festivals = Festival.with_username.ordered
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

  def show
    @festival = Festival.find(params[:id])
    @fest_transactions = @festival.transactions.author_transaction.ordered
  end

  private

  def festival_params
    params.require(:festival).permit(:name, :budget, :imageok)
  end
end
