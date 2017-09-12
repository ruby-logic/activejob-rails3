class OverriddenLoggingJob < ActiveJob::Base
  def perform(dummy)
    logger.info "Dummy, here is it: #{dummy}"
  end

  def logger
    @logger ||= ActiveSupport::TaggedLogging.new(Logger.new(nil))
  end
end
