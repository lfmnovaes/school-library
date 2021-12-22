require 'json'

class Persistor
  def save(people:, books:, rentals:)
    unless people.empty?
      File.open('people.json', 'w') do |f|
        f.write(JSON.generate(people.map { |p| p.to_json }))
      end
    end
    unless books.empty?
      File.open('books.json', 'w') do |f|
        f.write(JSON.generate(books.map { |b| b.to_json }))
      end
    end
    unless rentals.empty?
      File.open('rentals.json', 'w') do |f|
        f.write(JSON.generate(rentals.map { |r| r.to_json }))
      end
    end
  end
end
