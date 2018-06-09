class TeamsController < ApplicationController
  before_action :set_team, only: [:show, :edit, :update, :destroy]

  # GET /teams
  # GET /teams.json
  def index
    @teams = Team.all
    @collections = Collection.all
    @projects = Project.all
    @activities = Activity.all
    @partners = Partner.all
    @publications = Publication.all
  end

  # GET /teams/1
  # GET /teams/1.json
  def show
    @project = Project.where(id: @team.tm_project_id)
    @collections = Collection.all
    @projects = Project.all
    @activities = Activity.all
    @teams = Team.all
    @partners = Partner.all
    @publications = Publication.all
  end

  # GET /teams/new
  def new
    @team = Team.new
  end

  # GET /teams/1/edit
  def edit
    @proj_options = Project.all.map{ |p| [ p.proj_title, p.id ] }
    #@project = Project.
     # @team.projects.build

  end

  # POST /teams
  # POST /teams.json
  def create
    @team = Team.new(team_params)

    respond_to do |format|
      if @team.save
        format.html { redirect_to edit_team_path, notice: 'Team was successfully created.' }
        format.json { render :show, status: :created, location: edit_team_path }
      else
        format.html { render :new }
        format.json { render json: @team.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /teams/1
  # PATCH/PUT /teams/1.json
  def update
    respond_to do |format|
      if @team.update(team_params)
        #@team.projects.create(proj_team_id: @team.id)
        format.html { redirect_to edit_team_path, notice: 'Team was successfully updated.' }
        format.json { render :show, status: :ok, location: edit_team_path }
      else
        format.html { render :edit }
        format.json { render json: @team.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /teams/1
  # DELETE /teams/1.json
  def destroy
    @team.destroy
    respond_to do |format|
      format.html { redirect_to teams_url, notice: 'Team was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_team
      @team = Team.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def team_params
      #params.fetch(:team, {})
            params.require(:team).permit(:id, :tm_about, :tm_name, :tm_joined_date, :project_id, :professional_id, :cover, :cover_cache,               
             project_attributes: [:id, :proj_title])

    end
end
