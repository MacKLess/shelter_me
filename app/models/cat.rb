class Cat < ActiveRecord::Based
  validates :name, :breed, :presence => true

  scope :search_breed, -> (breed_parameter) { where(breed: breed_parameter) }

end
