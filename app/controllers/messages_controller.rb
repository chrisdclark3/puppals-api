class MessagesController < ApplicationController
	skip_before_filter :verify_authenticity_token

  def create
    puts "IN CREATE METHOD"
    puts params
    if Conversation.between(params[:data][:sender_id], params[:data][:recipient_id]).present?
      @conversation = Conversation.between(params[:data][:sender_id], params[:data][:recipient_id]).first
    else
      @conversation = Conversation.create({ sender_id: params[:data][:sender_id], recipient_id: params[:data][:recipient_id] })
    end

    @message = @conversation.messages.build(body: params[:data][:new_message])
    @message.user_id = params[:data][:sender_id]
    @message.save!
    @conversations = Conversation.involving(User.find(params[:data][:sender_id]))
    if (@message.save)
      render json: @conversations.as_json(:include => [ :messages, :sender, :recipient ])
    else
      render json: { errors: @message.errors.full_messages }
    end
  end

end
