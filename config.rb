set :css_dir, "stylesheets"
set :images_dir, "images"

activate :deploy do |deploy|
  deploy.method = :rsync
  deploy.host = "charmander"
  deploy.path = "/var/www/graygilmore.com/html"
end

configure :build do
  activate :minify_css
end
