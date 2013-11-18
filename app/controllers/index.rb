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

get '/menus/:id' do
  @menu = Menu.find(params[:id])
  @items = Item.all
  erb :menus_show
end

get '/items' do
  @items = Item.all
  erb :items
end

post '/items' do
  Item.create(params)
  redirect '/items'
end

# post '/menus/:id/items' do

post '/menus/items' do
  menu_name = params[:menu_name]
  the_menu_record = Menu.where(name: menu_name)
  @menu_id = the_menu_record[0].id
  the_item_record = Item.find_by_id(params[:item_id])
  the_menu_record[0].items << the_item_record
  
  redirect "/menus/#{@menu_id}"
end

