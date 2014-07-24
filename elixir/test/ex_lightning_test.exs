Code.require_file "test_helper.exs", __DIR__

defmodule ExLightningTest do
  use ExUnit.Case

  test "computes factorials correctly" do
    upper_bound = 1000
    assert ExLightning.do_run(1..upper_bound) == :ok
  end
end
