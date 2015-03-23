class ReportsController < ApplicationController

  def index
    if params[:lei]
      @reports = Item.where(:lei => params[:lei])
    else
      @reports = Item.all
    end

    respond_to do |format|
      format.json { render json: @reports.select("sum(price) as price, way, lei").where("time between '2015-03-01' and '2015-03-30'", ).group("way") }
      format.json { render json: @reports.select("sum(price) as price, way, lei").where("time between '?' and '?'", params[:begin], params[:end] ).group("way") }
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