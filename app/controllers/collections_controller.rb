class CollectionsController < ApplicationController
  before_action :set_collection, only: [:show, :edit, :update, :destroy]

  # GET /collections
  # GET /collections.json
  def index
    @collections = Collection.all
    @projects = Project.all
    @activities = Activity.all
    @teams = Team.all
    @partners = Partner.all
    @publications = Publication.all
  end

  # GET /collections/1
  # GET /collections/1.json
  def show
    @collections = Collection.all
    @projects = Project.all
    @activities = Activity.all
    @teams = Team.all
    @partners = Partner.all
    @publications = Publication.all
  end

  # GET /collections/new
  def new
    @collection = Collection.new
  end

  # GET /collections/1/edit
  def edit   
     @collection.itens.build(it_collection_id: @collection.id)
  end

  # POST /collections
  # POST /collections.json
  def create
    @collection = Collection.new(collection_params)

    respond_to do |format|
      if @collection.save
        format.html { redirect_to @collection, notice: 'Collection was successfully created.' }
        format.json { render :show, status: :created, location: @collection }
      else
        format.html { render :new }
        format.json { render json: @collection.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /collections/1
  # PATCH/PUT /collections/1.json
  def update
    respond_to do |format|
      if @collection.update(collection_params)
        format.html { redirect_to @collection, notice: 'Collection was successfully updated.' }
        format.json { render :show, status: :ok, location: @collection }
      else
        format.html { render :edit }
        format.json { render json: @collection.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /collections/1
  # DELETE /collections/1.json
  def destroy
    @collection.destroy
    respond_to do |format|
      format.html { redirect_to collections_url, notice: 'Collection was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_collection
      @collection = Collection.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def collection_params
      #params.fetch(:collection, {})
                  params.require(:collection).permit(:id, :coll_title, :coll_cover, :coll_about, :coll_project_id, :coll_item_id, :remote_coll_cover_url, :remove_coll_cover, :coll_cover_cache,
                                    itens_attributes: [:id, :it_name, :it_description, :it_collection_id])

    end
end
