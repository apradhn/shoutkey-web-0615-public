require_relative 'shoutable'

class Link
  attr_reader :url
  include Shoutable

  def initialize(url)
    @url = url
  end
end