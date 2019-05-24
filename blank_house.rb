require "./censor_tweets.rb"

test_tweets = [
  "This president sucks!",
  "I hate this Blank House!",
  "I can't believe we're living with such a bad leadership. We were so foolish",
  "President Presidentname is a danger to society. I hate that he's so bad – it sucks."
  ]

tweets2 = ["president sucks"]

banned_phrases = ["sucks", "bad", "hate", "foolish", "danger to society"]

blank_house = Censor.new(banned_phrases)
puts blank_house.censor_tweets(test_tweets)
puts blank_house.censor_tweets(tweets2)