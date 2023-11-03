module RubyWarrior
  module Units
    class Guard < Base
      attr_accessor :success, :failure
      def initialize
        add_abilities :attack!, :feel
      end

      def play_turn(turn)
        [:forward, :left, :right, :backward].each do |direction|
          if turn.feel(direction).player?
            # TODO: Add the ActiveRecord check here

            # This should happen only if the ActiveRecord check fails, and the guard's health goes down by half
            turn.attack!(direction) if health < max_health / 2
            return
          end
        end
      end

      # Just for fun, I'm putting these super high values.
      # If a warrior tries to brute force, I'll let the guard get hit to half-life, then deliver a single
      # hit that will kill the warrior.
      def attack_power
        100
      end

      def max_health
        100000
      end

      def character
        "g"
      end
    end
  end
end
