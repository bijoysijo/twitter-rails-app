class TweeetsController < ApplicationController

  def index
    @tweeets = Tweeet.all
  end

  def new
    @tweeet = Tweeet.new
  end

  def create
    @tweeet = Tweeet.new(tweeet_params)

    if @tweeet.save
      redirect_to @tweeet
    else
      render 'new'
    end
  end

  def show
    @tweeet = Tweeet.find(params[:id])
  end

  def edit
    @tweeet = Tweeet.find(params[:id])
  end

  def update
    @tweeet = Tweeet.find(params[:id])

    if @tweeet.update(tweeet_params)
      redirect_to @tweeet
    else
      render 'edit'
    end
  end

  private

  def tweeet_params
    params.require(:tweeet).permit(:tweeet)
  end
end
