# Per-page layout changes:
#
# With no layout
page '/*.xml', layout: false
page '/*.json', layout: false
page '/*.txt', layout: false

# Activate plug-in.
activate :asset_hash
activate :directory_indexes
activate :sprockets
activate :i18n, langs: [:en, :th], mount_at_root: :th

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
  activate :minify_css # Minify CSS on build
  activate :minify_javascript # Minify Javascript on build
end
