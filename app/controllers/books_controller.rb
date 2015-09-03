class BooksController < ApplicationController
  # views always have access to instance vars

  # make the view have access to all books
  def index
    @books = Book.all
  end

  def show

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
