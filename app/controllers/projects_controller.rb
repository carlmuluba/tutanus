class ProjectsController < ApplicationController
  before_action :set_project, only: [:show, :edit, :update, :destroy]

  # GET /projects ::: START PAGE
  # GET /projects.json
def start
    #@projects = Project.all()  
    offset = 12
    @projects = Project.limit(offset).order("RANDOM()")  

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
    #@projects = Project.all  
   if params[:term]
    @projects = Project.where( "proj_kind = ?", params[:term]).order("RANDOM()")
     # @images = @project.images.all
  else
    offset = Project.count
    @projects = Project.limit(offset).order("RANDOM()")
     # @images = @project.images.all
  end
  end

  # GET /projects/1
  # GET /projects/1.json
  def show
    @proj_attachments = @project.proj_attachments.all
  end

  # GET /projects/new
  def new
    @project = Project.new 
  end

  # GET /projects/1/edit
  def edit
      @proj_attachment = @project.proj_attachments.all
  end

  # POST /projects
  # POST /projects.json
  def create
        @project = Project.new(project_params)
        #if @proj_attachment = ProjAttachment.new(name: params[:file])
      #end
    respond_to do |format|
     if @project.save
       params[:proj_attachments]['image'].each do |a|
         @proj_attachments = @project.proj_attachments.create!(:image => a,     :project_id => @project.id)
       end
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
      format.html { redirect_to projects_url, notice: 'Project was successfully destroyed.' }
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
         # params.require(:project).permit(:data)
          params.require(:project).permit(:id, :proj_title, :proj_kind, :proj_about, :proj_startdate, :proj_enddate, projimages: [],
                proj_attachments_attributes: [:image, :_destroy, :id, :project_id, :@original_filename, :@content_type, :@headers ])
            #proj_attachments_attributes: [:id, :image, :project_id]) 
         # team_attributes: [:id, :name, :picture, :joined_date, :remove_picture, :picture_cache, :project_id, :picture_cache ], 
         # collections_attributes: [:id, :title, :picture, :about, :project_id, :team_id, :professional_id, :picture_cache])
    
    end

end
