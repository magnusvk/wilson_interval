= wilson_interval

Calculate Wilson confidence intervals with minimum fuss.

== Usage

You always need to specify ```:total``` and ```:confidence```. You also need to specify *either* ```:p_hat``` *or* ```:successes```. The ```:confidence``` option is optional and defaults to ```0.95```.

```ruby
wilson = Wilson::Interval.new(p_hat: 0.5, total: 1000, confidence: 0.95)
wilson.lower_bound.round(4) => 0.4691
wilson.upper_bound.round(4) => 0.5309

wilson = Wilson::Interval.new(successes: 500, total: 1000, confidence: 0.95)
wilson.lower_bound.round(4) => 0.4691
wilson.upper_bound.round(4) => 0.5309
```

== Credits

Based on code found at [evanmiller.org](http://www.evanmiller.org/how-not-to-sort-by-average-rating.html). Adapted according to [Wikipedia](http://en.wikipedia.org/wiki/Binomial_proportion_confidence_interval#Wilson_score_interval).

== Contributing to wilson_interval
 
* Check out the latest master to make sure the feature hasn't been implemented or the bug hasn't been fixed yet.
* Check out the issue tracker to make sure someone already hasn't requested it and/or contributed it.
* Fork the project.
* Start a feature/bugfix branch.
* Commit and push until you are happy with your contribution.
* Make sure to add tests for it. This is important so I don't break it in a future version unintentionally.
* Please try not to mess with the Rakefile, version, or history. If you want to have your own version, or is otherwise necessary, that is fine, but please isolate to its own commit so I can cherry-pick around it.

== Copyright

Copyright (c) 2013 Magnus von Koeller. Licensed under the MIT license. See LICENSE.txt for further details.

