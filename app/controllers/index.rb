get '/' do
  erb :index
end

get '/menus' do
  erb :index
end

get '/menus/new' do
  @menus = Menu.all
  erb :menus_new
end

post '/menus/new' do
  Menu.create(params)
  redirect '/menus/new'
end
