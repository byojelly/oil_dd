class Oil::Cli

  def call
    welcome
    list_deals
  end
  def welcome
    puts <<-DOC.gsub /^\s*/, ''
            Welcome to the oil price scraper.

            In this program we will load the prices of home heating oil companys in your area and display the lowest prices.
            Currently there are X number of oil companies we are looking at.

            They are:
            1 - Falcon - Location
            2 - Company - Location
            3 - Company - Location
            4 - Company - Location

            To find the lowest current price of oil type lowest into the terminal. Or, if you would like to know more information about one of the companies above please type in the corresponding reference number next to the company name.
         DOC
  end
  def list_deals
    @deals = Oil::DailyDeal.today

  end
end
