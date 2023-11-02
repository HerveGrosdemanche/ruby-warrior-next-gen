module RubyWarrior
  module Abilities
    class Log < Base
      def description
        "Writes to logs (info by default)."
      end

      def perform(message, level = :info)
        RubyWarrior::Logger.new.send(level, message)
      end
    end
  end
end

