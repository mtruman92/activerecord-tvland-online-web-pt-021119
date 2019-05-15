class Character < ActiveRecord::Base
      belongs_to :show 
      belongs_to :actor
      
    
     
      #expect(urkel.say_that_thing_you_say).to eq("#{urkel.name} always says: #{urkel.catchphrase}")
end