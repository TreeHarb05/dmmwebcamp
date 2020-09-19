class BooksController < ApplicationController
  def show
  end

  def edit
  end

  def destory
    @book = Book.find(params[:id])
  end

  def new
  end
  
  def create
   book = Book.new(book_params)
   book.save
   redirect_to book_path
  end
  
  private
  def books_params
    params.require(:book).permit(:title, :body)
  end
end