module Spree
  module BaseHelper

    def ad_code(ad)
      if ad.file_name =~ /\.swf/
        if ad.position == 5
          result = <<-eos
            <embed type="application/x-shockwave-flash" src="/ads/#{ad.file_name}" width="600" height="200" style="undefined" id="ad-#{ad.id}" name="#{ad.name}" quality="high" allowscriptaccess="always">
          eos
        else
          result = <<-eos
            <embed type="application/x-shockwave-flash" src="/ads/#{ad.file_name}" width="#{(ad.width if ad.width)}" height="#{(ad.height if ad.height)}" style="undefined" id="ad-#{ad.id}" name="#{ad.name}" quality="high" allowscriptaccess="always">
          eos
        end
      else
        if ad.position == 5
          result = <<-eos
            <a href="#{ad.url}" target="_blank"><img src="/ads/#{ad.file_name}" alt="#{ad.name}" width="600" height="200"></a>
          eos
        else
          result = <<-eos
            <a href="#{ad.url}" target="_blank"><img src="/ads/#{ad.file_name}" alt="#{ad.name}" width="#{ad.width}" height="#{ad.height}"></a>
          eos
        end
      end
      return result.html_safe
    end

  end
end
