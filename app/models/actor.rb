class Actor < ActiveRecord::Base
  belongs_to :movies

def full_details(show_all = true)
   "#{self.first_name} - #{self.age}"
 end

 def i
   "#{self.movies.first_name} - #{self.movie.age}"
 end
end