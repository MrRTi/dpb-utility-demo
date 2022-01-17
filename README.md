# DPB Utility demo

[![Coverage Status](https://coveralls.io/repos/github/MrRTi/dpb-utility-demo/badge.svg?branch=main)](https://coveralls.io/github/MrRTi/dpb-utility-demo?branch=main)
[![Build Status](https://img.shields.io/endpoint.svg?url=https%3A%2F%2Factions-badge.atrox.dev%2FMrRTi%2Fdpb-utility-demo%2Fbadge%3Fref%3Dmain&style=popout)](https://actions-badge.atrox.dev/MrRTi/dpb-utility-demo/goto?ref=main)

## Prepare

### Set Variables

1. Copy `.env.example` into `.env`
1. Set your `post_server_item` token as `ROLLBAR_ACCESS_TOKEN` in `.env`

    Token could be found at
    `https://rollbar.com/YOUR_ACCOUNT/YOUR_PROJECT/settings/access_tokens/`

    where
    - `YOUR_ACCOUNT` - your Rollbar account name
    - `YOUR_PROJECT` - your project name in this account

1. Set `NEWRELIC_LICENSE_KEY` at `.env`

[Optional] You could also setup `GITHUB_USERNAME`, `GITHUB_REPOSITORY_NAME` and `ROLLBAR_PROJECT_NAME` to generate correct links at main page

### Build

To build:

        make app-build

To create migrate and populate database:

        make app-init

Run app

        make app

Go to demo-app [in English](http://localhost:3000/), [in Russian](http://localhost:3000/?locale=ru)

## Github Actions

- [Documentation](https://docs.github.com/en/actions)

Github actions config for `main` branch is located at `.github/workflows/main.yml`

Steps in actions:

1. Build app
2. Create and migrate database
3. Run rubocop
4. Run tests
5. Export artifacts for coverage
6. Upload coverage report to coveralls

## [Rollbar](https://rollbar.com/)

- [Documentation](https://docs.rollbar.com/docs)

Rollbar config for server side located at `config/initializers/rollbar.rb`

1. Set token in `.env`. Look [Prepare section](#prepare)
2. Send test error to Rollbar

        rake rollbar:test

   or go to [Page what will raise an error](http://localhost:3000/errors)

3. Check errors at

   `https://rollbar.com/YOUR_ACCOUNT/all/items/`

   where
    - `YOUR_ACCOUNT` - your Rollbar account name

## Bullet

- [Github](https://github.com/flyerhzm/bullet)

Bullet config located at `config/environments/development.rb`

- [Request with N+1](http://localhost:3000/actors_n_plus_one) `app/controllers/web/actors_n_plus_one_controller.rb`
- [Request without N+1](http://localhost:3000/actors) `app/controllers/web/actors_controller.rb`

## [New relic](https://newrelic.com/)

- [Github](https://github.com/newrelic/newrelic-ruby-agent)

New relic config is located at `config/newrelic.yml`

1. Make several requests with and without N+1.
2. Look at dashboard in New Relic.

## Coverage

- Coverage folder should be added into `.gitignore`
- Generate coverage at CI or at demand

### SimpleCov

- [Github](https://github.com/simplecov-ruby/simplecov)

SimpleCov config is located at `test/coverage_helper.rb`

Look at `/coverage` directory for coverage report if coverage folder is default. In this project coverage folder is set to 'public/coverage`

### [Coveralls](https://coveralls.io)

- [Documention](https://docs.coveralls.io/ruby-and-rails)
- [Github Action](https://github.com/marketplace/actions/coveralls-github-action)

Look at [Coveralls site](https://coveralls.io/repos) for reports
