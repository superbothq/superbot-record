# frozen_string_literal: true

module Superbot
  module Record
    module CLI
      class RootCommand < Clamp::Command
        if defined?(::Superbot::Record::Chrome::CLI::RootCommand)
          subcommand ['chrome'], "Open superbot chrome recorder", ::Superbot::Record::Chrome::CLI::RootCommand
        end

        option ['-v', '--version'], :flag, "Show version information" do
          puts Superbot::Record::VERSION
          exit 0
        end

        def self.run
          super
        rescue StandardError => exc
          warn exc.message
          warn exc.backtrace.join("\n")
        end
      end
    end
  end
end
