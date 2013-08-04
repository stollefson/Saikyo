class SessionsController < ApplicationController
  def new
  end

  def create
      admin = Admin.find_by(name: params[:session][:name])
      if admin && admin.authenticate(params[:session][:password])
	#sign in
      else
        flash.now[:error] = 'Invalid email/password combination'
      	render 'new'
      end
  end

  def destroy
  end
end
