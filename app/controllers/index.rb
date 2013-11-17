
get '/' do
  # Look in app/views/index.erb
  erb :index
end

get '/menus' do
  erb :index
  p "Yumilicious Dinner Menu"
end

get '/menus/new' do
  erb :menus_new
end

post '/menus/new' do
  p params
  Menu.create(params)
  redirect '/menus'
end
