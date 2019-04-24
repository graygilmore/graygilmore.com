data.travel.cities.each do |city|
  proxy "/travel/#{city[0]}/index.html", "/city.html", :locals => { :city => city[1] }, :ignore => true
end

activate :deploy do |deploy|
  deploy.deploy_method = :rsync
  deploy.host = "charmander"
  deploy.path = "/var/www/graygilmore.com/html"
end

configure :build do
  activate :minify_css
  activate :asset_hash
end

helpers do
  def markdown(text)
    Tilt['markdown'].new(context: @app) { text }.render
  end
end
