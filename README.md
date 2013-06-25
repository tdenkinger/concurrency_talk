This is an example I put together for a lightning talk given for my colleagues.

The goal is to show how Elixir stacks up against Ruby and to show the similarities and differences. Originally I wrote a simple test where you could pass in a function/lambda to the respective modules along with a range. The problem was that I was using a function that just squared the numbers and Ruby consistently ran faster than Elixir. I was spawning processes for each call of the square function in Elixir.

It finally dawned on me that the reason Elixir ran so slowly is that there is overhead in spawning processes that was more expensive than just running through a million numbers and squaring them in Ruby. Clearly I needed something that was more processor intensive for this demo.

So, I decided on factorials instead and that worked better. Ruby still is faster for ranges of 1 to about 1000, but after that Elixir's power kicks in and you see a huge difference. Additionally, at 10,000 Ruby blew the stack, which Elixir won't due to tail call optimization. Elixir finished 1..10000 in about 2 minutes on my Quad-core MacBook Pro. Ruby blew the stack at about 5 minutes.


