class Oil::DailyDeal
attr_accessor :time, :name, :price, :location, :contact, :notes


  def self.today
  #  binding.pry
    puts "list of deals"
  end

#this will give a snapshot of deals as of today,
#later this should be stored in a class array to compare historical stats
  def self.todays_deals
    deals =[]
    deals << self.scrape_falcon
    deals << self.scrape_cashoilco
  end

  def self.scrape_falcon
    doc = Nokogiri::HTML(open("http://www.falconoil.net/"))
    deal = self.new
    deal.time = Time.new
    deal.name = doc.css("div.logo a").text
    price = doc.search("h2 span").text.strip.split.last.delete! "$"
    deal.price = price.to_f   #to_f means to float rather than to integer. to integer looses the decimal
    deal.location = "Oak Ridge, NJ" #hard coded as this webpage does not have the location. Local is on another page
    deal.contact = doc.css("div a").text.strip.split.last.delete! "Chart"
    deal.notes = doc.css("div.content h6").text.strip
  end
  def self.scrape_cashoilco
    doc = Nokogiri::HTML(open("https://www.cashoilco.com/"))
    deal = self.new
binding.pry
    deal.time = Time.new
    deal.name = "Cash Oil Co"
    #deal.price = doc.css("div.fusion-column-wrapper h2").text.split[3]
    #deal.location =
    #deal.contact =
    #deal.notes =

  end




end

# =>      ./bin/oil-prices
# =>      ./bin/console
# =>      n = Oil::DailyDeal.scrape_cashoilco
