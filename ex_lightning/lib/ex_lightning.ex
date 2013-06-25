defmodule ExLightning do
  def do_run(collection) do
    me = self
    collection
    |>
      Enum.map(fn (elem) ->
        spawn fn -> (me <- {self, factorial(elem, 1)}) end
      end)
    |>
      Enum.map(fn (pid) ->
        receive do {^pid, result} -> result end
      end)
      :ok
  end

  defp factorial(n, acc) do
    case n do
      1 -> {}
      _ -> factorial(n-1, acc*n)
    end
  end
end
