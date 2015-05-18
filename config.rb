
set :css_dir, "stylesheets"
set :js_dir, "javascripts"
set :images_dir, "images"

activate :s3_sync do |s3_sync|
  s3_sync.bucket = "www.graygilmore.com"
  s3_sync.region = "us-west-2"
end

configure :build do

end
