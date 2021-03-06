
base_url = "http://#{request.host_with_port}"
xml.instruct! :xml, :version=>'1.0'
xml.tag! 'urlset', 'xmlns' => 'http://www.sitemaps.org/schemas/sitemap/0.9' do
  xml.url{
      xml.loc("http://pocasluces.es")
      xml.changefreq("weekly")
      xml.priority(1.0)
  }
  xml.url{
      xml.loc("http://pocasluces.es/entrada_blogs")
      xml.changefreq("daily")
      xml.priority(0.9)
  }
  @posts.each do |p|
    xml.url {
      xml.loc("http://pocasluces.es/#{p.id.to_s}")
      xml.changefreq("weekly")
      xml.priority(0.5)
    }
  end
end