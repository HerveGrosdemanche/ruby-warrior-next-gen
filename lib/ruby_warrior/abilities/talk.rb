module RubyWarrior
  module Abilities
    class Talk < Base
      def description
        "Initiates a conversation between the warrior and an informant."
      end

      def perform(direction = :forward)
        verify_direction(direction)
        receiver = unit(direction)
        if receiver
          @unit.say "faces #{direction} and talks to #{receiver}"
          if receiver.character == "i"
            receiver.answers
          else
            @unit.say "but #{receiver} says nothing"
          end
        else
          @unit.say "faces #{direction} and talks to nothing"
        end
      end
    end
  end
end
