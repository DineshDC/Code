defmodule Factorial do
  def of(n), do: of(n,1)
  defp of(0,acc), do: acc
  defp of(n,acc), do: of(n-1,n*acc)
end

run_async =
  fn query -> spawn(fn -> IO.puts(Factorial.of(query)) end) end

1..5 |>
Enum.each(run_async)

