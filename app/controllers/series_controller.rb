class SeriesController < ApplicationController
  def index
    @series = Series.page(params[:page]).per(10)
  end

  def new
    @serie = Series.new
  end

  def create
    @serie = Series.new(serie_params)
    if @serie.save
      redirect_to series_path
    else
      render :new
    end
  end

  private

  def serie_params
    params.require(:series).permit(:name, :synopsis, :director)
  end
end
