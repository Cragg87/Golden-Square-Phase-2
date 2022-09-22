require_relative '../lib/todo_list.rb'
require_relative '../lib/todo.rb'

RSpec.describe TodoList do
  let(:todo_list) {TodoList.new}
  context 'a task is added to an array' do
    it 'prints the array of tasks' do
      todo_list.add("Buy milk")
      expect(todo_list.incomplete).to eq ["Buy milk"]
    end
  end
end