# CardMask

CardMask is a simple `ViewHelper` wrapper that generates a mask for card numbers, perfect for the [Stripe API](https://stripe.com/docs/api).

Supported card types:
- Visa
- American Express
- MasterCard
- Discover
- JCB
- Diners Club

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'card_mask'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install card_mask

## Usage

Something like this:
``` erb
<%= card_mask("Visa", "9876", id: "primary-card", class: "card-number") %>
```
will generate something like this:
``` html
<span id="primary-card" class="card-number">**** **** **** 9876</span>
```

Card type values include: `Visa`, `American Express`, `MasterCard`, `Discover`, `JCB` and `Diners Club`.

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/slehmann36/card_mask. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

