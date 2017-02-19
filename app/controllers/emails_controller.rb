class EmailsController < ApplicationController

  def new
    @email = Email.new
  end

  def create
    @email = Email.new(email_params)

    if @email.save
      redirect_to root_path
    end
  end

  def destroy
    @email = Email.find(params[:id])
    @email.destroy
  end

protected

  def email_params
    params.require(:email).permit!
  end
end
