require_relative '../lib/todo.rb'
require_relative '../lib/todo_list.rb'

RSpec.describe 'Todo Integration' do
  let(:todo_list) {TodoList.new}
  context 'one task being added to list' do 
    it 'adds entry to list' do
      todo_1 = Todo.new("Get milk")
      expect(todo_list.add(todo_1.task)).to eq ["Get milk"]
    end
  end

  context 'multiple tasks being added to list' do 
    it 'returns all incomplete tasks' do
      todo_1 = Todo.new("Get milk")
      todo_2 = Todo.new("Make tea")
      todo_list.add(todo_1.task)
      todo_list.add(todo_2.task)
      expect(todo_list.incomplete).to eq ["Get milk", "Make tea"]
    end

    it 'returns all completed tasks' do
      todo_1 = Todo.new("Get milk")
      todo_2 = Todo.new("Make tea")
      todo_list.add(todo_1)
      todo_list.add(todo_2)
      todo_1.mark_done!
      expect(todo_list.complete).to eq ["Get milk"]
    end
  end
end