class BooksController < ApplicationController

  def index
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end

  def create

  end

  def edit

  end

  def update

  end

  def destroy

  end

  private

  def book_params

  end

end
