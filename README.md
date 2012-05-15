# OmniAuth Photobucket

A Photobucket strategy for OmniAuth 1.0.

## Installation

Add this line to your application's Gemfile:

    gem 'omniauth-photobucket'

And then run `bundle`.

## Usage

```ruby
use OmniAuth::Builder do
  provider 'photobucket', PHOTOBUCKET_KEY, PHOTOBUCKET_SECRET
end

# or in your devise config:
config.omniauth :photobucket, PHOTOBUCKET_KEY, PHOTOBUCKET_SECRET
```

## Auth Hash Schema

The following information is provided back to you for this provider:

```ruby
{
  provider: 'photobucket',
  uid: 'photobucket_username',
  info: {
    username: 'photbucket_username',
    url: 'http://s1234.photobucket.com/albums/s123/photobucket_username'
  },
  credentials: {
    token: 'the_token',
    secret: 'the_secret'
  },
  extra: { 
    # check this out for a few other small things
    access_token: raw_oauth_access_token_object
  }
}
```

