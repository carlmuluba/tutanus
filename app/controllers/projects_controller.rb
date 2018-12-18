class ProjectsController < ApplicationController
  before_action :set_project, only: [:show, :edit, :update, :destroy]

  # GET /projects ::: START PAGE
  # GET /projects.json
def start
    #@projects = Project.all()  
    offset = 12
    @projects = Project.limit(offset).order("RANDOM()")  
    @collections = Collection.all
    @activities = Activity.all
    @teams = Team.all
    @partners = Partner.all
    @publications = Publication.all

end

  # GET /projects ::: BY PARAMS
  # GET /projects.json
def search
   if params[:term]
    @projects = Project.where( "proj_kind = ?", params[:term]).order("RANDOM()")
    render 'index'
  end
  end

  # GET /projects
  # GET /projects.json
  def index
    @projects = Project.all  
    @collections = Collection.all
    @activities = Activity.all
    @teams = Team.all
    @partners = Partner.all
    @publications = Publication.all
    
   if params[:term]
    @projects = Project.where( "proj_kind = ?", params[:term]).order("RANDOM()")
     # @images = @project.images.all
  else
    offset = Project.count
    @projects = Project.limit(offset).order("RANDOM()")
     # @images = @project.images.all
  end
  end

  # GET /projects
  # GET /projects.json
  def listall
    @projects = Project.all  
    @collections = Collection.all
    @activities = Activity.all
    @teams = Team.all
    @partners = Partner.all
    @publications = Publication.all
    
   #if params[:term]
   # @projects = Project.where( "proj_kind = ?", params[:term]).order("RANDOM()")
     # @images = @project.images.all
  #else
  #  offset = Project.count
  #  @projects = Project.limit(offset).order("RANDOM()")
     # @images = @project.images.all
  #end
  end
  # GET /projects/1
  # GET /projects/1.json
  def show
    #@projects = Project.all
    @collections = Collection.all
    @activities = Activity.all
    @teams = Team.all
    @partners = Partner.all
    @publications = Publication.all

    @proj_attachments = @project.proj_attachments.all
     # @collections = @project.collections.all
  end

  # GET /projects/new
  def new
    @project = Project.new 
      if @project.collections
        @project.collections.build(:coll_project_id => @project.id)
      end
  end

  # GET /projects/1/edit
  def edit
      @proj_attachment = @project.proj_attachments.all
      @collection = @project.collections.all
      @project.collections.build(coll_project_id: @project.id)
      @team = @project.teams.all
      @project.teams.build(tm_project_id: @project.id)
  end

  # POST /projects
  # POST /projects.json
  def create
        @project = Project.new(project_params)
    respond_to do |format|
     if @project.save
       # @project.collections.create(coll_project_id: @project.id)
        format.html { redirect_to edit_project_path(@project.id), notice: 'Project was successfully created.' }
        format.json { render :show, status: :created, location: edit_project_path(@project.id) }
      else
        format.html { render :new }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
      end
  end

  # PATCH/PUT /projects/1
  # PATCH/PUT /projects/1.json
  def update   
   respond_to do |format|
      if @project.update(project_params)
        format.html { redirect_to @project, notice: 'Project was successfully updated.' }
        format.html { render :edit }
        format.json { render json: @project.errors, status: :unprocessable_entity }
        format.json { render :show, status: :ok, location: @project }
      else
      end
    end
  end

  # DELETE /projects/1
  # DELETE /projects/1.json
  def destroy
    @project.destroy
    respond_to do |format|
      format.html { redirect_to listall, notice: 'Project was successfully destroyed.' }
      format.json { head :no_content }
    end
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project
      @project = Project.find(params[:id])
    end


    # Never trust parameters from the scary internet, only allow the white list through.
    def project_params
          params.require(:project).permit(:id, :proj_title, :proj_kind, :proj_about, :proj_startdate, :proj_enddate, :proj_cover, 
                proj_attachments_attributes: [:image, :_destroy, :id, :project_id, :@original_filename, :@content_type, :@headers ],
                teams_attributes: [:id, :tm_name, :tm_cover, :tm_joined_date, :remove_cover, :cover_cache, :tm_project_id],
                collections_attributes: [:id, :coll_title, :coll_cover, :cover_cache, :coll_about, :coll_project_id, :coll_team_id])
    
    end

end
