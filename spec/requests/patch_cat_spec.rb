require 'rails_helper'

describe 'cat patch route', :type => :request do
  let!(:cat) { FactoryBot.create(:cat) }

  before do
    patch "/api/v1/cats/#{cat.id}", params: { :name => "Victoria" }
  end

  it 'updates cat name' do
    expect(Cat.find(cat.id).name).to eq("Victoria")
  end

  before do
    patch "/api/v1/cats/#{cat.id}", params: { :breed => "Abyssinian" }
  end

  it 'updates cat breed' do
    expect(Cat.find(cat.id).breed).to eq("Abyssinian")
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end

  it 'returns an error when content is blank' do
    post '/api/v1/cats', params: { :name => "", :breed => "Maine Coon" }
    expect(response).to have_http_status(:unprocessable_entity)
  end
end
