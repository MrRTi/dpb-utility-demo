
module CoverageHelper
  require 'simplecov'

  class << self
    def start!
      SimpleCov.formatters = formatters
      SimpleCov.start('rails') do
        enable_coverage(:branch)
        coverage_dir('public/coverage')
        setup_lcov_report if ENV['CI']
        add_filter %w[version.rb initializer.rb]
      end
    end

    def setup_lcov_report
      require 'simplecov-lcov'

      SimpleCov::Formatter::LcovFormatter.config do |c|
        c.report_with_single_file = true
        c.single_report_path = 'coverage/lcov.info'
      end

      formatter SimpleCov::Formatter::LcovFormatter
    end

    def formatters
      [
        SimpleCov::Formatter::HTMLFormatter,
      ]
    end
  end
end
