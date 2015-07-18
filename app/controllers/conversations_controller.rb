class ConversationsController < ApplicationController

	after_action :set_access_control_headers
  before_action :set_access_control_headers
  skip_before_action :verify_authenticity_token

  def set_access_control_headers
   headers['Access-Control-Allow-Origin'] = "*"
  end


	def show
		@conversations = Conversation.involving(User.find(params[:id]))
		puts "CONVERSATIONS"
		puts @conversations.inspect
		render json: @conversations.as_json(:include => [ :messages, { :sender => { :methods => :avatar_url } }, { :recipient => { :methods => :avatar_url } } ])
	end
end
