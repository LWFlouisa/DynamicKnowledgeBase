def redapple
  redapple = File.read("lib/images/objects/redapple.txt").strip.to_s

  puts "\e[38;2;150;54;0m#{redapple}\e[0m"
end

def yellowapple
  yellowapple = File.read("lib/images/objects/yellowapple.txt").strip.to_s

  puts "\e[38;2;149;158;0m#{yellowapple}\e[0m"
end

def greenapple
  greenapple = File.read("lib/images/objects/greenapple.txt").strip.to_s

  puts "\e[38;2;0;158;65m#{greenapple}\e[0m"
end

fruit_facts = [
  "redapple", "yellowapple", "greenapple",
]

chosen_fruit_vector = File.read("lib/data/objects/fruit_vector.txt").strip.to_i

search_limit = fruit_facts.size.to_i

search_limit.times do
  current_fruit = fruit_facts[chosen_fruit_vector]

  if    "redapple"    == current_fruit;    redapple; sleep(1.5); system("swipl #{current_fruit}.pl")
  elsif "yellowapple" == current_fruit; yellowapple; sleep(1.5); system("swipl #{current_fruit}.pl")
  elsif "greenapple"  == current_fruit;  greenapple; sleep(1.5); system("swipl #{current_fruit}.pl")
  end
end
