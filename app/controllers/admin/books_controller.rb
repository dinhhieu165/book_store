class Admin::BooksController < ApplicationController
  def new
    @book = Book.new
  end
end
