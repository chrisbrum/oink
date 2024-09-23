class BudgetsController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @budgets = current_user.budgets
  end

  def show
    @budget = current_user.budgets.find(params[:id])
  end

  def edit
    @budget = current_user.budgets.find(params[:id])
  end
end
