class SearchController < ApplicationController
  
  def search
    require 'itunes'
    require 'json'

      @itunes = ITunes::Client.new
      if params[:q].nil?
        @songs = []
      else 
        @songs = @itunes.music(params[:q], :limit => 0)
        @artist_name = @itunes.music(params[:q], :limit => 1)
  end
end
end
