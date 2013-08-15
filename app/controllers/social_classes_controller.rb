class SocialClassesController < ApplicationController
  # GET /social_classes
  # GET /social_classes.json
  def index
    @social_classes = SocialClass.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @social_classes }
    end
  end

  # GET /social_classes/1
  # GET /social_classes/1.json
  def show
    @social_class = SocialClass.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @social_class }
    end
  end

  # GET /social_classes/new
  # GET /social_classes/new.json
  def new
    @social_class = SocialClass.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @social_class }
    end
  end

  # GET /social_classes/1/edit
  def edit
    @social_class = SocialClass.find(params[:id])
  end

  # POST /social_classes
  # POST /social_classes.json
  def create
    @social_class = SocialClass.new(params[:social_class])

    respond_to do |format|
      if @social_class.save
        format.html { redirect_to @social_class, notice: 'Social class was successfully created.' }
        format.json { render json: @social_class, status: :created, location: @social_class }
      else
        format.html { render action: "new" }
        format.json { render json: @social_class.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /social_classes/1
  # PUT /social_classes/1.json
  def update
    @social_class = SocialClass.find(params[:id])

    respond_to do |format|
      if @social_class.update_attributes(params[:social_class])
        format.html { redirect_to @social_class, notice: 'Social class was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @social_class.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /social_classes/1
  # DELETE /social_classes/1.json
  def destroy
    @social_class = SocialClass.find(params[:id])
    @social_class.destroy

    respond_to do |format|
      format.html { redirect_to social_classes_url }
      format.json { head :no_content }
    end
  end
end
