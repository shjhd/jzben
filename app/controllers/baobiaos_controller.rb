class BaobiaosController < ApplicationController
  # GET /baobiaos
  # GET /baobiaos.json
  def index
    @baobiaos = Baobiao.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @baobiaos }
    end
  end

  # GET /baobiaos/1
  # GET /baobiaos/1.json
  def show
    @baobiao = Baobiao.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @baobiao }
    end
  end

  # GET /baobiaos/new
  # GET /baobiaos/new.json
  def new
    @baobiao = Baobiao.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @baobiao }
    end
  end

  # GET /baobiaos/1/edit
  def edit
    @baobiao = Baobiao.find(params[:id])
  end

  # POST /baobiaos
  # POST /baobiaos.json
  def create
    @baobiao = Baobiao.new(params[:baobiao])

    respond_to do |format|
      if @baobiao.save
        format.html { redirect_to @baobiao, notice: 'Baobiao was successfully created.' }
        format.json { render json: @baobiao, status: :created, location: @baobiao }
      else
        format.html { render action: "new" }
        format.json { render json: @baobiao.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /baobiaos/1
  # PUT /baobiaos/1.json
  def update
    @baobiao = Baobiao.find(params[:id])

    respond_to do |format|
      if @baobiao.update_attributes(params[:baobiao])
        format.html { redirect_to @baobiao, notice: 'Baobiao was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @baobiao.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /baobiaos/1
  # DELETE /baobiaos/1.json
  def destroy
    @baobiao = Baobiao.find(params[:id])
    @baobiao.destroy

    respond_to do |format|
      format.html { redirect_to baobiaos_url }
      format.json { head :no_content }
    end
  end
end
