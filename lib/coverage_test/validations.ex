defmodule CoverageTest.Validations do
  @moduledoc """
   This module contains the validations for the application.
  """

  @doc """
  Runs a validation on the given value.

  ## Examples

      iex> CoverageTest.Validations.run("Hello")
      {:ok, "Hello"}

      iex> CoverageTest.Validations.run("")
      {:error, "Value is empty"}

      iex> CoverageTest.Validations.run(nil)
      {:error, "Value is empty"}

      iex> CoverageTest.Validations.run("   ")
      {:error, "Value is empty"}

  """
  @spec run(String.t() | nil) :: {:ok, String.t()} | {:error, String.t()}
  def run(value) do
    if is_nil(value) or String.trim(value) == "" do
      {:error, "Value is empty"}
    else
      {:ok, value}
    end
  end
end
