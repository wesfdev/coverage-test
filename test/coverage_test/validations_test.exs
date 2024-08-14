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

  test "is_valid_int/1 with valid integer string" do
    assert {:ok, 42} == CoverageTest.Validations.is_valid_int("42")
  end

  test "is_valid_int/1 with invalid integer string" do
    assert {:error, "Value is not an integer"} == CoverageTest.Validations.is_valid_int("abc")
  end

  test "is_valid_int/1 with empty string" do
    assert {:error, "Value is not an integer"} == CoverageTest.Validations.is_valid_int("")
  end

  test "is_valid_int/1 with nil value" do
    assert {:error, "Value is not an integer"} == CoverageTest.Validations.is_valid_int(nil)
  end

  test "is_valid_int/1 with whitespace string" do
    assert {:error, "Value is not an integer"} == CoverageTest.Validations.is_valid_int("   ")
  end

  test "is_valid_int/1 with negative integer string" do
    assert {:ok, -42} == CoverageTest.Validations.is_valid_int("-42")
  end

  test "is_valid_int/1 with leading zeros" do
    assert {:ok, 0042} == CoverageTest.Validations.is_valid_int("0042")
  end

  test "is_valid_int/1 with large integer string" do
    assert {:ok, 9_223_372_036_854_775_807} ==
             CoverageTest.Validations.is_valid_int("9223372036854775807")
  end

  test "is_valid_int/1 with integer string with decimal point" do
    assert {:ok, 42} == CoverageTest.Validations.is_valid_int("42.5")
  end

  test "is_valid_int/1 with integer string with leading plus sign" do
    assert {:ok, 42} == CoverageTest.Validations.is_valid_int("+42")
  end

  test "is_valid_boolean/1 with valid boolean string" do
    assert {:ok, true} == CoverageTest.Validations.is_valid_boolean("true")
  end

  test "is_valid_boolean/1 with invalid boolean string" do
    assert {:error, "Value is not a boolean"} == CoverageTest.Validations.is_valid_boolean("abc")
  end

  test "is_valid_boolean/1 with empty string" do
    assert {:error, "Value is not a boolean"} == CoverageTest.Validations.is_valid_boolean("")
  end

  test "is_valid_boolean/1 with nil value" do
    assert {:error, "Value is not a boolean"} == CoverageTest.Validations.is_valid_boolean(nil)
  end

  # test "is_valid_boolean/1 with whitespace string" do
  #   assert {:error, "Value is not a boolean"} == CoverageTest.Validations.is_valid_boolean("   ")
  # end

  # test "is_valid_boolean/1 with case-insensitive strings" do
  #   assert {:ok, true} == CoverageTest.Validations.is_valid_boolean("TRUE")
  #   assert {:ok, false} == CoverageTest.Validations.is_valid_boolean("FALSE")
  # end
end
