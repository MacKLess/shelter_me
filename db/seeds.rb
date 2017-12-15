require 'faker'
class Seed

  def self.begin
    seed = Seed.new
    seed.generate_cats
  end

  def generate_cats
    25.times do |i|
      name =
      breed =
      cat = Cat.create!(
        name: Faker::Cat.name,
        breed: Faker::Cat.breed)
      puts "Cats #{i}: #{cat.name} is a #{cat.breed} ready to make you an excellent companion."
    end
  end
end

Seed.begin
