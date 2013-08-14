class Food < ActiveRecord::Base
  attr_accessible :desc, :name, :price, :genre, :id

  #set_primary_key :id

def self.search(search)
  if search
   find(:all, :conditions => ['genre LIKE ?', "%#{search}%"])
  else
   find(:all, :order => 'genre')
 end
end



end
