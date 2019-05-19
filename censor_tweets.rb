CENSOR_WORD = "CENSORED"

class Censor
  def initialize(banned_phrases)
    @regexes = banned_phrases.map do |phrase|
      Regexp.new(phrase, Regexp::IGNORECASE)
    end
  end

  def censor_tweets(tweets)
    tweets.each do |tweet|
      @regexes.each { |regex| tweet.gsub!(regex, CENSOR_WORD) }
    end
  end
end