#  -------
# |    .  |
# |@   g >|
# |    .  |
#  -------

description "The vacation castle is in sight, but it is guarded. That guard looks .... strong."
tip <<-TEXT
The guard will only let you through if you have collected the survey data the King demands. 
The guard will want to look at your records, so you better write them with ActiveRecord.

Lucky for you, the King has provided you with a template, that you can see in the .db file
TEXT

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
