defmodule CoverageTest.ValidationsTest do
  use ExUnit.Case

  test "run/1 with valid value" do
    assert {:ok, "Hello"} == CoverageTest.Validations.run("Hello")
  end

  test "run/1 with empty value" do
    assert {:error, "Value is empty"} == CoverageTest.Validations.run("")
  end

  test "run/1 with nil value" do
    assert {:error, "Value is empty"} == CoverageTest.Validations.run(nil)
  end

  test "run/1 with whitespace value" do
    assert {:error, "Value is empty"} == CoverageTest.Validations.run("   ")
  end

  test "run/1 with special characters" do
    assert {:ok, "!@#$%^&*()"} == CoverageTest.Validations.run("!@#$%^&*()")
  end

  test "run/1 with numbers" do
    assert {:ok, "1234567890"} == CoverageTest.Validations.run("1234567890")
  end

  test "run/1 with mixed characters" do
    assert {:ok, "Hello123!@#$%^&*()"} == CoverageTest.Validations.run("Hello123!@#$%^&*()")
  end
end
