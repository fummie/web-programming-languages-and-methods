XML_SERVER = 'http://localhost:3000/?format=xml'
XSL_LINK = "\n<?xml-stylesheet href=\"/visualizer.xsl\" type=\"text/xsl\"?>\n"
XSLT = Nokogiri::XSLT(File.read('public/visualizer.xsl').gsub(%r{<rm>(.*)</rm>}, '<rm>server-side</rm>'))

class IndexController < ApplicationController
  def input; end

  def get_xml(array, number)
    uri = URI(XML_SERVER)
    uri.query = URI.encode_www_form({ array: array, number: number })
    Net::HTTP.get_response(uri)
  end

  def render_client(xml)
    xml.insert(xml.index("\n"), XSL_LINK)
  end

  def render_server(xml)
    XSLT.transform(Nokogiri::XML(xml))
        .to_s
        .html_safe
  end

  def output
    xml = get_xml(params[:array], params[:number]).body
    respond_to do |format|
      format.xml { render xml: render_client(xml) }
      format.html { render html: render_server(xml) }
    end
  end
end