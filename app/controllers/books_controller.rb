class BooksController < ApplicationController
  # views always have access to instance vars

  # make the view have access to all books
  def index
    @books = Book.all
  end

  def show

  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)

    if @book.save
      redirect_to book_path(@book)
    else
      render 'new'
    end
  end

  def edit

  end

  def update

  end

  def destroy

  end

  private

  # we do this for security - don't let anyone just change anything
  #   only allow specific changes
  def book_params
    params.require(:book).permit(:title,
                                 :year_published,
                                 :author,
                                 :available,
                                 :genre,
                                 :image_url
                                )
  end

end
