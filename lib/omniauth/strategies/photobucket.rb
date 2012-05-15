# require 'omniauth/photobucket/version'
require 'omniauth-oauth'

module OmniAuth
  module Strategies
    class Photobucket < OmniAuth::Strategies::OAuth
      option :name, 'photobucket'

      option :client_options, {
        :site               => 'http://api.photobucket.com',
        :authorize_url      => 'http://photobucket.com/apilogin/login',
        :request_token_path => '/login/request',
        :access_token_path  => '/login/access'
      }

      uid { raw_info[:username] }

      info do
        {
          'username' => raw_info[:username],
          'url'      => raw_info[:homeurl]
        }
      end

      extra do
        raw_info
      end

      def raw_info
        access_token.params
      end
    end
  end
end
