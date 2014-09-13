require 'her'

module Testcloud
  module Billing

    HER = Her::API.new
    DEFAULT_URL = 'https://bapi.testcloud.io'

    def self.setup(options={})
      options[:url] ||= DEFAULT_URL
      HER.setup url: options[:url] do |c|
        # Authentication
        c.use Testcloud::Billing::Authentication, api_key: options[:api_key]
        # Request
        c.use Faraday::Request::UrlEncoded
        # Response
        c.use Her::Middleware::DefaultParseJSON
        # Adapter
        c.use Faraday::Adapter::NetHttp
      end
    end

  end
end
