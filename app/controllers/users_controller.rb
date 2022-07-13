class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @books = @users.books
  end
  
  def edit
  end
end
