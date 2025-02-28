knowledge_bases = [
  "object", "subject", "verb"
]

chosen_knowledge_base = File.read("lib/data/knowledgebase/choice.txt").strip.to_i

search_limit = knowledge_bases.size.to_i

search_limit.times do
  if chosen_knowledge_base > 2
    puts "I've reached the limits of my knowledge."

    abort
  end

  current_knowledge = knowledge_bases[chosen_knowledge_base]

  system("swipl #{current_knowledge}.pl")

  chosen_knowledge_base = chosen_knowledge_base + 1
end
