# README

## Prepare

1. Copy `.env.example` into `.env`
1. Set your `post_server_item` token as `ROLLBAR_ACCESS_TOKEN` in `.env`

    Token could be found at
    `https://rollbar.com/YOUR_ACCOUNT/YOUR_PROJECT/settings/access_tokens/`

    where
    - `YOUR_ACCOUNT` - your Rollbar account name
    - `YOUR_PROJECT` - your project name in this account


1. Set `COVERALLS_REPO_TOKEN` at `.env`


## Github Actions

- [Documentation](https://docs.github.com/en/actions)

1. **TBD**

## Rollbar

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

1. **TBD**

## New relic

1. **TBD**

## Coverage

### SimpleCov

- [Github](https://github.com/simplecov-ruby/simplecov)

Look at `/coverage` directory for coverage report

### Coveralls

- [Github](https://github.com/lemurheavy/coveralls-ruby)
- [Documention](https://docs.coveralls.io/ruby-and-rails)

Look at [CoverAlls site](https://coveralls.io/repos) for reports
