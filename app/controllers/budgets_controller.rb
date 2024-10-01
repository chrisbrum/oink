class BudgetsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_budget, only: %i[index show edit update]

  def index
    @budgets = current_user.budgets
  end

  def show; end

  def edit; end

  def update
    if @budget.update(update_params)
      redirect_to @budget, notice: 'Budget was successfully updated.'
    else
      render :edit
    end
  end

  private

  def set_budget
    @budget = current_user.budgets.find_by(slug: params[:id])
  end

  def update_params
    params.require(:budget).permit(:name)
  end
end
