defmodule Greeting do
  def name(%{name: per_name} = person) do
    IO.puts("Hello " <> per_name)
    IO.inspect(person)
  end
end

defmodule Greeting2 do
  def names(names) when is_list(names) do
    names
    |> Enum.join(", ")
    |> hello
  end

  def hello(name) when is_binary(name) do
    "hello " <> name
  end
end

fred = %{name: "fread", age: 52, contry: "US"}
Greeting.name(fred)

defmodule Circle do
  @pi 3.14159
  @spec area(number) :: number
  def area(r), do: r * r * @pi

  @spec circumference(number) :: number
  def circumference(r), do: 2 * r * @pi
end


