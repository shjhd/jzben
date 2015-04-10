class ItemsController < ApplicationController
  before_filter :signed_in_user
  # GET /items
  # GET /items.json
  def index
    if params[:lei]
      @shezhis = current_user.items.where(:lei => params[:lei])
    else
      @shezhis = current_user.items.all
    end
    @items = current_user.items.order('time desc').page(params[:page])
    @item = current_user.items.new

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @items }
    end
  end

  # GET /items/1
  # GET /items/1.json
  def show
    @item = current_user.items.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @item }
    end
  end

  # GET /items/1/edit
  def edit
    @item = current_user.items.find(params[:id])
  end

  # POST /items
  # POST /items.json
  def create
    @item = current_user.items.new(params[:item])

    respond_to do |format|
      if @item.save
        format.html { redirect_to @item, notice: 'Item was successfully created.' }
        format.json { render json: @item, status: :created, location: @item }
        format.js
      else
        logger.info @item.errors.inspect
        format.html { render action: "index" }
        format.json { render json: @item.errors, status: :unprocessable_entity }
        format.js
      end
    end
  end

  # PUT /items/1
  # PUT /items/1.json
  def update
    @item = current_user.items.find(params[:id])

    respond_to do |format|
      if @item.update_attributes(params[:item])
        format.html { redirect_to @item, notice: 'Item was successfully updated.' }
        format.json { head :no_content }
      else
        logger.info @item.errors.inspect
        format.html { render action: "edit" }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /items/1
  # DELETE /items/1.json
  def destroy
    @item = current_user.items.find(params[:id])
    @item.destroy

    respond_to do |format|
      format.html { redirect_to items_url }
      format.json { head :no_content }
      format.js
    end
  end
end
