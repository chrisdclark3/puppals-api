class ConversationsController < ApplicationController

	skip_before_filter :verify_authenticity_token

	def show
		@conversations = Conversation.involving(User.find(params[:id]))
		puts "CONVERSATIONS"
		puts @conversations.inspect
		render json: @conversations.as_json(:include => [ :messages, { :sender => { :methods => :avatar_url } }, { :recipient => { :methods => :avatar_url } } ])
	end
end
