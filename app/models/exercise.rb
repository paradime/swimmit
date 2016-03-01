class Exercise < ActiveRecord::Base
  belongs_to :drill

  validates :distance, :repetitions, :stroke, presence: true
end
