require './student'
require './teacher'
require './classroom'
require './book'
require './rental'

class App
  def initialize
    @people = []
    @books = []
    @rentals = []
    @options = {
      '1' => 'List all books',
      '2' => 'List all people',
      '3' => 'Create a person',
      '4' => 'Create a book',
      '5' => 'Create a rental',
      '6' => 'List all rentals for a given person id',
      '7' => 'Exit'
    }
  end

  def run
    puts 'Welcome to School Library App!'

    loop do
      puts ''
      puts 'Please choose an option by eterin a number:'
      @options.each { |key, value| puts "#{key}) #{value}" }
      option = gets.chomp
      break if option == '7'

      menu_choice option
    end
  end

  def menu_choice(option)
    case option
    when '1'
      list_books
    when '2'
      list_people
    when '3'
      create_person
    when '4'
      create_book
    when '5'
      create_rental
    when '6'
      list_rentals
    else
      puts 'Not a valid option'
    end
  end

  private

  def list_books
    puts 'List books'
  end

  def list_people
    puts 'List people'
  end

  def create_person
    print 'Do you want to create a student (1) or a teacher (2)? [Input the number]: '
    option = gets.chomp
    case option
    when '1'
      create_student
    when '2'
      create_teacher
    else
      puts 'Not a valid option'
      return
    end

    puts 'Person created successfully'
  end

  def create_book
    puts 'Create book'
  end

  def create_rental
    puts 'Create rental'
  end

  def list_rentals
    puts 'List rental'
  end

  def create_student
    puts 'Create student'
  end

  def create_teacher
    puts 'Create teacher'
  end
end

def main
  app = App.new
  app.run
end

main
