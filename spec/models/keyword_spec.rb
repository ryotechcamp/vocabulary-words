require 'rails_helper'

RSpec.describe Keyword, type: :model do
  before do
    @keyword = FactoryBot.build(:keyword)
  end

  describe 'keyword投稿情報' do
    it '全てのデータがあれば保存できる' do
      expect(@keyword).to be_valid
    end
    it 'ユーザー情報に紐ついていない場合、登録できない' do
      @keyword.user = nil
      @keyword.valid?
      expect(@keyword.errors.full_messages).to include("User must exist")
    end
    it 'wordが空だと投稿できない' do
      @keyword.word = ''
      @keyword.valid?
      expect(@keyword.errors.full_messages).to include("Word can't be blank")
    end
    it 'instructionが空だと投稿できない' do
      @keyword.instruction = ''
      @keyword.valid?
      expect(@keyword.errors.full_messages).to include("Instruction can't be blank")
    end
    it 'ジャンルが「--」だと投稿できない' do
      @keyword.genre_id = 1
      @keyword.valid?
      expect(@keyword.errors.full_messages).to include("Genre can't be blank")
    end

  end
end
