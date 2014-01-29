require 'json'
require 'open-uri'

class AccountsController < ApplicationController
  def show
    @api_key = params[:api_key]
    @request = open("https://pool.dogechain.info/index.php?page=api&action=getuserstatus&api_key=#{ @api_key }").read
    @json = JSON.parse @request
    @json = @json["getuserstatus"]["data"]
  end
end
