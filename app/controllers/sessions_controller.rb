class SessionsController < ApplicationController

	skip_before_filter :verify_authenticity_token

  def create
  	user = User.find_by(email: params[:email])
  	if user
 			puts user.inspect
  		@current_user = user
			render json: @current_user.as_json(:include => { :dogs => { :methods => :avatar_url } }, :methods => :avatar_url)
  	else
      render json: { :errors => "Invalid email or password" }
    end
  end

end
