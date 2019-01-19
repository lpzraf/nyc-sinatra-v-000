require "pry"
class LandmarksController < ApplicationController
    
  get '/landmarks/new' do
     @titles = Title.all
     @landmarks = Landmark.all
    erb :'landmarks/new'
  end
  
  post '/landmarks' do
     @landmark = Landmark.create(params[:landmark])
     @landmark.save

    redirect "landmarks/#{@landmark.id}"
   end
  
end
