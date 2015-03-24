class ReportsController < ApplicationController

  def index
    @reports = Item.select("sum(price) as price, way, lei")
    @reports = @reports.where(:lei => params[:lei]) if params[:lei]
    @reports = @reports.where("time between ? and ?", params[:begin],params[:end]) if params[:begin] && params[:end]
    @reports = @reports.group("way")

    respond_to do |format|
      format.json { render json: @reports}
    end

  end

  def show
    @reports = Item.find(params[:id])

    respond_to do |format|
      format.html
      format.json { render json: @item }
    end
  end
end