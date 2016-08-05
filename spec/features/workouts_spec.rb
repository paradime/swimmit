require 'rails_helper'

describe 'Create a workout' do
  before do
    visit '/workouts/new'
  end
  it 'displays Create Workout' do
    expect(page).to have_content 'Create Workout'
  end
  it 'asks for a name' do
    expect(page).to have_content 'Name:'
    expect(page).to have_css 'input'
  end
  it 'asks for a description'
  it 'has a link to add a set'
  context 'an empty workout' do
    it 'doesnt allow saving'
  end

  context 'an in-progress workout' do
    it 'displays the current set'
    it 'allows you to save'
  end
end
