class AccountsController < ApplicationController
  before_action :set_account, only: [:show, :edit, :update]

  def index
    @accounts = Account.all
  end

  def show
  end

  def edit
  end

  def update
    @account.update_attributes(params.require(:account).permit(:first_name))
    if @account.save
      redirect_to account_url(@account), notice: 'Account was successfully updated.'
    else
      render :edit
    end
  end

  def new
    @account = Account.build
  end

  def create
    @account = Account.new(params.require(:account).permit(:first_name))
    if @account.save
      redirect_to account_url(@account), notice: 'Account was successfully created.'
    else
      render :new
    end
  end

  private
  def set_account
    @account = Account.find(params[:id])
  end
end
