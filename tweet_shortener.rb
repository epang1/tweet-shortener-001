def dictionary()
  {"hello" => "hi", "to" => "2", "two" => "2", "too" => "2", "for" => "4", "four" => "4",
    "be" => "b", "you" => "u", "at" => "@", "and" => "&"}
end

require 'pry'
def word_substituter(tweet)
  new_tweet =[]
  tweet.split.each do |word|
    if dictionary.keys.include?(word.downcase) == true
      new_tweet << dictionary[word.downcase]
    else
      new_tweet << word
    end
  end
return new_tweet.join(" ")
end

def bulk_tweet_shortener(tweet_array)
  tweet_array.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
    if tweet.length > 140
      return word_substituter(tweet)
    else
      return tweet
    end
end

def shortened_tweet_truncator(tweet)
  if selective_tweet_shortener(tweet).length > 140
    return selective_tweet_shortener(tweet)[0..136].concat("...")
  else
    return selective_tweet_shortener(tweet)
  end
end
