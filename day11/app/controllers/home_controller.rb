class HomeController < ApplicationController
	def index
		@contacts = Contact.all
	end
end
