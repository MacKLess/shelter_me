class Cat < ActiveRecord::Base
  validates :name, :breed, :presence => true

  scope :search_breed, -> (breed_parameter) { where(breed: breed_parameter) }

  self.random
    self("RAND()").limit(1)
  end

end
