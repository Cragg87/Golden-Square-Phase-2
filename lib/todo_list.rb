require_relative '../lib/todo.rb'

class TodoList
  def initialize
    @todo_list = []
  end

  def add(todo) # todo is an instance of Todo
    @todo_list << todo
  end

  def incomplete
    @todo_list.select { |task| task.done? == false }
  end

  def complete
    @todo_list.select { |task| task.done? == true }
  end

  def give_up!
    @todo_list.map { |task| task.mark_done! }
  end
end