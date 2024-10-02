---
title: How I setup this forked version of the app
---
# Introduction

This document will walk you through the implementation of the forked version of the app.

The feature involves setting up a new version of the app with specific changes to controllers and database seeding.

We will cover:

1. The purpose of the changes.
2. The changes that were made.
3. Their impact.

# Purpose of the changes

The main goal was to set up a forked version of the app with custom authentication and initial data seeding.

# Changes that were made

## Authentication in home controller

<SwmSnippet path="/app/controllers/home_controller.rb" line="1">

---

We added user authentication to the <SwmToken path="/app/controllers/home_controller.rb" pos="3:2:2" line-data="class HomeController &lt; ApplicationController">`HomeController`</SwmToken>. This ensures that only authenticated users can access the home controller actions.

```ruby
# frozen_string_literal: true

class HomeController < ApplicationController
  before_action :authenticate_user!

```

---

</SwmSnippet>

## Database seeding

<SwmSnippet path="/db/seeds.rb" line="1">

---

We included a seeding script to populate the database with initial data. This is crucial for setting up the app with default values and ensuring it runs correctly from the start.

```ruby
# frozen_string_literal: true

```

---

</SwmSnippet>

# Impact

These changes ensure that the forked version of the app has user authentication in place and starts with predefined data. This setup is essential for maintaining security and consistency in the app's initial state.

<SwmMeta version="3.0.0" repo-id="Z2l0aHViJTNBJTNBb2luayUzQSUzQWNocmlzYnJ1bQ==" repo-name="oink"><sup>Powered by [Swimm](https://app.swimm.io/)</sup></SwmMeta>
