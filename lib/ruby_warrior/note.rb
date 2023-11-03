require 'active_record'

module RubyWarrior
  class Note < ActiveRecord::Base
    enum unit_type: ["archer", "bug", "captive" "guard", "informant", "queen_bug", "sludge", "thick_sludge", "trap"]
    establish_connection adapter: "sqlite3", database: "warriors/map_survey.db"
    connection.create_table :notes, if_not_exists: true do |t|
      t.column :level_number, :int, limit: 3, :null => false
      t.column :unit_type, :unit_type, :null => false
      t.column :x, :int, limit:3, :null => false
      t.column :y, :int, limit:3, :null => false
    end
  end
end
