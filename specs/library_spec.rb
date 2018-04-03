require('minitest/autorun')
require('minitest/rg')
require_relative('../library.rb')

class TestLibrary < MiniTest::Test

  def setup()

    @books = [
      {
        title: "Lord of the Rings",
        rental_details: {
          student_name: "Jeff",
          date: "01/12/16"
        }
      },
      {
        title: "Book no. 2",
        rental_details: {
          student_name: "Nik",
          date: "02/11/17"
        }
      }
    ]
    @library = Library.new(@books)

  end

  def test_get_books()
    assert_equal(
      @books,
      @library.books)
    end

    def test_search_by_title()
      assert_equal( @books[1], @library.search_by_title("Book no. 2"))
    end

    def test_search_by_title__not_found()
      assert_nil(@library.search_by_title("Book no. 3"))
    end

    def test_return_rental_details()
      assert_equal( @books[1][:rental_details], @library.return_rental_details("Book no. 2"))
    end

    def test_return_rental_details__not_found()
      assert_nil(@library.return_rental_details("Book no. 3"))
    end

    # def test_add_book()
      # @library.add_book("Another Book")
      # assert_equal(@books, @library.books)
    # end
      def test_add_book()
        @library.add_book("Harry Potter")
        assert_equal({
          title: "Harry Potter",
          rental_details: {
            student_name: "",
            date:  ""
          }
          }, @library.search_by_title("Harry Potter"))
        end

    def test_rent_to_student()
            @library.add_book("Harry Potter")
      @library.rent_to_student("Harry Potter", "Tom", "02/11/18")
      assert_equal({
        title: "Harry Potter",
        rental_details: {
          student_name: "Tom",
          date:  "02/11/18"
        }
        }, @library.search_by_title("Harry Potter"))
    end

  end
