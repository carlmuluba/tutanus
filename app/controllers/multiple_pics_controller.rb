class MultiplePicsController < ApplicationController
  before_action :set_multiple_pic, only: [:show, :edit, :update, :destroy]

  # GET /multiple_pics
  # GET /multiple_pics.json
  def index
    @multiple_pics = MultiplePic.all
  end

  # GET /multiple_pics/1
  # GET /multiple_pics/1.json
  def show
  end

  # GET /multiple_pics/new
  def new
    @multiple_pic = MultiplePic.new
  end

  # GET /multiple_pics/1/edit
  def edit
  end

  # POST /multiple_pics
  # POST /multiple_pics.json
  def create
    @multiple_pic = MultiplePic.new(multiple_pic_params)

    respond_to do |format|
      if @multiple_pic.save
        format.html { redirect_to @multiple_pic, notice: 'Multiple pic was successfully created.' }
        format.json { render :show, status: :created, location: @multiple_pic }
      else
        format.html { render :new }
        format.json { render json: @multiple_pic.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /multiple_pics/1
  # PATCH/PUT /multiple_pics/1.json
  def update
    respond_to do |format|
      if @multiple_pic.update(multiple_pic_params)
        format.html { redirect_to @multiple_pic, notice: 'Multiple pic was successfully updated.' }
        format.json { render :show, status: :ok, location: @multiple_pic }
      else
        format.html { render :edit }
        format.json { render json: @multiple_pic.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /multiple_pics/1
  # DELETE /multiple_pics/1.json
  def destroy
    @multiple_pic.destroy
    respond_to do |format|
      format.html { redirect_to multiple_pics_url, notice: 'Multiple pic was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_multiple_pic
      @multiple_pic = MultiplePic.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def multiple_pic_params
      params.require(:multiple_pic).permit(:project_id, :activity_id, :productor_id, :image)
    end
end
