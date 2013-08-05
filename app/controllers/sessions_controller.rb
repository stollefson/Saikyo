class SessionsController < ApplicationController
  def new
    @admin = Admin.new
  end

  def create
      admin = Admin.find_by_name(params[:session][:name])
      if admin && admin.authenticate(params[:session][:password])
	sign_in admin
        redirect_to root_url
      else
        flash.now[:error] = 'Invalid email/password combination'
     	render 'new'
      end
  end

  def destroy
    sign_out
    redirect_to root_url
  end
end
