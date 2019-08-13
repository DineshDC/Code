query_run =
  fn query ->
    Process.sleep(1000)
    "Q #{query}"
  end

async_spawn =
  fn query ->
   caller = self()
   spawn(fn ->
     send(caller , {:recive_result,query_run.(query)} )
   end
   )
end


Enum.each(1..5,&async_spawn.(&1))


async_result =
  fn ->
    receive do
      {:recive_result, result} ->
        result
    end

  end

  results = Enum.map(1..5, fn _ -> async_result.() end)
