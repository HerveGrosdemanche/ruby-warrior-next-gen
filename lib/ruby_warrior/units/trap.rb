module RubyWarrior
  module Units
    class Trap < Base
      def initialize
        add_abilities :kill!
      end

      def play_turn(turn)
        # find the warrior
        warrior = position.floor.units.select { |u| u.kind_of? Units::Warrior}.first

        turn.kill!(warrior) if self.position.location == warrior.position.location
      end

      def attack_power
        99
      end

      def max_health
        99
      end

      def character
        " "
      end
    end
  end
end
