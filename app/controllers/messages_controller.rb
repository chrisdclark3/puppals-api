class MessagesController < ApplicationController
  skip_before_filter :verify_authenticity_token

  def create
    msg = JSON.parse(params)
    puts "IN CREATE METHOD"
    puts "PARAMS"
    puts msg[:data]
    puts "PARAMS"
    puts msg[:data]
    puts "PARAMS[sender_id]"
    puts msg[:data][:sender_id]
    puts "PARAMS[recipient_id]"
    puts msg[:data][:recipient_id]
    puts "PARAMS[new_message]"
    puts msg[:data][:new_message]

    if Conversation.between(msg[:data][:sender_id], msg[:data][:recipient_id]).present?
      @conversation = Conversation.between(msg[:data][:sender_id], msg[:data][:recipient_id]).first
    else
      @conversation = Conversation.create({ sender_id: msg[:data][:sender_id], recipient_id: msg[:data][:recipient_id] })
    end

    @message = @conversation.messages.build(body: msg[:data][:new_message])
    @message.user_id = msg[:data][:sender_id]
    @message.save!
    @conversations = Conversation.involving(User.find(msg[:data][:sender_id]))
    if (@message.save)
      render json: @conversations.as_json(:include => [ :messages, :sender, :recipient ])
    else
      render json: { errors: @message.errors.full_messages }
    end
  end
end
