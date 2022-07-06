# ADNAT

**ADNAT** is a Rails time clock app that lets users clock in and out of their shifts and calculates wages earned. 

## Installation
Fork the repo & clone to your computer

 `git clone git@github.com:savannaac/adnat.git`

Enter the newly created directory

 `cd adnat`

Install dependencies

 `bundle install`

### Database Creation and Initialization
**ADNAT** uses Postgres for database management

Create the database

 `rails db:create`

Run migrations

`rails db:migrate`

(*Optional*) Seed data

`rails db:seed`

### Start the server

Run `rails s`

## Usage
When **ADNAT** is up and running, 

### Sign Up or Log In
1. Sign up for an account or Log In
2. On the welcome page, add an organization by selecting "home"
  - on the home page, select "add organization"
  - enter the organization's name
  - then hourly rate
  - click "add"
3. Join the newly added organization
4. Add a shift by selecting "add shift" on the home page
  - select values for "shift start" and "shift end" (time is 24H clock)
  - enter the break length in minutes
5. Add away!
6. Log out by selecting the "x"

### Additional Usage
- Leave organization by selecting your organization (under "your organization:") on the home page
- Join organization by selecting an organization (under "all organizations:") on the home page
- Delete organization by selecting any organization (under "all organizations:") on the home page


## Contributing
Bug reports and pull requests are welcome.

This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the Contributor Covenant [Code of Conduct](https://www.contributor-covenant.org/version/2/0/code_of_conduct/).
