defmodule CoverageTest do
  @moduledoc """
  CoverageTest keeps the contexts that define your domain
  and business logic.

  Contexts are also responsible for managing your data, regardless
  if it comes from the database, an external API or others.
  """

  def hello do
    IO.puts("Hello, worlddsdsdsdsdaadsad!")
  end

  def test do
    test = 1
    IO.puts("test, world!: #{inspect(test)}")
  end

  def test_a do
    test = 1
    IO.puts("test, worldewqe!: #{inspect(test)}")
  end

  def test_b do
    test = 1
    IO.puts("test, world!: #{inspect(test)}.")
  end
end
