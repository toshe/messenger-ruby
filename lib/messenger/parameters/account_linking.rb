module Messenger
  module Parameters
    class AccountLinking
      include Callback

      attr_accessor :status, :authorization_code

      def initialize(status:, authorization_code: nil)
        @status             = status
        @authorization_code = authorization_code
      end
    end
  end
end
