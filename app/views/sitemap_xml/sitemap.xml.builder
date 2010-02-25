xml.instruct!
xml.urlset(:xmlns => "http://www.sitemaps.org/schemas/sitemap/0.9") do
    if @homepage
    xml<< (render :partial => 'node', :locals => { :page => @homepage})
end
end