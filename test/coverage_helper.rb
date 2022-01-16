# frozen_string_literal: true

module CoverageHelper
  require 'simplecov'
  require 'simplecov-lcov'

  class << self
    def start!
      setup_lcov_formatter

      SimpleCov.start('rails') do
        enable_coverage(:branch)
        coverage_dir('public/coverage')
        formatter(SimpleCov::Formatter::MultiFormatter.new(formats))
      end
    end

    def setup_lcov_formatter
      SimpleCov::Formatter::LcovFormatter.config do |c|
        c.report_with_single_file = true
        c.single_report_path = 'public/coverage/lcov.info'
      end
    end

    def formats
      [
        SimpleCov::Formatter::LcovFormatter,
        SimpleCov::Formatter::HTMLFormatter
      ]
    end
  end
end
