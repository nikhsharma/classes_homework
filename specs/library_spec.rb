require('minitest/autorun')
require('minitest/rg')
require_relative('../library.rb')

class TestLibrary < MiniTest::Test

  def setup
    @library = Library.new(
      [
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
    )

  end

  def test_get_book
    assert_equal(
      [
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
      ],
      @library.get_books)
    end

    def test_search_by_title
      assert_equal(
        {
          title: "Book no. 2",
          rental_details: {
            student_name: "Nik",
            date: "02/11/17"
          }
        },
        @library.search_by_title("Book no. 2"))
      end

      def test_return_rental_details
        assert_equal(
          { student_name: "Nik",
            date: "02/11/17"
          },
          @library.return_rental_details("Book no. 2"))
        end

        def test_add_book
          assert_equal([
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
            },
            {
              title: "Another Book",
              rental_details: {
                student_name: "",
                date: ""
              }
            }
            ], @library.add_book("Another Book"))
          end

          def test_rent_to_student
            @library.rent_to_student("Book no. 2", "Tom", "02/11/18")
            assert_equal([
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
                  student_name: "Tom",
                  date: "02/11/18"
                }
              }
              ],
              @library.get_books)
          end

        end
