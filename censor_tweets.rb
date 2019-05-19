CENSOR_WORD = "CENSORED"

def censor_tweets(tweets, banned_phrases)
  tweets.each do |tweet|
    banned_phrases.each do |phrase| 
      pattern = Regexp.new(phrase, Regexp::IGNORECASE)
      tweet.gsub!(pattern, CENSOR_WORD)
    end
  end
end