class AppannieController < ApplicationController
	require 'rubygems'
	require 'nokogiri'
	require 'open-uri'

	def index
		# web_data = open('http://www.appannie.com/apps/ios/app/facebook/')
		# doc = Nokogiri.HTML(web_data)
		# @achievements = doc.xpath("//td[@class='count']")

		web_data = open('https://itunes.apple.com/us/app/facebook-messenger/id454638411?mt=8')
		doc = Nokogiri.HTML(web_data)
		@achievements = doc.xpath("//div[@class='rating']//span[@class='rating-count']")
	end

end
