require 'rails_helper'

RSpec.describe 'Bookings', type: :request do
  let!(:space) { FactoryBot.create :space }
  let!(:booking) { FactoryBot.create :booking, space: space }

  it 'returns bookings' do
    get '/api/v1/bookings'
    expect(response.content_type).to eq 'application/json'
    expected_response = {
      bookings:
        [
          {
            id: booking.id,
            description: booking.description,
            start_date: booking.start_date.strftime('%d-%m-%Y'),
            end_date: booking.end_date.strftime('%d-%m-%Y'),
            space_id: space.id
          }
        ],
      spaces: [space]
    }.to_json
    expect(response.body).to eq expected_response
    expect(response).to have_http_status :ok
  end
end
