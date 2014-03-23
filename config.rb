#####################
# Blog settings
#####################

Time.zone = "London"

activate :blog do |blog|
  blog.prefix = "articles"
  blog.sources = ":title.html"
  blog.permalink = ":title.html"
  # blog.taglink = "tags/:tag.html"
  blog.layout = "single"
  # blog.summary_separator = /(READMORE)/
  blog.summary_length = 250
  # blog.year_link = ":year.html"
  # blog.month_link = ":year/:month.html"
  # blog.day_link = ":year/:month/:day.html"
  blog.default_extension = ".md"

  blog.tag_template = "tag.html"
  # blog.calendar_template = "calendar.html"

  # blog.paginate = true
  # blog.per_page = 10
  # blog.page_link = "page/:num"
end

page "feed.xml", :layout => false

# Markdown configuration
set :markdown_engine, :redcarpet
set :markdown,  :fenced_code_blocks => true,
                :autolink => true,
                :smartypants => true,
                :tables => true,
                :gh_blockcode => true

# Syntax highlighting
# Include line numbers with :line_numbers => true
activate :syntax

#####################
# General settings
#####################

set :site_title, "Sharktank Labs"
set :site_subtitle, "London, UK Agile team using Ruby, Rails, Go, Javascript, and a whole lot more"
set :site_url, "http://sharktank.co.uk"

# Set to "build/sharktank" when testing on GitHub Pages
# Also turn on relative URLs in Build section below
set :build_dir, "build/sharktank"

set :css_dir, "css"
set :js_dir, "js"
set :images_dir, "img"
set :partials_dir, "partials"

set :layout, "default"

# Automatic image dimensions on image_tag helper
# activate :automatic_image_sizes

# Remove .html extension from pages
# This needs to come after activate :blog in this file in order to work
# as intended on blog posts - no idea why
activate :directory_indexes

# Reload the browser automatically whenever files change
activate :livereload

# Sprockets
activate :sprockets

#####################
# Deploy settings
#####################

# Enable automatic deployment to GitHub Pages
# https://github.com/tvaughan/middleman-deploy
activate :deploy do |deploy|
  deploy.method = :git
  deploy.build_before = true
  deploy.clean = true
end

#####################
# Page options, layouts, aliases and proxies
#####################

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
# page "/articles/*", :layout => "article" # Is this necessary? blog.layout is specified above

# Proxy (fake) files
# page "/this-page-has-no-template.html", :proxy => "/template-file.html" do
#   @which_fake_page = "Rendering a fake page with a variable"
# end

# #####################
# Helpers
#####################

# Methods defined in the helpers block are available in templates
# helpers do
#   def some_helper
#     "Helping"
#   end
# end

#####################
# Development-specific configuration
#####################

configure :development do
  set :debug_assets, true
end

#####################
# Build-specific configuration
#####################

configure :build do

  # Ignore IcoMoon .json file
  ignore "fonts/Icons.json"

  # Ignore CNAME - REMOVE THIS IGNORE WHEN YOU WANT TO GO LIVE
  ignore "CNAME"

  activate :minify_css
  activate :minify_javascript
  #activate :minify_html

  # Add asset fingerprinting to avoid cache issues
  activate :asset_hash, :ignore => ["^js/lib/.*"] #["./*.png"]

  # Older method
  # activate :cache_buster

  # Enable GZIP compression
  # Still need to configure server to serve .gzip versions - not possible w/ GitHub Pages
  # activate :gzip

  # Use relative URLs
  # Turn on when testing on GitHub Pages
  activate :relative_assets
  set :relative_links, true

  # Compress PNGs after build
  # First: gem install middleman-smusher
  # require "middleman-smusher"
  # activate :smusher

  # Or use a different image path
  # set :http_path, "/Content/images/"
end
