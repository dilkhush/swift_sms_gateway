require "http"
require_relative "errors"

module SwiftSmsGateway
  class Message

    BASE_URL = "https://secure.smsgateway.ca/services"

    def initialize(account_key)
      @account_key = account_key
    end

    def create(params)
      url = "#{BASE_URL}/message.svc/#{@account_key}/#{params[:to]}"
      @response = HTTP.post(url, { json: {MessageBody: params[:body]} } )
      send_response
    end

    def send_response
      case @response.code
      when 200, 201, 204
        JSON.parse(@response)
      else
        raise SwiftSmsGatewayError, @response
      end
    end
  end
end