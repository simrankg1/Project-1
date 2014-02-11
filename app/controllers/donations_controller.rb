class DonationsController < ApplicationController

	def index
	end

	def new
		@donation=Donation.new
	end

	# def create
	# 	new_donation= params.require(:donation).permit(:amount, :charity_name)
	# 	current_user.donations << new_donation
	# 	new_donation[:user_id]= current_user.id
	# 	@donation= Donation.create(new_donation)
	# 	render :show
	# 	redirect_to donation_path(@donation)
	# end

	def create

    amount = params[:amount].to_i
    charity = params[:charity]


	  customer = Stripe::Customer.create(
	    :email => params[:stripeEmail],
	    :card  => params[:stripeToken]
	  )

	  charge = Stripe::Charge.create(
	    :customer    => customer.id,
	    :amount      => amount,
	    :description => 'Easy Giving Customer',
	    :currency    => 'usd'
	  )

    new_donation= Donation.create(
      amount: amount,
      charity_name: charity
    )

    new_donation.user = current_user
    new_donation.save

    @donation = new_donation
    redirect_to donation_path(@donation) #donation show

    #if there's a processing error, show error,redirect to make a new donation
    rescue Stripe::CardError => e
      flash[:error] = e.message
      redirect_to new_donation_path
	end


	def show
		@donation =Donation.find(params[:id])
	end

end
