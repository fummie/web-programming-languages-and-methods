# frozen_string_literal: true

require 'uri'
require 'cgi'
require 'net/http'
require 'nokogiri'

require_relative '../data/api_key'

# Wolfram class is making use out of wolframalpha api
class Wolfram
  def self.roots(expression)
    encoded_expression = CGI.escape(expression)
    uri = URI("http://api.wolframalpha.com/v2/query?input=#{encoded_expression}&appid=#{API_KEY}")
    res = Net::HTTP.get_response(uri)

    raise res.message unless res.is_a?(Net::HTTPSuccess)

    page = Nokogiri::XML(res.body)
    raise page.search('msg').text if page.css('queryresult')[0]['error'] == 'true'

    pod = page.css('pod[title="Root"]')
    pod += page.css('pod[title="Roots"]')
    pod += page.css('pod[title="Real root"]')
    pod += page.css('pod[title="Real roots"]')
    pod += page.css('pod[title="Complex root"]')
    pod += page.css('pod[title="Complex roots"]')
    roots = pod.search('plaintext').map(&:text)
    roots.map { |root| root.delete(' ').delete('x').delete('=').delete('≈') }
  end
end
