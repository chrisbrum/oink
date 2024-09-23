class BudgetCategoriesController < ApplicationController
  before_action :authenticate_user!

  def index
    @budget = Budget.find(params[:budget_id])
    @budget_categories = @budget.budget_categories
  end

  def show
    @budget = Budget.find(params[:budget_id])
    @budget_category = @budget.budget_categories.find(params[:id])
  end

  def edit
    @budget = Budget.find(params[:budget_id])
    @budget_category = @budget.budget_categories.find(params[:id])
  end
end
