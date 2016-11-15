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
activate :i18n, langs: [:en, :th, :cn, :de], mount_at_root: :en

###
# Helpers
###

helpers do
  def localized_path(path, locale=I18n.locale)
    path.gsub!(/^\/(de|cn|jp|th)\//, '/') if path.match /^\/(de|cn|jp|th)\//
    if locale != :en && path.match(/^\/.*/)
      path.gsub!(/^\//, "/#{locale}/")
    end

    path
  end
end

# Build-specific configuration
configure :build do
  activate :minify_css # Minify CSS on build
  activate :minify_javascript # Minify Javascript on build
end
