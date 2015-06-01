class AccountsController < ApplicationController
  before_action :authorize
  before_action :set_account, only: [:show, :edit, :update, :destroy]
  respond_to :html, :json

  # GET /accounts
  # GET /accounts.json
  def index
    @accounts = Account.all
    respond_with @accounts
  end

  # GET /accounts/1
  # GET /accounts/1.json
  def show
    # set_account
    respond_with @account
  end

  # GET /accounts/new
  def new
    @account = Account.new
    respond_with @account
  end

  # GET /accounts/1/edit
  def edit
    # set_account
    respond_with @account
  end

  # POST /accounts
  # POST /accounts.json
  def create
    @account = Account.new(account_params)
    flash[:notice] = 'Account was successfully created.' if @account.save
    respond_with @account
  end

  # PATCH/PUT /accounts/1
  # PATCH/PUT /accounts/1.json
  def update
    # set_account
    flash[:notice] = 'Account was successfully updated.' if @account.update(account_params)
    respond_with @account
  end

  # DELETE /accounts/1
  # DELETE /accounts/1.json
  def destroy
    # set_account
    flash[:notice] = 'Account was successfully destroyed.' if @account.destroy
    respond_with @account
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_account
      @account = Account.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def account_params
      params.require(:account).permit(:first_name, :last_name, :return, :program_id, :address, :phone)
    end

  protected
    def authorize
      authenticate_or_request_with_http_basic do |username, password|
        username == "mister" && password == "example"
      end
    end
end
