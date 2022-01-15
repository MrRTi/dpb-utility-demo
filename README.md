# README

## Prepare

### Set Secrets

1. Copy `.env.example` into `.env`
1. Set your `post_server_item` token as `ROLLBAR_ACCESS_TOKEN` in `.env`

    Token could be found at
    `https://rollbar.com/YOUR_ACCOUNT/YOUR_PROJECT/settings/access_tokens/`

    where
    - `YOUR_ACCOUNT` - your Rollbar account name
    - `YOUR_PROJECT` - your project name in this account

1. Set `NEWRELIC_LICENSE_KEY` at `.env`
1. Set `COVERALLS_REPO_TOKEN` at `.env`

### Build

To build:

        make app-build

To create migrate and populate database:

        make app-init

Run app

        make app

## Github Actions

- [Documentation](https://docs.github.com/en/actions)

1. **TBD: Add actions**
1. **TBD: Add notes**

## [Rollbar](https://rollbar.com/)

- [Documentation](https://docs.rollbar.com/docs)

1. Set token in `.env`. Look [Prepare section](#prepare)
1. Send test error to Rollbar

        rake rollbar:test

1. Check errors at

   `https://rollbar.com/YOUR_ACCOUNT/all/items/`

   where
    - `YOUR_ACCOUNT` - your Rollbar account name

## Bullet

- [Github](https://github.com/flyerhzm/bullet)

1. **TBD: Add notes**

## [New relic](https://newrelic.com/)

- [Github](https://github.com/newrelic/newrelic-ruby-agent)

1. **TBD**

## Coverage

### SimpleCov

- [Github](https://github.com/simplecov-ruby/simplecov)

Look at `/coverage` directory for coverage report

### [Coveralls](https://coveralls.io)

- [Github](https://github.com/lemurheavy/coveralls-ruby)
- [Documention](https://docs.coveralls.io/ruby-and-rails)

Look at [CoverAlls site](https://coveralls.io/repos) for reports
