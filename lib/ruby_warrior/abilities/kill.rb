require 'pp'

module RubyWarrior
  module Abilities
    class Kill < Base
      def description
        "Kills a unit at the given position"
      end

      def perform(receiver)
        @unit.say "kills #{receiver}"
        damage(receiver, @unit.attack_power)
      end
    end
  end
end
