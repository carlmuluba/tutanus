class ItemAttachmentsController < ApplicationController
	before_action :set_item_attachment, only: [:destroy]
	 def create
    @item_attachment = ItemAttachment.new(images: [])
    if @item_attachment.save!
      respond_to do |format|
        format.json{ render :json => @item_attachment }
      end
    end
  end
 

  def destroy
  	@item_attachment = ItemAttachment.find(params[:id])
  	@item_attachment.destroy
		respond_to do |format|
			format.html { redirect_to edit_item_path(params[:iten_id]), notice: 'Image was successfully eliminated.' }
			format.json { head :no_content }
  end
end

private
    # Use callbacks to share common setup or constraints between actions.
    def set_item_attachment
      @item_attachment = ItemAttachment.find(params[:id])
    end

 def item_attachment_params
          params.require(:item_attachment).permit(:id, :image, :iten_id)
end

end
