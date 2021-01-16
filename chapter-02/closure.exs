message = "Hello, World!"

say_hello = fn ->
  Process.sleep(1000)
  IO.puts(message)
end

spawn(say_hello)
