require 'rails_helper'

RSpec.describe Task, type: :model do
  describe "#toggle_complete!" do
    it "should switch complete to false if it was true" do
      task = Task.create(complete: true)
      task.toggle_complete!
      expect(task.complete).to eq(false)
    end

    it "should switch complete to true if it was false" do
      task = Task.create(complete: false)
      task.toggle_complete!
      expect(task.complete).to eq(true)
    end
  end
  it 'should toggle favorite to false if it was true' do
    task = Task.create(name: 'Go on a jog', description: 'Jog until youre tired', priority: 7, deadline: Time.now, complete: true, duration: 60, favorite: false)
    task.toggle_favorite!
    expect(task.toggle_favorite!).to eq(true)
  end
  describe '#increment_priority' do
    it 'should increase the priority by one, but only up to 10' do
    task = Task.create(name: 'Go on a jog', description: 'Jog until youre tired', priority: 7, deadline: Time.now, complete: true, duration: 60, favorite: false)
    Task.last
    task.increment_priority!
    expect(task.priority).to eq(8)
    end
  end
end