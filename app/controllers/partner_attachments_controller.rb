class PartnerAttachmentsController < ApplicationController
	before_action :set_partner_attachment, only: [:destroy]
	 def create
    @partner_attachment = PartnerAttachment.new(images: [])
    if @partner_attachment.save!
      respond_to do |format|
        format.json{ render :json => @partner_attachment }
      end
    end
  end
 

  def destroy
  	@partner_attachment = PartnerAttachment.find(params[:id])
  	@partner_attachment.destroy
		respond_to do |format|
			format.html { redirect_to edit_partner_path(params[:partner_id]), notice: 'Image was successfully eliminated.' }
			format.json { head :no_content }
  end
end

private
    # Use callbacks to share common setup or constraints between actions.
    def set_partner_attachment
      @partner_attachment = PartnerAttachment.find(params[:id])
    end

 def partner_attachment_params
          params.require(:partner_attachment).permit(:id, :image, :partner_id)
end

end
