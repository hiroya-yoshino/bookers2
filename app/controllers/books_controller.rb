class BooksController < ApplicationController
  def new
    @book = Book.new
    redirect_to book_path(book_params)
  end
  
  def create
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    @book.save
    redirect_to books_path
  end
  
  def index
    @user = current_user
    @book = Book.new
    @books = Book.all
  end
  
  def edit
    @book = Book.find(params[:id])
  end
  
  def update
    book = Book.find(params[:id])
    book.update(book_params)
    redirect_to books_path
  end
  
  def destroy
    book = Book.find(params[:id])
    book.destroy
    redirect_to books_path
  end
  
  def show
    @user = current_user
    @book = Book.new
    @book1 = Book.find(params[:id])
  end
  
  private
  
  def book_params
    params.require(:book).permit(:title, :body)
  end
  
end
