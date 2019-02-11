# Write your code here.
def dictionary
    convert = {
        "hello" => "hi",
        "to" => "2",
        "two" => "2",
        "too" => "2",
        "for" => "4",
        "four" => "4",
        "be" => "b",
        "you" => "u",
        "at" => "@",
        "and" => "&"
    }
end

def word_substituter(tweet)
    # change string into array(split) using " " as break for each element to create a new array(collect)
    tweet.split(" ").collect do |word|
    if dictionary.keys.include?(word.downcase)
    # run through every word if they include the key words in dictionary then convert to there value.
       word = dictionary[word.downcase]
    else
    # otherwise leave word as is
       word
end
    # turn array back into a string with " " seperating each element
end.join(" ")
end

def bulk_tweet_shortener(tweet)
    tweet.collect do |tweets| 
        puts word_substituter(tweets)
end
end

def selective_tweet_shortener(tweet)
    if tweet.length > 140
        word_substituter(tweet)
    else
        tweet
end
end

def shortened_tweet_truncator(tweet)
    if tweet.length > 140
        word_substituter(tweet)[0..136] + "..."
    else
        tweet
end
end
