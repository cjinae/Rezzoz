class UsersController < ApplicationController
  def create
	@user = User.new(params[:user])
	@user.save

  end

  def new
  	@user = User.new
  end
end
