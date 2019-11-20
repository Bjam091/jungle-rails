# Jungle

A mini e-commerce application built with Rails 4.2 for purposes of teaching Rails by example.

=========
## Final Product

Home Page on load ![](https://github.com/Bjam091/jungle-rails/blob/master/public/images/Home%20Page%20with%20Sold%20Out%20Item.png?raw=true)

Empty Cart Warning ![](https://github.com/Bjam091/jungle-rails/blob/master/public/images/Empty%20Cart%20Warning.png?raw=true)

Admin Dashboard Login ![](https://github.com/Bjam091/jungle-rails/blob/master/public/images/Admin%20Page%20locked.png?raw=true)

Admin Dashboard ![](https://github.com/Bjam091/jungle-rails/blob/master/public/images/Admin%20Dashboard.png?raw=true)




## Setup

1. Run `bundle install` to install dependencies
2. Create `config/database.yml` by copying `config/database.example.yml`
3. Create `config/secrets.yml` by copying `config/secrets.example.yml`
4. Run `bin/rake db:reset` to create, load and seed db
5. Create .env file based on .env.example
6. Sign up for a Stripe account
7. Put Stripe (test) keys into appropriate .env vars
8. Run `bin/rails s -b 0.0.0.0` to start the server

## Stripe Testing

Use Credit Card # 4111 1111 1111 1111 for testing success scenarios.

More information in their docs: <https://stripe.com/docs/testing#cards>

## Dependencies

* Rails 4.2 [Rails Guide](http://guides.rubyonrails.org/v4.2/)
* PostgreSQL 9.x
* Stripe
