# Blank House

This Ruby program censors specific words in an array of Strings.

Use `ruby blank_house.rb` to run the program

## Objective

> I'm a client working for the Blank House. We want to display positive tweets about our president on our website. However, our president is kind of unpopular, and we pretty much only receive negative press. Write me a program that filters out the following words from tweets: "sucks", "bad", "hate", "foolish", and the most popular: "danger to society". Replace each negative word or phrase them with the word "CENSORED". Some test tweets have been provided for you.

## Contents

#### censor_tweets.rb

Ruby file containing the logic.  It generates a regular expression, and uses pattern matching to substitute the banned phrases with a censor sting.

#### blank_house.rb

Ruby file containing the case specific data, including the tweets to be censored and a list of banned phrases.

#### blank_house_spec.rb

RSpec file with tests.


## Installation

To run the tests, you'll need RSpec

- Install RSpec with `gem install rspec` in the command line
- Run `rspec --init` to get set up
- Run tests with `rspec`
- Documentation: http://rspec.info/documentation/

## Contributing

Discussions and pull requests welcome!  Tweet me [@ruthmoog](https://twitter.com/ruthmoog)

Please remember to update the tests as needed

## License

- [MIT](https://choosealicense.com/licenses/mit/)
- original objective by [Makers Academy](https://github.com/makersacademy)