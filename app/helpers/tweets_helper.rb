require 'twitter-text'

module TweetsHelper
    include Twitter::Autolink

    def hyperlink_the_tings(str)
        auto_link(str).html_safe
    end
end
