class MessagesController < ApplicationController
  def new
    @message = Message.new
  end

  def create
    @message = Message.new message_params

    if @message.valid?
      MessageMailer.contact_me(@message).deliver_now
      redirect_to projects_path, notice: 'Message Sent, thanks!'
      #redirect_to @projects, notice: "Message received, thanks!"
    else
      render :new
    end
  end

  private

  def message_params
    params.require(:message).permit(:name, :email, :body)
  end  
end