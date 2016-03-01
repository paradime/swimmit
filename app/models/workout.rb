class Workout < ActiveRecord::Base
  has_many :drills
  def distance
    drills.inject(0) { |sum, e| sum += e.distance }
  end
end
