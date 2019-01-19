class FiguresController < ApplicationController
  
  get '/figures/new' do
    
    erb :'figures/new'
  end
  
    post '/figures' do
    @figure = Figure.create(params[:figure])
     if !params["title"]["name"].empty?
      @figure.titles << Title.create(name: params["title"]["name"])
    end
    redirect "figures/#{@figure.id}"
   end
  
  
end
