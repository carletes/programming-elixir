prefix = fn p ->
  fn q -> "#{p} #{q}" end
end

mrs = prefix.("Mrs")
IO.puts mrs.("Smith")
IO.puts prefix.("Elixir").("Rocks")
