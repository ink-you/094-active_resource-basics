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
    @account.save
    redirect_to account_url(@account)
  end

  def new
    @account = Account.build
  end

  def create
    @account = Account.new(params.require(:account).permit(:first_name))
    @account.save
    redirect_to account_url(@account)
  end
end
