class Actor < ActiveRecord::Base
  has_many :characters 
  has_many :shows, through: :characters
  
  def full_name
    full_name = Actor.first_name + " " + Actor.last_name
  end
  
  def list_roles
   characters.collect do |character|
   "#{character.name} - #{character.show.name}"
    end
  end
  
   emilia = Actor.new(:first_name => "Emilia", :last_name => "Clarke")
    khaleesi = Character.new(:name => "Khaleesi")
    khaleesi.actor = emilia
    khaleesi.save

    khaleesi.reload
    expect(emilia.characters).to include(khaleesi)
    expect(khaleesi.actor).to eq(emilia)
end