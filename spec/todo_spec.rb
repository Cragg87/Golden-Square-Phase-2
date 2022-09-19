require_relative '../lib/todo.rb'

RSpec.describe Todo_list do

  context 'when no task is set' do
    it 'fails' do
      todo_list = Todo_list.new
      expect{ todo_list.add(nil) }.to raise_error "No task set"
    end
  end
  
  context 'given a string' do
    it 'adds the string to array and prints array with numbers' do
      todo_list = Todo_list.new
      todo_list.add("Buy milk")
      expect(todo_list.tasks).to eq "Todo list: Buy milk"
    end
  end

  context 'given a number of strings' do
    it 'adds each string to array and prints' do
      todo_list = Todo_list.new
      todo_list.add("Buy milk")
      todo_list.add("Post letter")
      expect(todo_list.tasks).to eq "Todo list: Buy milk, Post letter"
    end
  end

  describe '#completed_tasks' do
    context 'given a task entered by user' do
      it 'removes task from array' do
        todo_list = Todo_list.new
        todo_list.add("Buy milk")
        todo_list.completed_tasks("Buy milk")
        expect(todo_list.tasks).to eq "Todo list: "
      end
    end

    context 'given an empty string entered by user' do
      it 'returns array unchanged' do
        todo_list = Todo_list.new
        todo_list.add("Buy milk")
        todo_list.completed_tasks("")
        expect(todo_list.tasks).to eq "Todo list: Buy milk"
      end
    end

    context 'given no string entered by user' do
      it 'fails' do
        todo_list = Todo_list.new
        todo_list.add("Buy milk")
        expect{ todo_list.completed_tasks(nil) }.to raise_error "No tasks completed"
      end
    end
  end
end
