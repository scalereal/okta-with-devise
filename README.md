# Okta <> Devise Integration

Simple POC to show how to connect Okta to Devise Gem

## Installation


1. First pull the code, install ruby `2.3.8` and run `bundle install`
2. Copy configs
```
cp config/database.yml.example config/database.yml
cp config/application.yml.example config/application.yml
```

Create and migrate database
```
rake db:create
rake db:migrate
```

## Change Okta configuration in config/application.yml

```
OKTA_CLIENT_ID: "YOUR-CLIENT-ID"
OKTA_CLIENT_SECRET: "YOUR-CLIENT-SECRET"
OKTA_DOMAIN: "oktapreview"
OKTA_URL: "YOUR-OKTA-ORG-URL"
OKTA_ISSUER: "YOUR-OKTA-ISSUER-URL"
OKTA_AUTH_SERVER_ID: "YOUR-AUTH-SERVER-ID"
OKTA_REDIRECT_URI: "http://localhost:3000/users/auth/oktaoauth/callback"
```

## Start Rails Server 
`rails s`

Open link: [http://localhost:3000](http://localhost:3000)
