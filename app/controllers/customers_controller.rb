class CustomersController < ApplicationController
  respond_to :html, :js, :json

  def new
    @customer = Customer.new
  end

  def create
    @customer = Customer.new(params[:customer])
    respond_with do |format|
      if @customer.save
        redirect_to home_url
      else
        format.js #{ render :json => { :error => @customer.errors.full_messages.to_sentence },
                   #        :status => :unprocessable_entity
        #}
        #format.json { render :json => { :error => @customer.errors.full_messages.to_sentence },
        #                   :status => :unprocessable_entity
        #}
        format.html { render :new }
      end
    end
  end

end