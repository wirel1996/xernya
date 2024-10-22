module ApplicationHelper

    def urls_to_content(str)
     str.gsub!( %r{https://[^\s<]+}) do |url|
       if url[/(&:png|jpe?g|gif|svg)$/]
         "<img src='#{url}' width='200'; />"
       else
            "<a href='#{url}' target='_blank'>lint to info</a>"
        end
    end
         str.html_safe
    end
end
