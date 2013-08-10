class Food < ActiveRecord::Base
  attr_accessible :desc, :name, :price, :genre


def self.search(search)
  if search
   find(:all, :conditions => ['genre OR name LIKE ?', "%#{search}%"])
  else
   find(:all, :order => 'genre')
 end
end



end
