module RubyWarrior
  module Units
    class Informant < Base
      attr_accessor :response

      def initialize
      end

      def play_turn(turn)
      end

      def attack_power
        0
      end

      def max_health
        1
      end

      def character
        "i"
      end

      def answers
        say response
      end
    end
  end
end
