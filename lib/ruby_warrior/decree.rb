require 'active_record'

module RubyWarrior
  class Decree < ActiveRecord::Base
    establish_connection adapter: "sqlite3", database: "warriors/foobar.db"
    connection.create_table table_name, force: true do |t|
      t.string :body
    end
  end
end
