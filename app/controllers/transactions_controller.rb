class TransactionsController < ApplicationController
  before_action :authenticate_user!

  def index
    @transactions = current_user.transactions
  end

  def show
    @transaction = current_user.transactions.find(params[:id])
  end

  def edit
    @transaction = current_user.transactions.find(params[:id])
  end
end
