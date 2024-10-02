---
title: Accounts Controller Overview
---
<SwmSnippet path="/app/controllers/accounts_controller.rb" line="1">

---

This code snippet is a Ruby on Rails controller class named <SwmToken path="/app/controllers/accounts_controller.rb" pos="1:2:2" line-data="class AccountsController &lt; ApplicationController">`AccountsController`</SwmToken>. It includes three action methods: <SwmToken path="/app/controllers/accounts_controller.rb" pos="4:3:3" line-data="  def index">`index`</SwmToken>, <SwmToken path="/app/controllers/accounts_controller.rb" pos="8:3:3" line-data="  def show">`show`</SwmToken>, and <SwmToken path="/app/controllers/accounts_controller.rb" pos="12:3:3" line-data="  def edit">`edit`</SwmToken>. The <SwmToken path="/app/controllers/accounts_controller.rb" pos="4:3:3" line-data="  def index">`index`</SwmToken> action retrieves the accounts belonging to the currently authenticated user. The <SwmToken path="/app/controllers/accounts_controller.rb" pos="8:3:3" line-data="  def show">`show`</SwmToken> and <SwmToken path="/app/controllers/accounts_controller.rb" pos="12:3:3" line-data="  def edit">`edit`</SwmToken> actions find a specific account owned by the current user based on the <SwmToken path="/app/controllers/accounts_controller.rb" pos="9:15:15" line-data="    @account = current_user.accounts.find(params[:id])">`id`</SwmToken> parameter.

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
