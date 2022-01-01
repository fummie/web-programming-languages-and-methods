# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Indices', type: :request do
  describe 'GET /index' do
    it do
      get '/index/output?array=3+5+25+64+125+25&number=6'
      expect(response).to have_http_status(:ok)
      expect(response.body).to include('<tr>
        <td>последовательности</td>
        <td>[[5, 25], [125, 25]]</td>
      </tr>')
      expect(response.body).to include('<tr>
        <td>максимальная последовательность</td>
        <td>[125, 25]</td>
      </tr>')
      expect(response.body).to include('<tr>
        <td>количество последовательностей</td>
        <td>2</td>
      </tr>')
    end
    it do
      get '/index/output?array=3+46+22+176&number=5'
      expect(response).to have_http_status(:ok)
      expect(response.body).to include('<h1>последовательностей не найдено</h1>')
    end
  end
end
