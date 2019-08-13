defmodule TodoList do
  def new(), do: %{}

  def append(todo_list,date,title) do
    Map.update(
      todo_list,
      date,
      [title],
      fn titles -> [title | titles] end
    )
  end

  def entries(todo_list, date) do
    Map.get(todo_list, date, [])
  end

end

todo_list =
  TodoList.new() |>
  TodoList.append(~D[2018-12-19], "Dentist") |>
  TodoList.append(~D[2018-12-20], "Shopping") |>
  TodoList.append(~D[2018-12-19], "Movies") |>
  TodoList.append(~D[2018-12-19], "Movies")

[x | tail] = TodoList.entries(todo_list,~D[2018-12-19])
# IO.puts(x)
# IO.puts(tail)


