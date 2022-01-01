# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Indices', type: :request do
  describe 'GET /' do
    it 'returns http success' do
      get '/?format=xml&array=3+5+25+64+125+25&number=6'
      expect(response).to have_http_status(:success)
    end

    it 'should respond with RSS' do
      get '/?format=xml&array=3+5+25+64+125+25&number=6'
      expect(response.content_type).to include('xml')
    end

    it 'returns correct result' do
      get '/?format=xml&array=3+5+25+64+125+25&number=6'
      expect(response.body).to include('<string>[[5, 25], [125, 25]]</string>')
      expect(response.body).to include('<string>[125, 25]</string>')
      expect(response.body).to include('<string>2</string>')
    end
  end
end
