class Skill < ActiveRecord::Base
  # Remember to create a migration!
  validates :name, :uniqueness => true

  has_many :proficiencies
  has_many :users, :through => :proficiencies
  
end
