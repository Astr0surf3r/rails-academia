module ApplicationHelper

#require 'unirest'

def convert(pesos)

pesos = pesos.to_f

response = Unirest.get "https://community-bitcointy.p.mashape.com/coinbase/MXN",
  headers:{
    "X-Mashape-Key" => "aduqvtfCGsmshdDcjDzjqoJhgNLKp1GEf8ijsnSWJRhnbQXjrE",
    "Accept" => "text/plain"
  }

rate = response.body["value"].to_f

@BTC = (pesos/rate).round(2)

end

end
