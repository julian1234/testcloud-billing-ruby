# Testcloud::Billing::Ruby

TODO: Write a gem description

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'testcloud-billing-ruby'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install testcloud-billing-ruby

## Usage

Configure the client (e.g. in an initializer):

    Testcloud::Billing.setup url: 'http(s)://api.example.com', api_key: 'your_api_key'


Create a Customer (in this case with SEPA direct debit payment):

    customer = Testcloud::Billing::Customer.create(
      company: "testCloud.de GmbH",   # this or 'name' is required
      address_line_one: "Boxhagenerstr. 76/78",
      zip: "10245",
      city: "Berlin",
      country: "DE",
      email: "billing@testcloud.io",
      vatid: "DE279558871",   # required if in EU but outside DE
      locale: "en",
      timezone: "Berlin",
      payment_method: "sepa_debit",
      sepa_data_attributes: {
        iban: "DEAVALIDIBAN",
        bic: "AVALIDBIC"
      }
    )

For credit card customers use this:

    ...
    timezone: "Berlin",
    payment_method: "credit_card",
    credit_card_data_attributes: {
      stripe_token: "THESTRIPETOKEN", # from Stripe.js
      last4: "4242",
      brand: "visa",
      exp_month: "05",
      exp_year: "2020",
      name: "Name on card", # optional
      country: "DE"         # optional
    }


To bill a customer:

    bill = Testcloud::Billing::Bill.create(
      customer_id: customer.id,
      currency: 'EUR',
      month: 5,
      year: 2014,
      bill_items_attributes: [
        {
          title: 'A month of service',
          price_for_one: 99.25,
          quantity: 1,
          description: '' # optional
        }
      ]
    )


## Contributing

1. Fork it ( https://github.com/[my-github-username]/testcloud-billing-ruby/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
