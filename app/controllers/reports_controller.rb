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

  def yearbiao
    @reports = Item.select("sum(price) as price,month(time) as month,lei")
    @reports = @reports.where("time between ? and ?", params[:begin],params[:end]) if params[:begin] && params[:end]
    @reports = @reports.group("month(time),lei")

    respond_to do |format|
      format.json { render json: @reports}
    end

  end

  def yearall
    @reports = Item.select("sum(price) as price,year(time) as year,lei")
    @reports = @reports.where("time between ? and ?", params[:begin],params[:end]) if params[:begin] && params[:end]
    @reports = @reports.group("year(time),lei")

    respond_to do |format|
      format.json { render json: @reports}
    end

  end

  def home
    @reports = Item.select("sum(price) as price,lei")
    @reports = @reports.where("time between ? and ?", params[:begin],params[:end]) if params[:begin] && params[:end]
    @reports = @reports.group("lei")

    respond_to do |format|
      format.json { render json: @reports}
    end

  end
end