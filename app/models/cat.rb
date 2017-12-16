class Cat < ActiveRecord::Base
  validates :name, :breed, :presence => true

  scope :search_breed, -> (breed_parameter) { where(breed: breed_parameter) }

end
