activate :deploy do |deploy|
  deploy.deploy_method = :rsync
  deploy.host = "charmander"
  deploy.path = "/var/www/graygilmore.com/html"
end

configure :build do
  activate :minify_css
  activate :asset_hash
end
