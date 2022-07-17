class BooksController < ApplicationController
  def new
    @book = Book.new
  end
  
  def index
    @user = current_user
    @book = Book.new 
  end
  
  private
  
  def book_params
    params.require(:book).permit(:title, :body)
  end
  
end
