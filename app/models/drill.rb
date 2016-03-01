class Drill < ActiveRecord::Base
  belongs_to :workout
  has_many :exercises

  def distance
    exercises.inject(0) { |sum, e| sum += e.distance }
  end
end
