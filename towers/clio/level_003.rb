#  ------------------------
# |b                  b    |
# |    b                   |
# |           .            |
# |@          .        b   |
# |           .b           |
# |          b.            |
# |                      B>|
#  ------------------------

description "As you progress, you can't help but notice that things are changing around you. So many bugs..."
tip "No one likes bugs. Get rid of them if you can."
clue "The Queen is a terrific opponent. There is a way to defeat her without violence, if search deeply enough."

time_bonus 20 #TODO: Refine
ace_score 19 #TODO: Refine
size 24, 7
stairs 23, 6

warrior 0, 3, :east

unit :bug, 0, 0, :west do |u|
  u.log_message = "Win"
end
unit :bug, 19, 0, :south do |u|
  u.log_message = "Pizza is the best thing in life"
end
unit :bug, 4, 1, :west do |u|
  u.log_message = "Win"
end
unit :bug, 20, 3, :south
unit :bug, 12, 4, :east do |u|
  u.log_message = "And"
end
unit :bug, 10, 5, :west do |u|
  u.log_message = "Help"
end
unit :queen_bug, 22, 6, :west do |u|
  u.question = "What has the death of my children taught you?"
  u.acceptable_answers = ["Win and help win"]
end

unit :trap, 11, 2
unit :trap, 11, 3
unit :trap, 11, 4
unit :trap, 11, 5