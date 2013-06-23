Code.require_file "test_helper.exs", __DIR__

defmodule ExLightningTest do
  use ExUnit.Case

  test "make sure we have all the elements we expect" do
    assert ExLightning.do_run(1..1000000, &1 * &1) |> Enum.reverse |> Enum.first  == 1000000*1000000
  end
end
