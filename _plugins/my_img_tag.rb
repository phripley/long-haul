# remove trailing slash from img tags
# https://stackoverflow.com/a/61264446/955002

module Kramdown

    module Converter
  
      class Html < Base
  
        # Overriding method to remove trailing slash in img tag
        def convert_img(el, _indent)
          "<img#{html_attributes(el.attr)} >"
        end
  
      end
  
    end
  
  end