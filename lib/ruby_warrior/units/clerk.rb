module RubyWarrior
  module Units
    class Clerk < Base
      def initialize
        add_abilities :answer!
      end

      def play_turn(turn)
        # Update this so the clerk actually answers.
        # The warrior should initiate the convo
        [:forward, :left, :right, :backward].each do |direction|
          if turn.feel(direction).player?
            turn.attack!(direction)
            return
          end
        end
      end

      def attack_power
        0
      end

      def max_health
        1
      end

      def character
        "C"
      end
    end
  end
end
