def evaluate_village
  horizontal_walls = [
   "#######", "### ###", "# ### #",
  ]

  verticle_walls   = [
   "#M....#", "#.M...#",
   "#..M..#", "#...M.#",
   "#....M#", "#.....#",
  ]

  top_wall    = horizontal_walls.sample
  bottom_wall = horizontal_walls.sample

  floor_first_row  = verticle_walls.sample
  floor_second_row = verticle_walls.sample
  floor_third_row  = verticle_walls.sample
  floor_fourth_row = verticle_walls.sample
  floor_fifth_row  = verticle_walls.sample

  puts top_wall
  puts floor_first_row
  puts floor_second_row
  puts floor_third_row
  puts floor_fourth_row
  puts floor_fifth_row
  puts bottom_wall

  puts " "

  sleep(1.5)
end

def evaluate_forest
  horizontal_walls = [
   "QQQQQQQ", "QQQ QQQ", "Q QQQ Q",
  ]

  verticle_walls   = [
   "QM....Q", "Q.M...Q",
   "Q..M..Q", "Q...M.Q",
   "Q....MQ", "Q.....Q",
  ]

  top_wall    = horizontal_walls.sample
  bottom_wall = horizontal_walls.sample

  floor_first_row  = verticle_walls.sample
  floor_second_row = verticle_walls.sample
  floor_third_row  = verticle_walls.sample
  floor_fourth_row = verticle_walls.sample
  floor_fifth_row  = verticle_walls.sample

  puts top_wall
  puts floor_first_row
  puts floor_second_row
  puts floor_third_row
  puts floor_fourth_row
  puts floor_fifth_row
  puts bottom_wall

  puts " "

  sleep(1.5)
end

def evaluate_catecombs
  horizontal_walls = [
   "XXXXXXX", "XXX XXX", "X XXX X",
  ]

  verticle_walls   = [
   "XS....X", "X.S...X",
   "X..S..X", "X...S.X",
   "X....SX", "X.....X",
   "Xs....X", "X.s...X",
   "X..s..X", "X...s.X",
   "X....sX", "X.....X",
  ]

  top_wall    = horizontal_walls.sample
  bottom_wall = horizontal_walls.sample

  floor_first_row  = verticle_walls.sample
  floor_second_row = verticle_walls.sample
  floor_third_row  = verticle_walls.sample
  floor_fourth_row = verticle_walls.sample
  floor_fifth_row  = verticle_walls.sample

  puts top_wall
  puts floor_first_row
  puts floor_second_row
  puts floor_third_row
  puts floor_fourth_row
  puts floor_fifth_row
  puts bottom_wall

  puts " "

  sleep(1.5)
end

def evaluate_cavern
  horizontal_walls = [
   "VVVVVVV", "VVV VVV", "V VVV V",
  ]

  verticle_walls   = [
   "VB....V", "V.B...V",
   "V..B..V", "V...B.V",
   "V....BV", "V.....V",
   "Vb....V", "V.b...V",
   "V..b..V", "V...b.V",
   "V....sV", "V.....V",
  ]

  top_wall    = horizontal_walls.sample
  bottom_wall = horizontal_walls.sample

  floor_first_row  = verticle_walls.sample
  floor_second_row = verticle_walls.sample
  floor_third_row  = verticle_walls.sample
  floor_fourth_row = verticle_walls.sample
  floor_fifth_row  = verticle_walls.sample

  puts top_wall
  puts floor_first_row
  puts floor_second_row
  puts floor_third_row
  puts floor_fourth_row
  puts floor_fifth_row
  puts bottom_wall

  puts " "

  sleep(1.5)
end

def evaluate_tombekashi
  horizontal_walls = [
   "TTTTTTT", "TTT TTT", "T TTT T",
  ]

  verticle_walls   = [
   "T{}...T", "T.{}..T",
   "T..{}.T", "T..{}.T",
   "T...{}T", "T.....T",
   "TB....T", "T.B...T",
   "T..B..T", "T...B.T",
   "T....BT", "T.....T",
  ]

  top_wall    = horizontal_walls.sample
  bottom_wall = horizontal_walls.sample

  floor_first_row  = verticle_walls.sample
  floor_second_row = verticle_walls.sample
  floor_third_row  = verticle_walls.sample
  floor_fourth_row = verticle_walls.sample
  floor_fifth_row  = verticle_walls.sample

  puts top_wall
  puts floor_first_row
  puts floor_second_row
  puts floor_third_row
  puts floor_fourth_row
  puts floor_fifth_row
  puts bottom_wall

  puts " "

  sleep(1.5)
end

knowledge_bases = [
  "village", "forest",     "catecombs",
  "cavern",  "tombekashi",
]

world_knowledge_vector = File.read("lib/data/world/knowledge_vector.txt").strip.to_i

evaluation_limit = knowledge_bases.size.to_i

evaluation_limit.times do
  current_evaluation = knowledge_bases[world_knowledge_vector]

  if    "village"    == current_evaluation;    evaluate_village; system("swipl _knowledgebases/#{current_evaluation}.pl")
  elsif "forest"     == current_evaluation;     evaluate_forest; system("swipl _knowledgebases/#{current_evaluation}.pl")
  elsif "catecombs"  == current_evaluation;  evaluate_catecombs; system("swipl _knowledgebases/#{current_evaluation}.pl")
  elsif "cavern"     == current_evaluation;     evaluate_cavern; system("swipl _knowledgebases/#{current_evaluation}.pl")
  elsif "tombekashi" == current_evaluation; evaluate_tombekashi; system("swipl _knowledgebases/#{current_evaluation}.pl")
  end
end
