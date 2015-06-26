module Shoutable
  require "nokogiri"
  require "open-uri"
  SHOUTKEY = "http://shoutkey.com/new?url="
  
  def shoutkey
    html = open(SHOUTKEY + self.url)
    doc = Nokogiri::HTML(html)
    doc.css(".hero-unit h1 a").text
  end
end