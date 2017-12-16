require 'rails_helper'

describe "post a cat route", :type => :request do

  before do
    post '/api/v1/cats', params: { :name => "Henry", :breed => "Maine Coon"}
  end

  it "returns the cat name" do
    expect(JSON.parse(response.body)['name']).to eq('Henry')
  end

  it "returns the cat breed" do
    expect(JSON.parse(response.body)['breed']).to eq('Maine Coon')
  end

  it "returns a created status" do
    expect(response).to have_http_status(:created)
  end

  it "returns nil when cat name is blank" do
    post '/api/v1/cats', params: { :name => "", :breed => "Maine Coone"}
    expect(JSON.parse(response.body)['name']).to eq(nil)
  end

  it "returns nil when breed is blank" do
    post '/api/v1/cats', params: { :name => "Henry", :breed => ""}
    expect(JSON.parse(response.body)['breed']).to eq(nil)
  end

  it "returns an error when content is blank" do
    post '/api/v1/cats', params: { :name => "", :breed => "Maine Coone"}
    expect(response).to have_http_status(:unprocessable_entity)
  end
end

end
