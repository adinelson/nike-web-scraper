

class NikeScraperController < ApplicationController
  def index
    @items = NikeScraperHelper.scrape
  end
end
