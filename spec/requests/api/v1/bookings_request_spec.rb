require 'rails_helper'

RSpec.describe 'Bookings', type: :request do
  let!(:space) { FactoryBot.create :space }
  let!(:bookings) { FactoryBot.create_list :booking, 3, space: space }

  it 'returns bookings' do
    get '/api/v1/bookings'
    expect(response.content_type).to eq 'application/json'
    expected_response = { bookings: bookings, spaces: [space] }.to_json
    expect(response.body).to eq expected_response
    expect(response).to have_http_status :ok
  end
end
