class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @book = Book.new
    @books = @user.books
  end
  
  def edit
    @user = User.find(params[:id])
  end
  
  def index
  @users = User.all
  @user = current_user
  @book = Book.new
  end
  
  private
  
  def user_params
    params.require(:user).permit(:name, :image, :introduction)
  end
end
