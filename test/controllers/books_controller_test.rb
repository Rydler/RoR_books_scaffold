require 'test_helper'

class BooksControllerTest < ActionDispatch::IntegrationTest
  
  setup do
    @book_params = {
      title: "book1",
      author: "Daniel",
      status: "estante",
      borrowed_at: Datetime.now,
      returned_at: Datetime.now,
      created_at: Datetime.now,
      updated_at: Datetime.now
    }
  end

  test 'create new book' do
    post book_url, params: { book: @book_params } 
  end


  test 'show a book' do
    get book_url(Book.last)
    assert_response :success
  end

end
