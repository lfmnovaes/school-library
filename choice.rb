require './student'
require './teacher'
require './book'
require './rental'

class HandleMenuChoice
  def initialize
    @people = HandlePerson.new
    @books = HandleBooks.new
    @rentals = []
  end

  def list_books
    @books.list_books
  end

  def list_people
    @people.list_people
  end

  def create_person
    print 'Do you want to create a student (1) or a teacher (2)? [Input the number]: '
    option = gets.chomp
    print 'Age: '
    age = gets.chomp
    print 'Name: '
    name = gets.chomp
    case option
    when '1'
      print 'Has parent permission? [Y/N]: '
      pp = gets.chomp
      @people.create_student(age, name, pp)
    when '2'
      print 'Specialization: '
      specialization = gets.chomp
      @people.create_teacher(age, name, specialization)
    else
      puts 'Not a valid option'
      return
    end
    puts 'Person created successfully'
  end

  def create_book
    print 'Title: '
    title = gets.chomp
    print 'Author: '
    author = gets.chomp
    @books.add_book(title, author)
    puts 'Book created successfully'
  end

  def create_rental
    puts 'Select a book from the following list by number'
    @books.list_books_with_id
    book_i = gets.chomp
    puts ''
    puts 'Select a person from the following list by number (not id)'
    @people.list_people_with_id
    person_i = gets.chomp
    puts ''
    print 'Date: '
    date = gets.chomp
    @rentals.push(Rental.new(date, @books[book_i.to_i], @people[person_i.to_i]))
    puts 'Rental created successfully'
  end

  def list_rentals
    puts 'Select a person from the following list by number (not id)'
    @people.list_people_with_id
    person_i = gets.chomp
    puts ''
    puts 'Rentals:'
    @rentals.each { |rental| puts rental if rental.person.id == @people[person_i.to_i].id }
  end
end

class HandlePerson
  def initialize
    @people = []
  end

  def translate_answer(ans)
    %w[yes y].include?(ans)
  end

  def create_student(age, name, pp)
    @people.push(Student.new(name: name, age: age, parent_permission: translate_answer(pp.downcase)))
  end

  def create_teacher(age, name, specialization)
    @people.push(Teacher.new(name: name, age: age, specialization: specialization))
  end

  def list_people
    if @people.empty?
      puts 'There is no one registered in the library'
    else
      @people.each { |person| puts person }
    end
  end

  def list_people_with_id
    if @people.empty?
      puts 'There is no one registered in the library'
    else
      @people.each_with_index { |person, index| puts "#{index}) #{person}" }
    end
  end

  def get_id_from_index(index)
    @people[index].id
  end
end

class HandleBooks
  def initialize
    @books = []
  end

  def add_book(title, author)
    @books.push(Book.new(title, author))
  end

  def list_books
    if @books.empty?
      puts 'There is no book registered in the library'
    else
      @books.each { |book| puts book }
    end
  end

  def list_books_with_id
    if @books.empty?
      puts 'There is no book registered in the library'
    else
      @books.each_with_index { |book, index| puts "#{index}) #{book}" }
    end
  end

  def get_id_from_index(index)
    @books[index].id
  end
end
