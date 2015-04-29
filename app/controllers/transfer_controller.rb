class TransferController < ApplicationController
	respond_to :html, :xml

	def xml
		
		#url = URI.parse('https://www.ncdc.noaa.gov/swdiws/xml/warn/20150401:20151231')
		#http = Net::HTTP.new(url.host, url.port)
		#http.use_ssl = true

		#req = Net::HTTP::Get.new(url.request_uri)
		#req["token"] = "nPQjQSSBMYMlcNvdpEuVQnabTXXBKfcC"
		#@res = Net::HTTP.start(url.host, url.port) { http.request(req) }
		#render xml: @res.body
	end

	def csv
		url = URI.parse('http://www.spc.noaa.gov/products/outlook/day1otlk_wind.kml')
		http = Net::HTTP.new(url.host, url.port)
		http.use_ssl = false

		req = Net::HTTP::Get.new(url.request_uri)
		#req["token"] = "nPQjQSSBMYMlcNvdpEuVQnabTXXBKfcC"
		@res = Net::HTTP.start(url.host, url.port) { http.request(req) }
		render xml: @res.body
	end
end
