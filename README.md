# Okta <> Devise Integration

Simple POC to show how to connect Okta to Devise Gem

## Installation

First, Pull the code and create Database

``` rake db:create ```

Next, Migrate Database

``` rake db:migrate ```

## Add Okta configuration in application.yml


```
OKTA_CLIENT_ID: "YOUR-CLIENT-ID"
OKTA_CLIENT_SECRET: "YOUR-CLIENT-SECRET"
OKTA_ORG: "YOUR-OKTA-ORG"
OKTA_DOMAIN: "oktapreview"
OKTA_URL: "YOUR-OKTA-ORG-URL"
OKTA_ISSUER: "YOUR-OKTA-ISSUER-URL"
OKTA_AUTH_SERVER_ID: "YOUR-AUTH-SERVER-ID"
OKTA_REDIRECT_URI: "http://localhost:3000/users/auth/oktaoauth/callback"

```

## Start Rails Server

``` localhost: 3000 ```