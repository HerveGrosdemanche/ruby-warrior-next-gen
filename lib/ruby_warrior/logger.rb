require 'forwardable'
require 'logger'

module RubyWarrior
  class Logger
    extend Forwardable

    def_delegators :@logger, :unknown, :fatal, :error, :warn, :info, :debug

    def initialize
      @logger = @@logger
    end

    def self.configure_logging(path)
      FileUtils.rm_rf(path)
      @@logger = ::Logger.new(path)
    end
  end
end
