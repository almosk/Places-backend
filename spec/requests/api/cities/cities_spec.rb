require 'spec_helper'

describe 'GET /cities/:id' do
  it 'returns a city by :id' do
    city = create(:city)

    get "/cities/#{city.id}"

    expect(response_json).to eq(
      {
        'title' => city.title,
        'id' => city.id
      }
    )
  end
end
