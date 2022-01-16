# frozen_string_literal: true
GITHUB_USERNAME = ENV.fetch('GITHUB_USERNAME') { 'fake_name' }
GITHUB_REPOSITORY_NAME = ENV.fetch('GITHUB_REPOSITORY_NAME') { 'fake_repo' }
ROLLBAR_PROJECT_NAME = ENV.fetch('ROLLBAR_PROJECT_NAME') { 'fake' }

module Web
  class HomeController < Web::ApplicationController
    helper_method :actions_link, :rollbar_link, :coveralls_link

    def show

      @new_relic_dashboard='https://one.eu.newrelic.com/launcher/'
    end

    private

    def github_repo_url_part
      "#{GITHUB_USERNAME}/#{GITHUB_REPOSITORY_NAME}"
    end

    def actions_link
      "https://github.com/#{github_repo_url_part}/actions"
    end

    def rollbar_link
      "https://rollbar.com/#{ROLLBAR_PROJECT_NAME}/all/items/"
    end

    def coveralls_link
      "https://coveralls.io/github/#{github_repo_url_part}"
    end
  end
end
