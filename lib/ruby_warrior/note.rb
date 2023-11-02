require 'active_record'

module RubyWarrior
  class Note < ActiveRecord::Base
    establish_connection adapter: "sqlite3", database: "warriors/foobar.db"
    connection.create_table table_name, if_not_exists: true do |t|
      t.string :body
    end
  end
end
