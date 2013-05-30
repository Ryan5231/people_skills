class User < ActiveRecord::Base
  # Remember to create a migration!
  has_many :proficiencies
  has_many :skills, :through => :proficiencies


 def proficiency_for(skill)
    skill = self.proficiencies.where('skill_id = ?', skill.id)
    skill.rating
  end

end
