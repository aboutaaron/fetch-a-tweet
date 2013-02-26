require 'twitter-text'

module TweetsHelper
    include Twitter::Autolink

    def hyperlink_the_tings(str)
        auto_link(str).html_safe
    end

    def grab_user_avatar(str)
        Twitter.status(str)["profile_image_url"]
    end
end
