#  ------------
# |@           |
# |         i  |
# |            |
# |           >|
# |     i      |
# |            |
# |            |
#  ------------

description 'As {warrior name} reaches out to take the princess\' hand, a trumpet fanfare starts, right by the giant doors at the end of the room.\n'\
'Slowly, the doors open, as a small but very angry man enters the room.\n'\
'"I say! No, don\'t you dare take her hand! You\'ve got the wrong princess!"\n'\
'Dumbfounded, {warrior name} holds his hand awkwardly in the air, and gently whispers: "Who\'s that?"\n'\
'Princess Ruby replies in a whisper: "That\'s daddy. You know, the King."\n'\

'Finally, the King reaches them. "Don\'t stay with your hand up like that, you look like an idiot"\n'\
'"When I sent the message out that my daughter needed to be rescued by a brave warrior, I meant my other daughter, Clio"\n'\
'"She\'s in our vacation castle, or so I heard."\n'\
'"And by the way, what do you think you did in my castle? Why did you go and murder all our poor guards and informants? Explain yourself!"\n'\
'After a few seconds of painful silence, the King resumes\n'\
'"Oh Lord, another one of these mute warriors. I\'ll assume you are just confused, and in warrior fashion you considered anything not wearing a dress as a threat."\n'\
'"Fine, to redeem yourself you can go ahead and save my Clio. She\'s not here, so there\'s no point in killing anyone else in the castle."\n'\
'"But on your way out, do me a favor. I need a survey of the kingdom done. See my informant out there for the details."\n'\
'He then leaves the room.\n'
tip "Use warrior.talk to (maybe) get useful information from informants"

time_bonus 20 #TODO: Refine
ace_score 19 #TODO: Refine
size 12, 7
stairs 11, 3

warrior 0, 0, :east do |u|
  u.add_abilities :walk!, :feel, :direction_of_stairs, :talk!
end

unit :informant, 8, 1, :west do |u|
  u.response = "I am but a humble potato"
end
unit :informant, 5, 4, :west do |u|
  u.response = "Greetings warrior. The King has requested a survey of the kingdom. You should visit every square of the following levels, and take notes of what you encounter."
end