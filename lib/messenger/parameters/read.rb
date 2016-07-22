module Messenger
  module Parameters
    class Read
      include Callback

      attr_accessor :watermark, :seq

      def initialize(watermark:, seq:)
        @watermark = watermark
        @seq       = seq
      end
    end
  end
end
