module Testcloud
  module Billing
    class Authentication < Faraday::Middleware

      def initialize(app, options={})
        @app = app
        @options = options
      end

      def call(env)
        env[:request_headers]["X-Testcloud-Token"] = @options[:api_key]
        @app.call(env)
      end

    end
  end
end
