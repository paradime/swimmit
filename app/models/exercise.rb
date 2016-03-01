class Exercise < ActiveRecord::Base
  
  STROKES = [
    'Free',
    'Fly',
    'Back Stroke',
    'Breast Stroke',
    'IM',
    'Pull',
    'Kick'
  ]

  belongs_to :drill
  validates :distance, :repetitions, :stroke, presence: true
  validates :stroke, inclusion: { in: STROKES, message: "%{value} is not a valid stroke" }
end
