template "/tmp/demo.txt" do
  variables :partials => {
    "one.txt.erb" => "hack the planet",
    "two.txt.erb" => "deep thought",
    "three.txt.erb" => "Thanks Andrea!"
  },
  :top_level => "I'm a variable from the template resource"
end

ruby_block "view result" do
  block do
    puts IO.read "/tmp/demo.txt"
  end
end
