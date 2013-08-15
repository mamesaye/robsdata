class TvTypesController < ApplicationController
  # GET /tv_types
  # GET /tv_types.json
  def index
    @tv_types = TvType.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tv_types }
    end
  end

  # GET /tv_types/1
  # GET /tv_types/1.json
  def show
    @tv_type = TvType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @tv_type }
    end
  end

  # GET /tv_types/new
  # GET /tv_types/new.json
  def new
    @tv_type = TvType.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @tv_type }
    end
  end

  # GET /tv_types/1/edit
  def edit
    @tv_type = TvType.find(params[:id])
  end

  # POST /tv_types
  # POST /tv_types.json
  def create
    @tv_type = TvType.new(params[:tv_type])

    respond_to do |format|
      if @tv_type.save
        format.html { redirect_to @tv_type, notice: 'Tv type was successfully created.' }
        format.json { render json: @tv_type, status: :created, location: @tv_type }
      else
        format.html { render action: "new" }
        format.json { render json: @tv_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /tv_types/1
  # PUT /tv_types/1.json
  def update
    @tv_type = TvType.find(params[:id])

    respond_to do |format|
      if @tv_type.update_attributes(params[:tv_type])
        format.html { redirect_to @tv_type, notice: 'Tv type was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @tv_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tv_types/1
  # DELETE /tv_types/1.json
  def destroy
    @tv_type = TvType.find(params[:id])
    @tv_type.destroy

    respond_to do |format|
      format.html { redirect_to tv_types_url }
      format.json { head :no_content }
    end
  end
end
