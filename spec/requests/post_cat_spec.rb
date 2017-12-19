require 'rails_helper'

describe 'cat post route', :type => :request do

  before do
    post "/api/v1/cats", params: { :name => 'Henry', :breed => "Maine Coon" }
  end

  it 'returns name of cat' do
    expect(JSON.parse(response.body)['name']).to eq('Henry')
  end

  it 'returns the breed of cat' do
    expect(JSON.parse(response.body)['breed']).to eq('Maine Coon')
  end

  it 'returns created status' do
    expect(response).to have_http_status(:created)
  end

end
