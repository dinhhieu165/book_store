class Admin::BooksController < Admin::BaseController
  def new
    @book = Book.new
  end
end
