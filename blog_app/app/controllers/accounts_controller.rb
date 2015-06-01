class AccountsController < ApplicationController
  def index
    @accounts = Account.all
  end

  def show
    @account = Account.find(params[:id])
  end

  def edit
    @account = Account.find(params[:id])
  end

  def update
    @account = Account.find(params[:id])
    @account.update_attributes(params.require(:account).permit(:first_name))
    redirect_to account_url
  end

  def new
    @account = Account.new
  end

  def create
  end
end
