# Active Job backport for Rails 3.2.22.4

* Based on ActiveJob from Rails 5.1-stable (see [here](https://github.com/rails/rails/tree/5-1-stable/activejob))
* Basic usage and documentation on [https://github.com/rails/rails/tree/5-1-stable/activejob](https://github.com/rails/rails/tree/5-1-stable/activejob)

# What doesn't work

* GlobalID: It would require an entire backport for GlobalID itself, so objects as params are not allowed for ActiveJob::Base#perform
