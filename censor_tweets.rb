CENSOR_WORD = "CENSORED"

def censor_tweets(tweets, banned_phrases)

  regexes = banned_phrases.map do |phrase|
    Regexp.new(phrase, Regexp::IGNORECASE)
  end

  tweets.each do |tweet|
    regexes.each { |regex| tweet.gsub!(regex, CENSOR_WORD) }
  end
end