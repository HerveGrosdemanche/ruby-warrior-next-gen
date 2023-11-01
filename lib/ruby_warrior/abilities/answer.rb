module RubyWarrior
  module Abilities
    class Answer < Base
      attr_accessor :response

      def description
        "Allows a clerk to share information if talked to."
      end

      def perform(direction = :forward)
        #TODO
        puts response
      end
    end
  end
end
