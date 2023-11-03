#  ------------------------
# |@               . sCCs  |
# |i                  CC   |
# |                  s  s  |
# |                        |
# |   .                    |
# |   .               .   >|
# |   .                    |
#  ------------------------

description "As you exit the castle, you see ... the great outdoors. Go on, explore, but be careful. Bandits have been setting traps around!"
tip "Use warrior.feel.deadly? to see if there is a trap in front of you."
clue "Make sure to check every step you take for traps."

time_bonus 20 #TODO: Refine
ace_score 19 #TODO: Refine
size 24, 7
stairs 23, 5

warrior 0, 0, :east

unit :informant, 1, 0, :east do |u|
  u.response = "Remember warrior, the King wants you to do something for him..."
end

unit :sludge, 19, 0, :west
unit :sludge, 22, 0, :east
unit :sludge, 19, 2, :south
unit :sludge, 22, 2, :south
unit :captive, 20, 0, :west
unit :captive, 21, 0, :east
unit :captive, 20, 1, :west
unit :captive, 21, 1, :east

unit :trap, 17, 0
unit :trap, 20, 5
unit :trap, 3, 4
unit :trap, 3, 5
unit :trap, 3, 6