defmodule ExLightning do
  def do_run(collection, fun) do
    me = self
    squares = collection
    |>
      Enum.map(fn (elem) ->
        spawn fn -> (me <- {self, fun.(elem)}) end
      end)
    |>
      Enum.map(fn (pid) ->
        receive do {^pid, result} -> result end
      end)
    squares
  end
end
