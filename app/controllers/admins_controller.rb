class AdminsController < ApplicationController
  def show
    @admin = Admind.find(params[:name])
   # @microposts = @user.microposts.paginate(page: params[:page])
  end

  def new
    @admin = Admin.new
  end

  def create
    @admin = Admin.new(params[:admin])
    if @admin.save
      sign_in @admin
      flash[:success] = "Welcome, Admin!"
      redirect_to root_url
    else
      render 'new'
    end
  end
end
