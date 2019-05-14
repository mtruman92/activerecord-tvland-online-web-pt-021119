class Character < ActiveRecord::Base
      belongs_to :show 
      
     def change
      add_column :catchprase, :artist_id, :integer
  end 
end