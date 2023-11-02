#  ---
# |@ >|
#  ---

description "TODO"
tip "TODO"

time_bonus 20 #TODO: Refine
ace_score 19 #TODO: Refine
size 3, 1
stairs 2, 0

warrior 0, 0, :east do |u|
  u.add_abilities :walk!, :feel, :direction_of_stairs, :talk!
end
