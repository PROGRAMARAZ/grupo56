class UserController < ApplicationController
    before_action :authenticate_user!
    def index
        @books = current_user.books
end

    def add_book
            book_params = params.require(:book).permit(:id)
            book = Book.find(book_params[:id])
            unless book.nil?
                current_user.books.push(book)
            end
        redirect_to :controller => 'user', :action => 'index'
end
end
