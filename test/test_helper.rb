# frozen_string_literal: true

require "bundler/setup"

require "minitest/autorun"
require "minitest/spec"
require "minitest/reporters"
require "mocha/minitest"

require "pry"

require "tinybird"

reporter_options = {color: true}
Minitest::Reporters.use! [Minitest::Reporters::DefaultReporter.new(reporter_options)]

module Kernel
  alias_method :context, :describe
end
