require 'rails_helper'

describe TodosController do
  describe '#create' do
    before { post :create, todo: todo, format: :json }
    context '必須パラメータを全て送った場合' do
      let(:todo) { {body: "drink beer", status: 1} }
      it '成功すること' do
        expect(response.status).to eq 201
      end
    end

    context 'bodyを送らないとき' do
      let(:todo) { {status: 1} }
      it 'エラーが起きること' do
        expect(response.status).to eq 400
      end
    end

    context 'statusに許容しない値を送るとき' do
      let(:todo) { {body: "drink beer", status: 10} }
      it 'エラーが起きること' do
        expect(response.status).to eq 400
      end
    end
  end
end
