class ProjAttachmentsController < ApplicationController
	before_action :set_proj_attachment, only: [:destroy]
	 def create
    @proj_attachment = ProjAttachment.new(images: [])
    if @proj_attachment.save!
      respond_to do |format|
        format.json{ render :json => @proj_attachment }
      end
    end
  end
 

  def destroy
  	@proj_attachment = ProjAttachment.find(params[:id])
  	@proj_attachment.destroy
		respond_to do |format|
			format.html { redirect_to edit_project_path(params[:project_id]), notice: 'Image was successfully eliminated.' }
			format.json { head :no_content }
  end
end

private
    # Use callbacks to share common setup or constraints between actions.
    def set_proj_attachment
      @proj_attachment = ProjAttachment.find(params[:id])
    end

 def proj_attachment_params
          params.require(:proj_attachment).permit(:id, :image, :project_id)
end

end
