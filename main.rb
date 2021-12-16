require './classroom'

class App
  def initialize
    @classroom = Classroom.new('Microverse')
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
    puts ''
    puts 'Please choose an option by eterin a number:'

    loop do
      @options.each { |key, value| puts "#{key}) #{value}" }
      option = gets.chomp
      break if option == '7'

      puts option
    end
  end
end

def main
  app = App.new
  app.run
end

main
