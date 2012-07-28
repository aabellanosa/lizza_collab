class InfiniteSheltersController < ApplicationController
  # GET /infinite_shelters
  # GET /infinite_shelters.json
  def index

  end

  def venue

  end

  def tag

  end  

  def gallery

  end

  def article

  end  


  # GET /infinite_shelters/1
  # GET /infinite_shelters/1.json
  def show
    @infinite_shelter = InfiniteShelter.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @infinite_shelter }
    end
  end

  # GET /infinite_shelters/new
  # GET /infinite_shelters/new.json
  def new
    @infinite_shelter = InfiniteShelter.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @infinite_shelter }
    end
  end

  # GET /infinite_shelters/1/edit
  def edit
    @infinite_shelter = InfiniteShelter.find(params[:id])
  end

  # POST /infinite_shelters
  # POST /infinite_shelters.json
  def create
    @infinite_shelter = InfiniteShelter.new(params[:infinite_shelter])

    respond_to do |format|
      if @infinite_shelter.save
        format.html { redirect_to @infinite_shelter, notice: 'Infinite shelter was successfully created.' }
        format.json { render json: @infinite_shelter, status: :created, location: @infinite_shelter }
      else
        format.html { render action: "new" }
        format.json { render json: @infinite_shelter.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /infinite_shelters/1
  # PUT /infinite_shelters/1.json
  def update
    @infinite_shelter = InfiniteShelter.find(params[:id])

    respond_to do |format|
      if @infinite_shelter.update_attributes(params[:infinite_shelter])
        format.html { redirect_to @infinite_shelter, notice: 'Infinite shelter was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @infinite_shelter.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /infinite_shelters/1
  # DELETE /infinite_shelters/1.json
  def destroy
    @infinite_shelter = InfiniteShelter.find(params[:id])
    @infinite_shelter.destroy

    respond_to do |format|
      format.html { redirect_to infinite_shelters_url }
      format.json { head :no_content }
    end
  end
end
