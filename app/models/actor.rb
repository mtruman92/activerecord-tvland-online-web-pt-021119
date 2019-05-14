class Actor < ActiveRecord::Base
  has_many :characters 
  has_many :shows, through: :characters
  
  def full_name
    full_name = Actor.first_name + " " + Actor.last_name
  end
  
  def list_roles
    self.characters
  end
end