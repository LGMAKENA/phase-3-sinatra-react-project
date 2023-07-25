class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'

  use Rack::JSONBodyParser
  
  
    get '/friends' do
      # headers 'Access-Control-Allow-Origin' => '*' 
      Friend.friend_balances_with_avatars.to_json
    end

    post '/friends' do
      # headers 'Access-Control-Allow-Origin' => '*' 
      friend = Friend.create(full_name: params[:full_name],avatar: params[:avatar])
      friend.to_json
    end

    get '/bills' do
      bills = Bill.all
      bills.to_json
    end

    post '/bills' do
      bill = Bill.create(bill_date: params[:bill_date],friend_id: params[:friend_id],bill_amount: params[:bill_amount],
                  amount_paid: params[:amount_paid],who_paid: params[:who_paid], balance: params[:balance], comment: '')
      bill.to_json
    end

    get '/friends/:id' do
      friend_bills = Bill.find_by(friend_id: params[:id])
      friend_bills.to_json
    end

    delete '/friends/:id' do
      friend = Friend.find(params[:id])
      friend.destroy
      friend.to_json
    end 

    delete '/bills/:id' do
      bill = Bill.find(params[:id])
      bill.destroy
      bill.to_json
    end 
    

end
