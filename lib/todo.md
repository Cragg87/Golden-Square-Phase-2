1. Describe the Problem
As a user
So that I can keep track of my tasks
I want a program that I can add todo tasks to and see a list of them.

As a user
So that I can focus on tasks to complete
I want to mark tasks as complete and have them disappear from the list.

2. Design the Class Interface
class Todo_list
  def initialize
    @todo_list = Array.new
  end

  def add(task) # task is a string
  # Throws an exception if no task is set
  # Otherwise, pushes task to @todo_list array
  end

  def tasks
  # returns @todo_list as a string
  end

  def completed_tasks(user_input)
    # takes user input and deletes corresponding item from array
  end
end

3. Create Examples as Tests

# 1
todo_list = Todo_list
todo_list.add("Buy milk")
todo_list.tasks # => "Todo list: 1. Buy milk"

# 2
todo_list = Todo_list
todo_list.add("Buy milk")
todo_list.add("Post letter")
todo_list.tasks # => "Todo list: Buy milk, Post letter"

# 3
todo_list = Todo_list
todo_list.add() # fails with "No task set."

# 4
todo_list = Todo_list
todo_list.add("")
todo_list.tasks # => "Todo list:"
                     "1. "

# 5
todo_list = Todo_list
todo_list.add("Buy milk")
todo_list.tasks => "Todo list: Buy milk"
todo_list.completed_tasks("Buy milk")
todo_list.tasks => "Todo list: "

# 6
todo_list = Todo_list
todo_list.add("Buy milk")
todo_list.tasks => "Todo list: Buy milk"
todo_list.completed_tasks("")
todo_lists.tasks => "Todo list: Buy milk"

# 7
todo_list = Todo_list
todo_list.add("Buy milk")
todo_list.tasks => "Todo list: Buy milk"
todo_list.completed_tasks(nil) fails with "No tasks completed"