class PublicationAttachmentsController < ApplicationController
	before_action :set_publication_attachment, only: [:destroy]
	 def create
    @publication_attachment = PublicationAttachment.new(images: [])
    if @publication_attachment.save!
      respond_to do |format|
        format.json{ render :json => @publication_attachment }
      end
    end
  end
 

  def destroy
  	@publication_attachment = PublicationAttachment.find(params[:id])
  	@publication_attachment.destroy
		respond_to do |format|
			format.html { redirect_to edit_publication_path(params[:publication_id]), notice: 'Image was successfully eliminated.' }
			format.json { head :no_content }
  end
end

private
    # Use callbacks to share common setup or constraints between actions.
    def set_publication_attachment
      @publication_attachment = PublicationAttachment.find(params[:id])
    end

 def publication_attachment_params
          params.require(:publication_attachment).permit(:id, :image, :publication_id)
end

end
