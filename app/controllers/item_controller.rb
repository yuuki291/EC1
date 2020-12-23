class ItemController < ApplicationController


  def pay
    Payjp.api_key = ENV["PAYJP_SECRET_KEY"]
    Payjp::Charge.create(
      :amount => @cart.total_price,
      :card => params['payjp-token'],
      :currency => 'jpy'
    )
  end
  
  
end
