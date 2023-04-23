# Active Job backport for Rails 3.2.22.4

* Based on ActiveJob from Rails 5.1-stable (see [here](https://github.com/rails/rails/tree/5-1-stable/activejob))
* Basic usage and documentation on [https://github.com/rails/rails/tree/5-1-stable/activejob](https://github.com/rails/rails/tree/5-1-stable/activejob)

# What doesn't work

* GlobalID: It would require an entire backport for GlobalID itself, so objects as params are not allowed for ActiveJob::Base#perform

**This repo contains the version with fixed error:**
```
#<NoMethodError: private method `logger' called for #<ActiveJob::Logging::LogSubscriber
```

We do not encourage using this gem because ActiveJob is not properly implemented in Rails3 and you may encoutner undesired behavior while using its version from this repository.

However, if you're absolutely sure that this is what you want, you may as well try it as follows:

```
gem 'active_job', :git => 'https://github.com/ruby-logic/activejob.git', :branch => 'rails-3.2-backport'
```
