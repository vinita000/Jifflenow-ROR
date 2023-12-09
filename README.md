# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

- Ruby version

- System dependencies

- Configuration

- Database creation

- Database initialization

- How to run the test suite

- Services (job queues, cache servers, search engines, etc.)

- Deployment instructions

- ...

------------Steps to check-------------

1. Routes define for score boards
2. we have index action to check score boards and grade result
3. url to check - http://localhost:3000/score_boards
4. Specs added to understand what is the expected result
5. Validation added for presence of subjects marks and also custom validaion added for invalid grade
6. Run rake db:seed to create all 50 records in database, calculate total markes of each student and check is each student marks is above_average marks or not.
7. The 'ScoreBoard' service encapsulates the logic for generating student scores and grade reports.
8. The 'ScoreBoardsController' is responsible for handling requests related to the scoreboards.
