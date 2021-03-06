class SitemapXmlController < ApplicationController
  no_login_required
  
  def sitemap
    respond_to do |format|
      format.xml {
        @host = Radiant::Config['sitemap_xml_domain'] || "#{request.protocol}#{request.host_with_port}"
        @homepage = Page.homepage
        render :layout => false
      }
    end
  end
end
