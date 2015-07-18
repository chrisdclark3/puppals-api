class MessagesController < ApplicationController
  after_action :set_access_control_headers
  skip_before_filter :verify_authenticity_token

  def set_access_control_headers
   headers['Access-Control-Allow-Origin'] = "*"
  end

  def create
    msg = JSON.parse(params[:data])
    puts "IN CREATE METHOD"
    puts "PARAMS"
    puts msg
    puts "PARAMS"
    puts msg
    puts "PARAMS[sender_id]"
    puts msg[:sender_id]
    puts "PARAMS[recipient_id]"
    puts msg[:recipient_id]
    puts "PARAMS[new_message]"
    puts msg[:new_message]

    if Conversation.between(msg[:sender_id], msg[:recipient_id]).present?
      @conversation = Conversation.between(msg[:sender_id], msg[:recipient_id]).first
    else
      @conversation = Conversation.create({ sender_id: msg[:sender_id], recipient_id: msg[:recipient_id] })
    end

    @message = @conversation.messages.build(body: msg[:new_message])
    @message.user_id = msg[:sender_id]
    @message.save!
    @conversations = Conversation.involving(User.find(msg[:sender_id]))
    if (@message.save)
      render json: @conversations.as_json(:include => [ :messages, :sender, :recipient ])
    else
      render json: { errors: @message.errors.full_messages }
    end
  end
end
