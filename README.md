# Redirect from brian.rarevisions.net to cafecode.co

[![CircleCI](https://circleci.com/gh/winterchord/redirect_to_cafecode.svg?style=svg)](https://circleci.com/gh/winterchord/redirect_to_cafecode)

## Notice

This app is no longer in use. It's been replaced by a Cloudflare [Page Rule](https://support.cloudflare.com/hc/en-us/articles/218411427).

## Overview

This small app sits on https://brian.rarevisions.net. Every request sent to it
will respond with a HTTP 301 to https://cafecode.co.

## Development

Run tests with:

```sh
> rake
```

## Deployment

Commits to `master` are run through CI. If the tests pass, then the app is
automatically deployed via Heroku.
