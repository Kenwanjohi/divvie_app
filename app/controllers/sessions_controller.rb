class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.find_by(email: params[:user][:email].downcase)
    if @user&.authenticate(params[:user][:password])
      login @user
      redirect_to root_path, notice: "Signed in successfully"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    logout
    redirect_to root_path, notice: "Signed out"
  end
end
