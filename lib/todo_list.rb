require_relative '../lib/todo.rb'

class TodoList
  def initialize
    @todo_list = []
    @completed_tasks = []
  end

  def add(todo) # todo is an instance of Todo
    @todo_list << todo
  end

  def incomplete
    @todo_list
  end

  def complete
    @todo_list.each do |task|
      if task.done?
        @completed_tasks << task.task
        @todo_list.delete(task.task)
      end
    end
    @completed_tasks
  end

  def give_up!
    # Marks all todos as complete
  end
end