require "base64"

class UsersController < ApplicationController

  after_action :set_access_control_headers
  skip_before_filter :verify_authenticity_token

  def set_access_control_headers
   headers['Access-Control-Allow-Origin'] = "*"
  end

  attr_accessor :avatar_url

  def index
    @users = User.all
    puts "USERS IN INDEX..."
    puts @users.inspect

    render json: @users.as_json(:include => { :dogs => { :methods => :avatar_url } }, :methods => :avatar_url)
  end


  def show
    @user = User.find(params[:id])
    render json: @user.as_json(:include => { :dogs => { :methods => :avatar_url } }, :methods => :avatar_url)
  end

  def create
    puts 'RAILS CREATING USER...'
    puts params

    user = User.create!(user_params)

    puts "USER IN CREATE USER"
    puts user.inspect

    @user = User.find(user.id);

    if (@user.save)
      render json: @user
    else
      render json: @user.errors.full_messages
    end
  end

  private

  def user_params
    params.require(:new_user).permit(:first_name, :avatar, :last_name, :address, :email, :password_digest, :image)
  end


  def avatar_url
    self.avatar.url
  end
end
