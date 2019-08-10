class LandmarksController < ApplicationController
  # add controller methods
  get '/landmarks' do
    @landmarks = Landmark.all
    erb :'/landmarks/index'
  end

   get '/landmarks/new' do
    erb :'/landmarks/new'
  end

   post '/landmarks' do
    @landmark = Landmark.new(params[:landmark])
    @landmark.save
    redirect to "landmarks/#{@landmark.id}"
  end

   get '/landmarks/:id/edit' do
    @landmark = Landmark.find(params[:id])
    erb :'/landmarks/edit'
  end

   get '/landmarks/:id' do
    @landmark = Landmark.find(params[:id])
    erb :'/landmarks/show'
  end

   post '/landmarks/:id' do
    landmark=Landmark.find(params[:id])
    landmark.update(params[:landmark])
    redirect to "landmarks/#{landmark.id}"
  end
end
