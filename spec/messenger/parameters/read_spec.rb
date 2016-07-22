require 'spec_helper'

module Messenger
  module Parameters
    describe Read do
      subject do
        described_class.new(watermark: "abc", seq: 10)
      end

      describe '#type' do
        it 'includes `read`' do
          expect(subject.type).to include 'read'
        end
      end

      describe '#delivery?' do
        it 'returns false' do
          expect(subject.delivery?).to eq false
        end
      end

      describe '#message?' do
        it 'returns false' do
          expect(subject.message?).to eq false
        end
      end

      describe '#optin?' do
        it 'returns false' do
          expect(subject.optin?).to eq false
        end
      end

      describe '#postback?' do
        it 'returns false' do
          expect(subject.postback?).to eq false
        end
      end

      describe '#account_linking?' do
        it 'returns false' do
          expect(subject.account_linking?).to eq false
        end
      end

      describe '#read?' do
        it 'returns true' do
          expect(subject.read?).to eq true
        end
      end
    end
  end
end
