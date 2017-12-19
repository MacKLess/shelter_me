require 'rails_helper'

describe 'delete cat route', type: :request do
  let!(:cat) { FactoryBot.create(:cat) }

  before do
    delete "/api/v1/cats/#{cat.id}"
  end

  it 'returns blank when cat is removed from database' do
    expect(Cat.all).to eq([])
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end
end
