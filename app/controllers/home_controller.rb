class HomeController < ApplicationController
  def index
    @budgets = Budget.where(user_id: current_user.id)
  end
end
