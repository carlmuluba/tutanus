class ActivityAttachmentsController < ApplicationController
	before_action :set_activity_attachment, only: [:destroy]

	 def create
    @activity_attachment = activityAttachment.new(images: [])
    if @activity_attachment.save!
      respond_to do |format|
        format.json{ render :json => @activity_attachment }
      end
    end
  end 


  def destroy
  	@activity_attachment = ActivityAttachment.find(params[:id])
  	@activity_attachment.destroy
		respond_to do |format|
			format.html { redirect_to edit_activity_path(@activity), notice: 'Image was successfully eliminated.' }
			format.json { head :no_content }
  end
end

private

    # Use callbacks to share common setup or constraints between actions.
    def set_activity_attachment
      @activity_attachment = ActivityAttachment.find(params[:id])
    end

 def activity_attachment_params
          params.require(:activity_attachment).permit(:id, :image, :activity_id)
end

end
