class AuthenticationController < ApplicationController
  def sign_in
    @siteadmin = Siteadmin.new
  end

  def login
    username_or_email = params[:siteadmin][:username]
    password = params[:siteadmin][:password]

    if username_or_email.rindex('@')
      email=username_or_email
      siteadmin = Siteadmin.authenticate_by_email(email, password)
    else
      username=username_or_email
      siteadmin = Siteadmin.authenticate_by_username(username, password)
    end

    if siteadmin
      #update_authentication_token(siteadmin, params[:siteadmin][:authentication_token)
      #siteadmin.save
      session[:siteadmin_id] = siteadmin.id
      flash[:success] = 'Hello, Admin.'
      redirect_to :root
    else
      flash.now[:error] = 'Incorrect username and/or password.'
      render :action => "sign_in"
    end
  end
  
  def signed_out
      #siteadmin = Siteadmin.find_by_id(session[:siteadmin_id])
    
      #update_authentication_token(siteadmin, nil)
      session[:siteadmin_id] = nil
      flash[:success] = "Goodbye, Admin!"
      redirect_to :root
  end

  #def update_authentication_token(siteadmin, authentication_token)
   # auth_token = SecureRandom.urlsafe_base64
   # siteadmin.authentication_token = auth_token
   # cookies.permanent[:auth_token] = auth_token
  #end


end
