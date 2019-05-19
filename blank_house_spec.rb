require "./censor_tweets.rb"

describe "censor class" do

  banned_phrases = ["bad", "danger to society"]
  blank_house = Censor.new(banned_phrases)

  it "censors multiple phrases in multiple tweets" do
    tweets = [
      "President bad is a danger to society",
      "This danger to society is president?!",
      "The blank house is bad. Very bad."
    ]

    censored_tweets = [
      "President #{CENSOR_WORD} is a #{CENSOR_WORD}",
      "This #{CENSOR_WORD} is president?!",
      "The blank house is #{CENSOR_WORD}. Very #{CENSOR_WORD}."
    ]

    expect(blank_house.censor_tweets(tweets)).to(eq(censored_tweets))
  end

  it "censors regardless of letter case" do
    mixed_case_tweets = ["President bAd is a danGer to SOCIETY!"]

    censored_tweets = ["President #{CENSOR_WORD} is a #{CENSOR_WORD}!"]

    expect(blank_house.censor_tweets(mixed_case_tweets)).to(eq(censored_tweets))
  end
end