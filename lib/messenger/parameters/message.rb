module Messenger
  module Parameters
    class Message
      include Callback

      attr_accessor :mid, :seq, :sticker_id, :text, :attachments, :is_echo, :app_id, :metadata

      def initialize(mid:, seq:, sticker_id: nil, text: nil, attachments: nil, is_echo: nil, app_id: nil, metadata: nil)
        @mid         = mid
        @seq         = seq
        @sticker_id  = sticker_id if sticker_id.present?
        @text        = text if text.present?
        @attachments = build_attachments(attachments) if attachments.present?
        @is_echo     = is_echo
        @app_id      = app_id
        @metadata    = metadata
      end

      def build_attachments(attachments)
        attachments.map { |attachment| Attachment.new(attachment.symbolize_keys.slice(:type, :payload)) }
      end
    end
  end
end
