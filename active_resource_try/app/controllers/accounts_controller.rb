class AccountsController < ApplicationController
  def index
    @accounts = Account.all
  end

  def show
    @account = Account.find(params[:id])
  end

  def update
    @account = Account.find(params[:id])
    @account.update(params.require(:account).permit(:name))
    redirect_to 'show'
  end

  def create
    
  end
end