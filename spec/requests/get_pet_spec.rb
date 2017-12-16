require 'rails_helper'

describe "get all cats routes", :type => :request do
  let!(:cats) { FactoryBot.create_list(:cat, 100)}

  before { get '/api/v1/cats'}

  it "returns all cats" do
    expect(JSON.parse(response.body).size).to eq(100)
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end
end 
