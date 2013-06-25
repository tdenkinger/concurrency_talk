Code.require_file "test_helper.exs", __DIR__

defmodule ExLightningTest do
  use ExUnit.Case

  test "computes factorials correctly" do
    assert ExLightning.do_run(1..2000) == :ok
  end
end
