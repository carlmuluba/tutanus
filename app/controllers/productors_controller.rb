class ProductorsController < ApplicationController
  before_action :set_productor, only: [:show, :edit, :update, :destroy]

  # GET /productors
  # GET /productors.json
  def index
    @productors = Productor.all
  end

  # GET /productors/1
  # GET /productors/1.json
  def show
  end

  # GET /productors/new
  def new
    @productor = Productor.new
  end

  # GET /productors/1/edit
  def edit
  end

  # POST /productors
  # POST /productors.json
  def create
    @productor = Productor.new(productor_params)

    respond_to do |format|
      if @productor.save
        format.html { redirect_to @productor, notice: 'Productor was successfully created.' }
        format.json { render :show, status: :created, location: @productor }
      else
        format.html { render :new }
        format.json { render json: @productor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /productors/1
  # PATCH/PUT /productors/1.json
  def update
    respond_to do |format|
      if @productor.update(productor_params)
        format.html { redirect_to @productor, notice: 'Productor was successfully updated.' }
        format.json { render :show, status: :ok, location: @productor }
      else
        format.html { render :edit }
        format.json { render json: @productor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /productors/1
  # DELETE /productors/1.json
  def destroy
    @productor.destroy
    respond_to do |format|
      format.html { redirect_to productors_url, notice: 'Productor was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_productor
      @productor = Productor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def productor_params
      params.fetch(:productor, {})
    end
end
