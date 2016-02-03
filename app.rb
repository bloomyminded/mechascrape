require 'sinatra'
require 'mechanize'

module Scrape
  def fetch_links url
    a = Mechanize.new
    a.get(url).links
  end
end

helpers Scrape

get '/' do
  erb :index
end

get '/fetch' do
  @links = fetch_links(params[:url])
  erb :scrape, layout: false
end
