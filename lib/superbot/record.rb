require "superbot/record/chrome"

module Superbot
  module Record
    class Error < StandardError; end
  end
end

require_relative "record/version"
require_relative "record/cli"
