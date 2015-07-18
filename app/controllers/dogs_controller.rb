require "base64"

class DogsController < ApplicationController

  attr_accessor :avatar_url

  skip_before_filter :verify_authenticity_token

  def create
  	puts 'RAILS CREATING DOG...'
    puts params

    @user = User.find(user_params[:id])

    @dog = @user.dogs.create(dog_params)
    @dog.save

    @users = User.all

    puts @user.inspect
    puts @users.inspect
    puts @dog.inspect

    if (@dog.save)
      render json: @users.as_json(:include => { :dogs => { :methods => :avatar_url } }, :methods => :avatar_url)
    else
      render json: @dog.errors.full_messages
    end
  end

  private

  def dog_params
    params.require(:dog).permit(:name, :avatar, :age, :breed, :gender, :description, :size)
  end

  def user_params
    params.require(:new_user).permit(:id)
  end

  def avatar_url
    self.avatar.url
  end

end
