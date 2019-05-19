require "./blank_house.rb"

describe "blank house" do
  it "works" do
    expect(true).to(eq(true))
  end

  it "censors multiple phrases in multiple tweets" do
    tweets = ["President bad is a danger to society", "This danger to society is president?!", "The blank house is bad. Very bad."]
    banned_phrases = ["bad", "danger to society"]
    
    censored_tweets = ["President #{CENSOR_WORD} is a #{CENSOR_WORD}", "This #{CENSOR_WORD} is president?!", "The blank house is #{CENSOR_WORD}. Very #{CENSOR_WORD}."]

    expect(censor_tweets(tweets, banned_phrases)).to(eq(censored_tweets))
  end
end
