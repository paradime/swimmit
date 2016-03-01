require 'rails_helper'

describe Drill do
  describe '#workouts' do
    it 'has many workouts' do
      drill = Drill.create!
      exe = drill.exercises.create!(distance: 100, repetitions: 1, stroke: 'free')
      expect(drill.exercises.count).to be 1
      expect(drill.exercises.first.id).to be exe.id
    end
  end
end
