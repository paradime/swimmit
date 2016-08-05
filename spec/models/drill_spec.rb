require 'rails_helper'

describe Drill do
  let(:drill) { Drill.create! }
  let!(:exe) { create :hundred_free, drill: drill }
  describe '#workouts' do
    it 'has many workouts' do
      expect(drill.exercises.count).to be 1
      expect(drill.exercises.first.id).to be exe.id
    end
  end
end
