require 'active_record'

module RubyWarrior
  class Note < ActiveRecord::Base
    establish_connection adapter: "sqlite3", database: "warriors/map_survey.db"
    connection.create_table :map_items, if_not_exists: true do |t|
      t.column :level_number, :int, limit: 3, :null => false
      t.column :type, :string, limit: 20, :null => false
      t.column :x, :int, limit:3, :null => false
      t.column :y, :int, limit:3, :null => false
    end
  end
end
