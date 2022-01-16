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

### Build

To build:

        make app-build

To create migrate and populate database:

        make app-init

Run app

        make app

Go to [Site with example](http://localhost:3000)

## Github Actions

- [Documentation](https://docs.github.com/en/actions)

Workflow is set in `.github/workflows/main.yml` for `main` branch

Steps in actions:

1. Build app
2. Create and migrate database
3. Run rubocop
4. Run tests
5. Export artifacts for coverage
6. Upload coverage report to coveralls

## [Rollbar](https://rollbar.com/)

- [Documentation](https://docs.rollbar.com/docs)

1. Set token in `.env`. Look [Prepare section](#prepare)
1. Send test error to Rollbar

        rake rollbar:test

   or go to [Page what will return error](http://localhost:3000/errors)

1. Check errors at

   `https://rollbar.com/YOUR_ACCOUNT/all/items/`

   where
    - `YOUR_ACCOUNT` - your Rollbar account name

## Bullet

- [Github](https://github.com/flyerhzm/bullet)

- [Request with N+1](http://localhost:3000/actors_n_plus_one) `app/controllers/web/actors_n_plus_one_controller.rb`
- [Request without N+1](http://localhost:3000/actors) `app/controllers/web/actors_controller.rb`

## [New relic](https://newrelic.com/)

- [Github](https://github.com/newrelic/newrelic-ruby-agent)

1. Make several requests with and without N+1.
2. Look at dashboard in New Relic.

## Coverage

### SimpleCov

- [Github](https://github.com/simplecov-ruby/simplecov)

Look at `/coverage` directory for coverage report

### [Coveralls](https://coveralls.io)

- [Documention](https://docs.coveralls.io/ruby-and-rails)
- [Github Action](https://github.com/marketplace/actions/coveralls-github-action)

Look at [CoverAlls site](https://coveralls.io/repos) for reports
