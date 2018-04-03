class Library


  attr_reader :books

  def initialize(books)
    @books = books
  end

  def search_by_title(title)
    for book in @books
      return book if book[:title] == title
    end
    return nil
  end


  def return_rental_details(title)
    info = search_by_title(title)
    return info[:rental_details] if info
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
      return_rental_details(title)[:student_name] = name
      return_rental_details(title)[:date] = date
    end

  end
