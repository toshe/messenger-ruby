module Messenger
  module Parameters
    class Message
      include Callback

      attr_accessor :mid, :seq, :sticker_id, :text, :attachments

      def initialize(mid:, seq:, sticker_id: nil, text: nil, attachments: nil)
        @mid         = mid
        @seq         = seq
        @sticker_id  = sticker_id if sticker_id.present?
        @text        = text if text.present?
        @attachments = build_attachments(attachments) if attachments.present?
      end

      def build_attachments(attachments)
        attachments.map { |attachment| Attachment.new(attachment.symbolize_keys) }
      end
    end
  end
end
