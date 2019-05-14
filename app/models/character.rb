class Character < ActiveRecord::Base
      belongs_to :show 
      
     def change
      add_column :catchphrase
     end 
     
     def say_that_thing_you_say
       Character.catchphrase
     end
end