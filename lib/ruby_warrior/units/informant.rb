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

      def answer
        say response
        flee
        response
      end

      def flee
        say "flees after giving info"
        @position = nil
      end
    end
  end
end
