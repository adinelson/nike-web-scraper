module NikeScraperHelper
  def self.scrape
    url = "https://store.nike.com/us/en_us/pw/mens-lifestyle-shoes/7puZoneZoi3"
    unparsed_page = HTTParty.get(url)
    parsed_page = Nokogiri::HTML(unparsed_page)
    products = parsed_page.css('div.grid-item-content')
    return products.map do |product|
      item = {
        name: product.css('p.product-display-name').text,
        type: product.css('p.product-subtitle').text,
        price: product.css('span.local').text
      }
    end
  end
end
