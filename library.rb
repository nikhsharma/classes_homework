class Library

  def initialize(books)
    @books = books
  end


  def get_books()
    return @books
  end

  def search_by_title(title)
    for book in @books
      return book if book[:title] == title
    end
  end


  def return_rental_details(title)
    for book in @books
      return book[:rental_details] if book[:title] == title
    end
  end

  def add_book(title)
    @books.push({
      title: title,
      rental_details: {
        student_name: "",
        date: ""
      }
      })
    end

    def rent_to_student(title, name, date)
search_by_title(title).push({
  title: title,
  rental_details: {
  student_name: name,
  date: date
}})
    end

  end
