get '/' do
  # Look in app/views/index.erb
  erb :index
end

post '/create_user' do
  p params
  @user = User.new(params[:user])
  if @user.save
    erb :user_profile
  else
    redirect to '/'
  end
end
