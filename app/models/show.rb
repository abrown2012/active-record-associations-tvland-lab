class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network
  def actors_list
    list = []
    self.actor_ids.each do |a|
    list << "#{Actor.find(a).first_name} #{Actor.find(a).last_name}"
    end
    list 
  end
end