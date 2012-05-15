# OmniAuth Photobucket

A Photobucket strategy for OmniAuth 1.0.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'omniauth-photobucket'
```

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
    name:     'photbucket_username',
    nickname: 'photbucket_username',
    urls: {
      home: 'http://s1234.photobucket.com/albums/s123/photobucket_username',
      # You'll need to store this for some API calls
      api_subdomain: 'api1234.photobucket.com'
    }
  },
  credentials: {
    token:  'the_token',
    secret: 'the_secret'
  },
  extra: { 
    # check this out for a few other small things
    raw_info: raw_info_from_request
  }
}
```

