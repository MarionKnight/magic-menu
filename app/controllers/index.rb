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

get '/items' do
  @items = Item.all
  erb :items
end

post '/items' do
  Item.create(params)
  redirect '/items'
end


# Views: 
# /menus/new: create a new menu
# /menus/:menu_id: display a particular menu
# /items: display the items that can be on menus
