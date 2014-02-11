# class ChargeController < ApplicationController

# 	def index
# 	end

# 	def new
# 	end

# 	def create
# 	   cvbcvc # Amount in cents
# 	  @amount = 1000

# 	  customer = Stripe::Customer.create(
# 	    :email => params[:stripeEmail],
# 	    :card  => params[:stripeToken]
# 	  )

# 	  charge = Stripe::Charge.create(
# 	    :customer    => customer.id,
# 	    :amount      => @amount,
# 	    :description => 'Rails Stripe customer',
# 	    :currency    => 'usd'
# 	  )
# 	  redirect_to donation_path()

# 	rescue Stripe::CardError => e
# 	  flash[:error] = e.message
# 	  redirect_to new_donation_path
# 	end



# end
