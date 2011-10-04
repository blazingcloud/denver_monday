class FlowersController < ApplicationController
  # GET /flowers
  # GET /flowers.json
  def index
    @flowers = Flower.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @flowers }
    end
  end



  # GET /flowers/new
  # GET /flowers/new.json
  def new
    @flower = Flower.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @flower }
    end
  end

  # GET /flowers/1/edit
  def edit
    @flower = Flower.find(params[:id])
  end

  # POST /flowers
  # POST /flowers.json
  def create
    @flower = Flower.new(params[:flower])

    respond_to do |format|
      if @flower.save
        format.html { redirect_to @flower, notice: 'Flower was successfully created.' }
        format.json { render json: @flower, status: :created, location: @flower }
      else
        format.html { render action: "new" }
        format.json { render json: @flower.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /flowers/1
  # PUT /flowers/1.json
  def update
    @flower = Flower.find(params[:id])

    respond_to do |format|
      if @flower.update_attributes(params[:flower])
        format.html { redirect_to @flower, notice: 'Flower was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @flower.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /flowers/1
  # DELETE /flowers/1.json
  def destroy
    @flower = Flower.find(params[:id])
    @flower.destroy

    respond_to do |format|
      format.html { redirect_to flowers_url }
      format.json { head :ok }
    end
  end
end
