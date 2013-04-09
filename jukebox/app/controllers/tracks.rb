Jukebox::App.controllers :tracks do
  
  # get :index, :map => '/foo/bar' do
  #   session[:foo] = 'bar'
  #   render 'index'
  # end

  # get :sample, :map => '/sample/url', :provides => [:any, :js] do
  #   case content_type
  #     when :js then ...
  #     else ...
  # end

  # get :foo, :with => :id do
  #   'Maps to url '/foo/#{params[:id]}''
  # end

  # get '/example' do
  #   'Hello world!'
  # end
  
  get :play do
    render 'tracks/play'
  end

  get :index do
    @songs = Track.new
    render 'tracks/index'
  end

  post :search do

    #Tried calling this from the model, result: NoMethodError, cheated a bit here.  
    client = Soundcloud.new(:client_id => 'a6efaa9c5cc3dd3790f3adbfdd332df1')
    @tracks =  client.get('/tracks', :q => "#{params[:id]}")

    render 'tracks/index' 



  end

end
