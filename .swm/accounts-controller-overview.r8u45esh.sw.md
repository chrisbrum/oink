---
title: Accounts Controller Overview
---
<SwmSnippet path="/app/controllers/accounts_controller.rb" line="1">

---

This code snippet is a Ruby on Rails controller class named `AccountsController`. It includes three action methods: `index`, `show`, and `edit`. The `index` action retrieves the accounts belonging to the currently authenticated user. The `show` and `edit` actions find a specific account owned by the current user based on the `id` parameter.

```ruby
class AccountsController < ApplicationController
  before_action :authenticate_user!

  def index
    @accounts = current_user.accounts
  end

  def show
    @account = current_user.accounts.find(params[:id])
  end

  def edit
    @account = current_user.accounts.find(params[:id])
  end
end
```

---

</SwmSnippet>

<SwmMeta version="3.0.0" repo-id="Z2l0aHViJTNBJTNBb2luayUzQSUzQWNocmlzYnJ1bQ==" repo-name="oink"><sup>Powered by [Swimm](https://app.swimm.io/)</sup></SwmMeta>
