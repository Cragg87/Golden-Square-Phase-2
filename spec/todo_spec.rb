require_relative '../lib/todo.rb'
require_relative '../lib/todo_list.rb'

RSpec.describe Todo do
  let(:todo_1) {Todo.new("Get milk")}
  context 'a task is passed' do
    it 'returns task as a string' do
      expect(todo_1.task).to eq "Get milk"
    end
  end

  context 'a task has been completed' do
    it 'returns true' do
      todo_1.mark_done!
      expect(todo_1.done?).to eq true
    end
  end

  context 'a tast has not been completed' do
    it 'returns false' do
      expect(todo_1.done?).to eq false
    end
  end
end