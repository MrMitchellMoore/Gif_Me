# frozen_string_literal: true

if Rails.env.development?
  require "rack-mini-profiler"

  Rack::MiniProfiler.config.start_hidden = true
  Rack::MiniProfilerRails.initialize!(Rails.application)
end
