class TransferController < ApplicationController
	require 'net/http'

	def returnXML(link)
		url = URI.parse(link)
		http = Net::HTTP.new(url.host, url.port)
		req = Net::HTTP::Get.new(url.request_uri)
		res = Net::HTTP.start(url.host, url.port) { http.request(req) }

		return res.body
	end

	def day1ConvectiveWind
		body = returnXML('http://www.spc.noaa.gov/products/outlook/day1otlk_wind.kml')
		render :xml => body
	end

	def day1ConvectiveTornado
		body = returnXML('http://www.spc.noaa.gov/products/outlook/day1otlk_torn.kml')
		render :xml => body
	end

	def day1ConvectiveHail
		body = returnXML('http://www.spc.noaa.gov/products/outlook/day1otlk_hail.kml')
		render :xml => body
	end

	def day1ConvectiveCat
		body = returnXML('http://www.spc.noaa.gov/products/outlook/day1otlk_cat.kml')
		render :xml => body
	end

	def day2ConvectiveCat
		body = returnXML('http://www.spc.noaa.gov/products/outlook/day2otlk_cat.kml')
		render :xml => body
	end

	def day3ConvectiveCat
		body = returnXML('http://www.spc.noaa.gov/products/outlook/day3otlk_cat.kml')
		render :xml => body
	end

	def day2ConvectiveProb
		body = returnXML('http://www.spc.noaa.gov/products/outlook/day2otlk_prob.kml')
		render :xml => body
	end

	def day3ConvectiveProb
		body = returnXML('http://www.spc.noaa.gov/products/outlook/day3otlk_prob.kml')
		render :xml => body
	end
end
