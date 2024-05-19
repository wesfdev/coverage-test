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

  @doc """
  Validates if a given value is a valid integer.

  ## Examples

      iex> CoverageTest.Validations.is_valid_int("42")
      {:ok, 42}

      iex> CoverageTest.Validations.is_valid_int("abc")
      {:error, "Value is not an integer"}

      iex> CoverageTest.Validations.is_valid_int("42.5")
      {:error, "Value is not an integer"}

      iex> CoverageTest.Validations.is_valid_int(nil)
      {:error, "Value is not an integer"}

  """
  @spec is_valid_int(String.t() | nil) :: {:ok, integer()} | {:error, String.t()}
  def is_valid_int(value) do
    case value do
      nil ->
        {:error, "Value is not an integer"}

      _ ->
        case Integer.parse(value) do
          {int, _} -> {:ok, int}
          _ -> {:error, "Value is not an integer"}
        end
    end
  end

  @spec is_valid_boolean(String.t() | nil) :: {:ok, boolean()} | {:error, String.t()}
  def is_valid_boolean(value) do
    case value do
      nil ->
        {:error, "Value is not a boolean"}

      _ ->
        case value do
          "true" -> {:ok, true}
          "false" -> {:ok, false}
          _ -> {:error, "Value is not a boolean"}
        end
    end
  end
end
