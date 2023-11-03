module RubyWarrior
  module Units
    class Bug < Base
      attr_accessor :log_message
      def initialize
        add_abilities :feel
      end

      def play_turn(turn)
        [:forward, :left, :right, :backward].each do |direction|
          if turn.feel(direction).player?
            puts "Buzzzz"
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
        "b"
      end
    end
  end
end
