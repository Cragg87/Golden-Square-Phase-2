class Todo_list
  def initialize
    @todo_list = Array.new
  end

  def add(task) # task is a string
    fail "No task set" if task == nil
    @todo_list << task
  end

  def tasks
  # returns @todo_list as a string
  "Todo list: #{@todo_list.join(", ")}"
  end

  def completed_tasks(user_input)
    fail "No tasks completed" if user_input == nil
    @todo_list.delete(user_input)
  end
end