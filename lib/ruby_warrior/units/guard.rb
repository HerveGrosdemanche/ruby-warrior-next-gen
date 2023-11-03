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
            grade = check_notes
            passing_grade = 0.75
            if grade >= passing_grade
              say success
              @position = nil
            else
              say "Your grade was #{grade.round(2)}, but you needed #{passing_grade} to pass."
              say failure
            end
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

      def check_notes
        expected_notes = [
          RubyWarrior::Note.new(level_number: 1, unit_type: "informant", x: 8, y: 1),
          RubyWarrior::Note.new(level_number: 1, unit_type: "informant", x: 5, y: 4),
          RubyWarrior::Note.new(level_number: 2, unit_type: "sludge", x: 19, y: 0),
          RubyWarrior::Note.new(level_number: 2, unit_type: "sludge", x: 22, y: 0),
          RubyWarrior::Note.new(level_number: 2, unit_type: "sludge", x: 19, y: 2),
          RubyWarrior::Note.new(level_number: 2, unit_type: "sludge", x: 22, y: 2),
          RubyWarrior::Note.new(level_number: 2, unit_type: "captive", x: 20, y: 0),
          RubyWarrior::Note.new(level_number: 2, unit_type: "captive", x: 21, y: 0),
          RubyWarrior::Note.new(level_number: 2, unit_type: "captive", x: 20, y: 1),
          RubyWarrior::Note.new(level_number: 2, unit_type: "captive", x: 21, y: 1),
          RubyWarrior::Note.new(level_number: 2, unit_type: "trap", x: 17, y: 0),
          RubyWarrior::Note.new(level_number: 2, unit_type: "trap", x: 20, y: 5),
          RubyWarrior::Note.new(level_number: 2, unit_type: "trap", x: 3, y: 4),
          RubyWarrior::Note.new(level_number: 2, unit_type: "trap", x: 3, y: 5),
          RubyWarrior::Note.new(level_number: 2, unit_type: "trap", x: 3, y: 6),
          RubyWarrior::Note.new(level_number: 3, unit_type: "bug", x: 0, y: 0),
          RubyWarrior::Note.new(level_number: 3, unit_type: "bug", x: 19, y: 0),
          RubyWarrior::Note.new(level_number: 3, unit_type: "bug", x: 4, y: 1),
          RubyWarrior::Note.new(level_number: 3, unit_type: "bug", x: 20, y: 3),
          RubyWarrior::Note.new(level_number: 3, unit_type: "bug", x: 12, y: 4),
          RubyWarrior::Note.new(level_number: 3, unit_type: "bug", x: 10, y: 5),
          RubyWarrior::Note.new(level_number: 3, unit_type: "queen_bug", x: 22, y: 6),
          RubyWarrior::Note.new(level_number: 3, unit_type: "trap", x: 11, y: 2),
          RubyWarrior::Note.new(level_number: 3, unit_type: "trap", x: 11, y: 3),
          RubyWarrior::Note.new(level_number: 3, unit_type: "trap", x: 11, y: 4),
          RubyWarrior::Note.new(level_number: 3, unit_type: "trap", x: 11, y: 5),
          RubyWarrior::Note.new(level_number: 3, unit_type: "trap", x: 23, y: 5),
          RubyWarrior::Note.new(level_number: 3, unit_type: "informant", x: 0, y: 6),
          RubyWarrior::Note.new(level_number: 4, unit_type: "trap", x: 4, y: 0),
          RubyWarrior::Note.new(level_number: 4, unit_type: "trap", x: 4, y: 2),
          RubyWarrior::Note.new(level_number: 4, unit_type: "guard", x: 4, y: 1),
        ]

        player_notes = RubyWarrior::Note.all

        grading_factor = 1.0
        # if we get more notes than expected, we'll just set it to 0.8, because we're not that mean but it matters that we're getting too much info
        grading_factor = 0.8 if player_notes.length > expected_notes.length
        matching_notes = 0

        expected_notes.each do |note|
          player_notes.each do |player_note|
            if player_note.level_number == note.level_number && player_note.unit_type == note.unit_type && player_note.x == note.x && player_note.y == note.y
              matching_notes += 1
              break
            end
          end
        end
        (matching_notes.to_f / expected_notes.length.to_f) * grading_factor
      end
    end
  end
end
