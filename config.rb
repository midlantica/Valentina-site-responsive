###
# Page options, layouts, aliases and proxies
###

# Per-page layout changes:
#
# With no layout
page '/*.xml', layout: false
page '/*.json', layout: false
page '/*.txt', layout: false

# With alternative layout
# page "/path/to/file.html", layout: :otherlayout

# Proxy pages (http://middlemanapp.com/basics/dynamic-pages/)
# proxy "/this-page-has-no-template.html", "/template-file.html", locals: {
#  which_fake_page: "Rendering a fake page with a local variable" }

# General configuration
# Automatic image dimensions on image_tag helper
set :sass_dir,   'css'
set :scss_dir,   'css'
set :css_dir,    'css'
set :js_dir,     'js'
set :images_dir, 'img'
set :fonts_dir,  'css/fonts'
# set :build_dir,  'build'
# set :build_dir, ENV['MM_BUILD_DIR']

activate :automatic_image_sizes

# Reload the browser automatically whenever files change
configure :development do
  activate :livereload
end

###
# Helpers
###

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
  # activate :imageoptim
  activate :gzip
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
