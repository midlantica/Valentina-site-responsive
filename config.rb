###
# Compass
###

# Change Compass configuration
# compass_config do |config|
#   config.output_style = :compact
# end
# activate :compass

set :sass_dir,   'css'
set :scss_dir,   'css'
set :css_dir,    'css'
set :js_dir,     'js'
set :images_dir, 'img'
set :fonts_dir,  'css/fonts'

#----------------------------

#Folder settings
# http_path = ""
# project_type    = :stand_alone
# relative_assets = true        # because we're not working from the root
# sass_dir        = "css"       # where our .scss files are
# css_dir         = "css"       # where the CSS will saved
# images_dir      = "img"       # the folder with your images
# fonts_dir       = "scss/fonts" # the folder with your fonts


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

# activate :bower
# import_path File.expand_path('bower_components', app.root)
# sprockets.append_path File.join "#{root}", "bower_components"

# https://github.com/middleman/middleman-autoprefixer
activate :autoprefixer do |config|
  config.browsers = ['last 2 versions', '>5%']
  config.cascade  = true
  config.inline   = true
  # config.ignore   = ['hacks.css']
end

# Reload the browser automatically whenever files change
configure :development do
  activate :livereload, port: '4567', livereload_css_target: "css/style.css"
  # activate :minify_css

end

# Methods defined in the helpers block are available in templates
# helpers do
#   def some_helper
#     "Helping"
#   end
# end


# Build-specific configuration
configure :build do

  activate :relative_assets

  activate :minify_css
  activate :minify_html
  activate :minify_javascript
  activate :imageoptim

  activate :gzip

  # activate :directory_indexes

  # Or use a different image path
  # set :http_prefix, "/Content/images/"

end

# https://github.com/middleman-contrib/middleman-deploy
# activate :deploy do |deploy|
#   deploy.method = :git
#   # Optional Settings
#   # deploy.remote   = 'custom-remote' # remote name or git url, default: origin
#   # deploy.branch   = 'custom-branch' # default: gh-pages
#   # deploy.strategy = :submodule      # commit strategy: can be :force_push or :submodule, default: :force_push
#   # deploy.commit_message = 'custom-message'      # commit message (can be empty), default: Automated commit at `timestamp` by middleman-deploy `version`
# end

# Middleman Deploy FTP
# activate :deploy do |deploy|
#   deploy.method   = :ftp
#   deploy.host     = 'ftp.example.com'
#   deploy.path     = '/srv/www/site'
#   deploy.user     = 'tvaughan'
#   deploy.password = 'secret'
# end



