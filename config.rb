###
# Compass
###

# Change Compass configuration
# compass_config do |config|
#   config.output_style = :compact
# end

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
# activate :automatic_image_sizes

# Reload the browser automatically whenever files change
# configure :development do
#   activate :livereload
# end

# Methods defined in the helpers block are available in templates
# helpers do
#   def some_helper
#     "Helping"
#   end
# end
set :css_dir, 'stylesheets'
set :js_dir, 'javascripts'
set :images_dir, 'images'
set :partials_dir, 'partials'
set :fonts_dir, 'fonts'

# Build-specific configuration
# ----------------------------------------------
configure :build do
  # Use relative URLs
  activate :directory_indexes

  # Activate gzip
  activate :gzip

  # Minify CSS on build
  activate :minify_css

  # Minify Javascript on build
  activate :minify_javascript

  # Add asset fingerprinting to avoid cache issues
  activate :asset_hash

  # Enable cache buster
  activate :cache_buster

  # Compress PNGs after build (First: gem install middleman-smusher)
  require "middleman-smusher"
  activate :smusher
end



# Livereload
# Reload the browser automatically whenever files change
# ----------------------------------------------
configure :development do
  activate :livereload, :no_swf => true
end

# Other configurations
# ----------------------------------------------
set :trailing_slash, false


# Development-specific configuration
# ----------------------------------------------
configure :development do
  activate :directory_indexes
  set :debug_assets, true
end
# i18n
# ----------------------------------------------
activate :i18n, :mount_at_root => :'pt-BR'

# Site Settings
# ----------------------------------------------
#@google_analytics = ''
set :site_name, 'Shelly - Seu Salão a um toque de distância'
set :site_description, 'Startup que conecta pessoas e salões de beleza'
set :site_url, 'http://www.shellyapp.com.br'
set :site_twitter, '@shellyapp'

# github project pages deploy
activate :deploy do |deploy|
  deploy.method = :git
  deploy.build_before = true # default: false
end
