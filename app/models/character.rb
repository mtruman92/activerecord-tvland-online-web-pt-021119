class Character < ActiveRecord::Base
      belongs_to :show 
      
     
     def say_that_thing_you_say
       Character.catchphrase
     end
end