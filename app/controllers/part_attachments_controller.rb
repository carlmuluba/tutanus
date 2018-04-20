class PartAttachmentsController < ApplicationController
	before_action :set_part_attachment, only: [:destroy]
	 def create
    @part_attachment = PartAttachment.new(images: [])
    if @part_attachment.save!
      respond_to do |format|
        format.json{ render :json => @part_attachment }
      end
    end
  end
 

  def destroy
  	@part_attachment = PartAttachment.find(params[:id])
  	@part_attachment.destroy
		respond_to do |format|
			format.html { redirect_to edit_part_path(params[:part_id]), notice: 'Image was successfully eliminated.' }
			format.json { head :no_content }
  end
end

private
    # Use callbacks to share common setup or constraints between actions.
    def set_part_attachment
      @part_attachment = PartAttachment.find(params[:id])
    end

 def part_attachment_params
          params.require(:part_attachment).permit(:id, :image, :part_id)
end

end
