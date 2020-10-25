# Search Bookings Demo

This is a simple booking listing app built using Rails and Rails-React.

It consists of a single API endpoint, which returns a collection of bookings,
and a front end React component which consumes the API and displays the bookings
as a filterable list.

## Getting started

### Dependencies

Ensure that the dependencies listed are present on your platform.

```bash
$ bundle install
```

### Installation

Create, migrate and seed your databases.

```
$ rails db:create db:migrate db:seed
```

### Development server

Run:

```
$ rails s
```

Then visit `localhost:3000`.

## Running tests

Manually run API test with `rspec spec`.

Manually run front end tests with `npm test`. Snapshots can be updated as
instructed by Jest (`npm test -- -u`).