class LandmarksController < ApplicationController
    
  get '/landmarks/new' do
    
    erb :'landmarks/new'
  end
  
    post '/figures' do
    @landmark = Landmark.create(params[:landmark])
     if !params["landmark"]["name"].empty?
      @landmark.landmarks << Landmark.create(name: params["landmark"]["name"])
    end
    redirect "figures/#{@landmark.id}"
   end
  
end
