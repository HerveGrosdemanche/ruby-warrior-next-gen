module RubyWarrior
  module Units
    class QueenBug < Base
      attr_accessor :question, :acceptable_answers
      def initialize
        add_abilities :challenge!, :feel
      end

      def play_turn(turn)
        [:forward, :left, :right, :backward].each do |direction|
          if turn.feel(direction).player?
            turn.challenge!(direction, question, acceptable_answers.map(&:downcase))
            return
          end
        end
      end

      def attack_power
        5
      end

      def max_health
        100
      end

      def character
        "B"
      end
    end
  end
end
