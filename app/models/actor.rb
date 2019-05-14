class Actor < ActiveRecord::Base
  has_many :characters 
  has_many :shows, through: :characters
  
  def full_name
    full_name = Actor.first_name + " " + Actor.last_name
  end
  
  def list_roles
    #actor= self.characters.full_name
   actor = Actor.new(:full_name)
   character = Character.new(:name)
   character.actor
   character.save
  end
end