require "/home/econtrer/Projects/sencillito/modyo-platform/config/environment.rb"

require "active_job"
require "support/job_buffer"
require "active_support"
require "active_job/core_ext/class/attribute"
require "active_job/core_ext/hash/transform_values"
require "active_job/core_ext/hash/keys"
require "active_job/core_ext/string/filters"

# GlobalID.app = "aj"

@adapter = ENV["AJ_ADAPTER"] || "inline"
puts "Using #{@adapter}"

if ENV["AJ_INTEGRATION_TESTS"]
  require "support/integration/helper"
else
  ActiveJob::Base.logger = Logger.new(nil)
  require "adapters/#{@adapter}"
end

require "minitest/autorun"
