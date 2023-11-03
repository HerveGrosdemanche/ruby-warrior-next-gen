#  -------
# |    .  |
# |@   G >|
# |    .  |
#  -------

description "The vacation castle is in sight, but it is guarded. That guard looks .... strong."
tip "The guard will only let you through if you have collected the survey data the King demands"

time_bonus 20 #TODO: Refine
ace_score 19 #TODO: Refine
size 7, 3
stairs 6, 1

warrior 0, 1, :east do |u|
  u.add_abilities :walk!, :feel, :direction_of_stairs, :talk!
end

unit :trap, 4, 0
unit :trap, 4, 2
unit :guard, 4, 1, :west do |u|
  u.success = "Well done, Warrior. The King will be pleased."
  u.failure = "Pathetic. This will not do, it won't do at all."
end
