require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    @name=params[:name]
    @name.reverse
  end

  get '/square/:number' do 
    @square=params[:number]
    @square=@square.to_i*@square.to_i
    @square.to_s
  end

  get '/say/:number/:phrase' do 
    @num=params[:number].to_i
    @phrase=params[:phrase]
    (@phrase+"\n")*@num
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do 
    params[:word1]+" "+params[:word2]+" "+params[:word3]+ " "+ params[:word4]+" "+ params[:word5]+"."
  end 

  get '/:operation/:number1/:number2' do
    "#{params[:number1].to_i.send(params[:operation], params[:number2].to_i) }"
  end



end