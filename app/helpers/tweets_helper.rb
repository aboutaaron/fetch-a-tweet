module TweetsHelper
    def retrieve_twitter_user(id)
        user = Twitter.user(id)
    end

    def retrieve_twitter_status(id)
        status = Twitter.status(id).text
    end
end
