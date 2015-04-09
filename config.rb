###
# Compass
###

# Change Compass configuration
compass_config do |config|
  config.output_style = :compact
end

###
# Page options, layouts, aliases and proxies
###

# Per-page layout changes:
#
# With no layout
# page "/path/to/file.html", :layout => false
#
# With alternative layout
# page "/path/to/file.html", :layout => :otherlayout
#
# A path which all have the same layout
# with_layout :admin do
#   page "/admin/*"
# end

# Proxy pages (https://middlemanapp.com/advanced/dynamic_pages/)
# proxy "/this-page-has-no-template.html", "/template-file.html", :locals => {
#  :which_fake_page => "Rendering a fake page with a local variable" }

###
# Helpers
###

# Automatic image dimensions on image_tag helper
activate :automatic_image_sizes

activate :bower

# https://github.com/middleman/middleman-autoprefixer
activate :autoprefixer do |config|
  config.browsers = ['last 2 versions', 'Explorer >= 9']
  config.cascade  = true
  config.inline   = true
  # config.ignore   = ['hacks.css']
end

# Reload the browser automatically whenever files change
configure :development do
  activate :livereload
end

# Methods defined in the helpers block are available in templates
# helpers do
#   def some_helper
#     "Helping"
#   end
# end

set :sass_dir,   'css'
set :scss_dir,   'css'
set :css_dir,    'css'
set :js_dir,     'js'
set :images_dir, 'img'
set :fonts_dir,  'css/fonts'

#----------------------------

#Folder settings
project_type    = :stand_alone
relative_assets = true        # because we're not working from the root
sass_dir        = "css"       # where our .scss files are
css_dir         = "css"       # where the CSS will saved
images_dir      = "img"       # the folder with your images
fonts_dir       = "css/fonts" # the folder with your fonts


# Build-specific configuration
configure :build do
  # For example, change the Compass output style for deployment
  activate :minify_css

  # Minify Javascript on build
  activate :minify_javascript

  # Enable cache buster
  # activate :asset_hash

  # Use relative URLs
  activate :relative_assets

  # Or use a different image path
  # set :http_prefix, "/Content/images/"

  # https://github.com/plasticine/middleman-imageoptim
  activate :imageoptim

end

# https://github.com/middleman-contrib/middleman-deploy
activate :deploy do |deploy|
  deploy.method = :git
  # Optional Settings
  # deploy.remote   = 'custom-remote' # remote name or git url, default: origin
  # deploy.branch   = 'custom-branch' # default: gh-pages
  # deploy.strategy = :submodule      # commit strategy: can be :force_push or :submodule, default: :force_push
  # deploy.commit_message = 'custom-message'      # commit message (can be empty), default: Automated commit at `timestamp` by middleman-deploy `version`
end

# Middleman Deploy FTP
# activate :deploy do |deploy|
#   deploy.method   = :ftp
#   deploy.host     = 'ftp.example.com'
#   deploy.path     = '/srv/www/site'
#   deploy.user     = 'tvaughan'
#   deploy.password = 'secret'
# end



