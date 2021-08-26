require 'rails_helper'

RSpec.describe Test, type: :model do
  before do
    @test = FactoryBot.build(:test)
  end

  describe 'テスト結果' do
      it 'userが紐付いていないと保存できない' do
        @test.user = nil
        @test.valid?
        expect(@test.errors.full_messages).to include('User must exist')
      end
      it 'keywordが紐付いていないと保存できない' do
        @test.keyword = nil
        @test.valid?
        expect(@test.errors.full_messages).to include('Keyword must exist')
      end
  end
end
