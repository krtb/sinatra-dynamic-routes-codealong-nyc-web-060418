require_relative 'config/environment'
class App < Sinatra::Base

  # This is a sample static route.
  get '/hello' do
    "Hello World!"
  end

  # This is a sample dynamic route.
  get "/hello/:name" do
  # : added in front of name becase we will eventually need to capture input from the user.
  # need to know who they want to say hello to
  # several way to get this information, easiest is built right into the url
  # at the top of the browser
  # Dynamic Routing - allows us to take input straight from the URL instead of
  # from a form
    @user_name = params[:name]
    "Hello #{@user_name}!"
  end

  # Code your final two routes here:
  get '/goodbye/:name' do
    @user_name = params[:name]
    "Goodbye, #{@user_name}."
  end

  get '/multiply/:num1/:num2' do
    @num1 = params[:num1].to_i
    @num2 = params[:num2].to_i
    product = @num1 * @num2
    "#{product}"
  end
end

# HOW DYNAMIC ROUTES WORK
