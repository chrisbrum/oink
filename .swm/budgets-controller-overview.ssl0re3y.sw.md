---
title: Budgets Controller Overview
---
<SwmSnippet path="/app/controllers/budgets_controller.rb" line="3">

---

This code defines a <SwmToken path="/app/controllers/budgets_controller.rb" pos="3:2:2" line-data="class BudgetsController &lt; ApplicationController">`BudgetsController`</SwmToken> class that handles various actions related to budgets. It includes <SwmToken path="/app/controllers/budgets_controller.rb" pos="4:1:1" line-data="  before_action :authenticate_user!">`before_action`</SwmToken> filters to authenticate users and set the budget for certain actions. The <SwmToken path="/app/controllers/budgets_controller.rb" pos="5:13:13" line-data="  before_action :set_budget, only: %i[index show edit update]">`index`</SwmToken> action retrieves all budgets belonging to the current user. The <SwmToken path="/app/controllers/budgets_controller.rb" pos="5:15:15" line-data="  before_action :set_budget, only: %i[index show edit update]">`show`</SwmToken> action displays a specific budget. The <SwmToken path="/app/controllers/budgets_controller.rb" pos="5:17:17" line-data="  before_action :set_budget, only: %i[index show edit update]">`edit`</SwmToken> action renders the edit form for a budget. The <SwmToken path="/app/controllers/budgets_controller.rb" pos="5:19:19" line-data="  before_action :set_budget, only: %i[index show edit update]">`update`</SwmToken> action updates a budget with the provided parameters. If the update is successful, it redirects to the updated budget's page with a success notice; otherwise, it renders the edit form again. The <SwmToken path="/app/controllers/budgets_controller.rb" pos="5:4:4" line-data="  before_action :set_budget, only: %i[index show edit update]">`set_budget`</SwmToken> method sets the <SwmToken path="/app/controllers/budgets_controller.rb" pos="16:3:4" line-data="    if @budget.update(update_params)">`@budget`</SwmToken> instance variable based on the current user and the <SwmToken path="/app/controllers/budgets_controller.rb" pos="26:12:12" line-data="    @budget = current_user.budgets.find_by(slug: params[:id])">`slug`</SwmToken> parameter. The <SwmToken path="/app/controllers/budgets_controller.rb" pos="16:8:8" line-data="    if @budget.update(update_params)">`update_params`</SwmToken> method allows only the <SwmToken path="/app/controllers/budgets_controller.rb" pos="30:12:12" line-data="    params.require(:budget).permit(:name)">`name`</SwmToken> parameter to be updated.

```ruby
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
```

---

</SwmSnippet>

<SwmMeta version="3.0.0" repo-id="Z2l0aHViJTNBJTNBb2luayUzQSUzQWNocmlzYnJ1bQ==" repo-name="oink"><sup>Powered by [Swimm](https://app.swimm.io/)</sup></SwmMeta>
