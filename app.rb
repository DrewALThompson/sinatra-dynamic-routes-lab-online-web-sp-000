require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do
    @name = params[:name]
    "#{@name.reverse}"
  end
  
  get '/square/:number' do
    @number = params[:number]
    "#{@number.to_i**2}"
  end
  
  get '/say/:word%31/:word%32/:word%33/:word%34/:word%35' do 
    @word1 = params[:word%31]
    @word2 = params[:word%32]
    @word3 = params[:word%33]
    @word4 = params[:word%34]
    @word5 = params[:word%35]
    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}"
  end

end