defmodule FibTest do
  use ExUnit.Case

  test "computes factorials correctly" do
    upper_bound = 1000
    assert Fib.run(1..upper_bound) == :ok
  end
end
