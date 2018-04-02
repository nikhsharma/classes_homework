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


  end
