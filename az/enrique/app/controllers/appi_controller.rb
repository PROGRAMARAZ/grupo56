class AppiController < ApplicationController
    def books
        books = Book.all
        render json: {
            books: books
        }
    end

    def show
        book_id = params[:book_id]
        book = Book.find(book_id)
        render json: {
            id: book.id,
            name: book.name
        }
    end
end
