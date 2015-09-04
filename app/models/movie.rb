class Movie < ActiveRecord::Base
  has_many :actors, dependent: :destroy 

  def actor_show(first_name, last_name, age, born)
    self.actors.each do |actor|
     actor.first_name = first_name
     actor.last_name = last_name
     actor.age = age
     actor.born = born
     actor.save
   end
 end
end
