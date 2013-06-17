class JacketsController < ApplicationController
  # GET /jackets
  # GET /jackets.json
  def index
    @jackets = Jacket.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @jackets }
    end
  end

  # GET /jackets/1
  # GET /jackets/1.json
  def show
    @jacket = Jacket.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @jacket }
    end
  end

  # GET /jackets/new
  # GET /jackets/new.json
  def new
    @jacket = Jacket.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @jacket }
    end
  end

  # GET /jackets/1/edit
  def edit
    @jacket = Jacket.find(params[:id])
  end

  # POST /jackets
  # POST /jackets.json
  def create
    @jacket = Jacket.new(params[:jacket])

    respond_to do |format|
      if @jacket.save
        format.html { redirect_to @jacket, notice: 'Jacket was successfully created.' }
        format.json { render json: @jacket, status: :created, location: @jacket }
      else
        format.html { render action: "new" }
        format.json { render json: @jacket.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /jackets/1
  # PUT /jackets/1.json
  def update
    @jacket = Jacket.find(params[:id])

    respond_to do |format|
      if @jacket.update_attributes(params[:jacket])
        format.html { redirect_to @jacket, notice: 'Jacket was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @jacket.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /jackets/1
  # DELETE /jackets/1.json
  def destroy
    @jacket = Jacket.find(params[:id])
    @jacket.destroy

    respond_to do |format|
      format.html { redirect_to jackets_url }
      format.json { head :no_content }
    end
  end
end
