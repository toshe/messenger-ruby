require 'spec_helper'

module Messenger
  module Parameters
    describe AccountLinking do
      subject do
        described_class.new(status: 123, authorization_code: "xyz")
      end

      describe '#type' do
        it 'includes `account_linking`' do
          expect(subject.type).to include 'account_linking'
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
        it 'returns true' do
          expect(subject.account_linking?).to eq true
        end
      end

      describe '#read?' do
        it 'returns false' do
          expect(subject.read?).to eq false
        end
      end
    end
  end
end
