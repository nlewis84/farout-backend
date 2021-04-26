# :rocket: Far Out

Welcome to the Far Out web application (backend)! It utilizes a Rails API and a React frontend. It is an interface for viewing and voting on pictures from the NASA Astronomy Photo of the Day. Votes are persisted to the database and several routes exist to display 2 random pictures, the top 5 pictures, and the most recent picture.

- Ruby version 2.7.2

- Rails version 6.1.3

## Installation

- Download or clone this project as well as the [Far Out Frontend project](https://github.com/nlewis84/farout-frontend)

## Usage

- `cd` into the project directory
- Run `bundle install`
- Run `rake db:create`
- Run `rake db:migrate` 
- Run `rake db:seed`
- Run `rails s`
- Open your browser and navigate to the local url provided by the `rails` server

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/nlewis84/farout-backend. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/nlewis84/farout-backend/blob/main/CODE_OF_CONDUCT.md).

## Code of Conduct

Everyone interacting in the Far Out project's codebases, and issue trackers is expected to follow the [code of conduct](https://github.com/nlewis84/farout-backend/blob/main/CODE_OF_CONDUCT.md).
