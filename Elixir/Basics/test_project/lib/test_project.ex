defmodule TestProject do
  @moduledoc """
  Documentation for TestProject.
  """

  @doc """
  Hello world.

  ## Examples

      iex> TestProject.hello()
      :world

  """
  def hello do
    :world
  end
end

defmodule Geometry do
  def area({:rectangle, a, b}) do
    a * b
  end

  def area({:square, a}) do
    a * a
  end

  def area({:circle, r}) do
    r * r * 3.14
  end

  def area(unknown) do
    {:error, {:unknown_shape, unknown}}
  end
end

