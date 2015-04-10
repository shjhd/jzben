class ShezhisController < ApplicationController
  before_filter :signed_in_user
  # GET /shezhis
  # GET /shezhis.json
  def index
    if params[:lei]
      @shezhis = current_user.shezhis.where(:lei => params[:lei])
    else
      @shezhis = current_user.shezhis.all
    end
    @shezhi = current_user.shezhis.new

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shezhis }
    end
  end

  # GET /shezhis/1
  # GET /shezhis/1.json
  def show
    @shezhi = current_user.shezhis.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @shezhi }
    end
  end

  # GET /shezhis/1/edit
  def edit
    @shezhi = current_user.shezhis.find(params[:id])
  end

  # POST /shezhis
  # POST /shezhis.json
  def create
    @shezhi = current_user.shezhis.new(params[:shezhi])

    respond_to do |format|
      if @shezhi.save
        format.html { redirect_to @shezhi, notice: 'Shezhi was successfully created.' }
        format.json { render json: @shezhi, status: :created, location: @shezhi }
        format.js
      else
        format.html { render action: "index" }
        format.json { render json: @shezhi.errors, status: :unprocessable_entity }
        format.js
      end
    end
  end

  # PUT /shezhis/1
  # PUT /shezhis/1.json
  def update
    @shezhi = current_user.shezhis.find(params[:id])

    respond_to do |format|
      if @shezhi.update_attributes(params[:shezhi])
        format.html { redirect_to @shezhi, notice: 'Shezhi was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @shezhi.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shezhis/1
  # DELETE /shezhis/1.json
  def destroy
    @shezhi = current_user.shezhis.find(params[:id])
    @shezhi.destroy

    respond_to do |format|
      format.html { redirect_to shezhis_url }
      format.json { head :no_content }
      format.js
    end
  end
end
