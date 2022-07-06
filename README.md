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

Start the server

 `rails s`

# Usage
When the page is up and running, 

1. Sign up for an account 
2. On your profile page, start a conversation by selecting "+"
  - pick a user
  - enter your first message
  - click "CHAT!"
3. Conversations are listed on your profile page
4. Select a conversation
  - on the conversation page, enter a message and send
5. Chat away!
6. Log out by selecting the "x"

## Contributing
Bug reports and pull requests are welcome.

This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the Contributor Covenant [Code of Conduct](https://www.contributor-covenant.org/version/2/0/code_of_conduct/).

## License
This project is licensed under the [MIT License](https://www.mit.edu/~amini/LICENSE.md).
