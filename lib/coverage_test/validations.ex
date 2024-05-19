defmodule CoverageTest.Validations do
  @spec run(String.t()) :: {:ok, String.t()} | {:error, String.t()}
  def run(value) do
    if String.length(value) > 0 do
      {:ok, value}
    else
      {:error, "Value is empty"}
    end
  end
end
