module RubyWarrior
  module Abilities
    class Challenge < Base

      def description
        "Initiates a challenge between a queen bug and the warrior."
      end

      def perform(direction = :forward, question, acceptable_answers)
        verify_direction(direction)
        receiver = unit(direction)
        if receiver
          @unit.say "faces #{direction} and challenges #{receiver}"

          answer = request(question)
          if acceptable_answers.include?(answer.downcase)
            @unit.say "You are correct. Bye bye #{receiver}"
            # the Queen bug commits suicide after hearing this
            damage(@unit, @unit.max_health)
          else
            @unit.say "Nope. Try again"
            damage(receiver, @unit.attack_power)
          end
        end
      end

      def gets
        Config.in_stream ? Config.in_stream.gets : ''
      end

      def request(msg)
        print(msg)
        gets.chomp
      end
    end
  end
end
