require 'fog-aws'

# Set the host name for URL creation
SitemapGenerator::Sitemap.default_host = "https://www.tenzen.nl"
SitemapGenerator::Sitemap.sitemaps_host = "https://s3.#{ENV['AWS_REGION']}.amazonaws.com/#{ENV['S3_BUCKET']}/"
SitemapGenerator::Sitemap.sitemaps_path = 'sitemaps/'
SitemapGenerator::Sitemap.public_path = 'tmp/'

SitemapGenerator::Sitemap.adapter = SitemapGenerator::S3Adapter.new(
  fog_provider: 'AWS',
  aws_access_key_id: ENV['AWS_ACCESS_KEY_ID'],
  aws_secret_access_key: ENV['AWS_SECRET_ACCESS_KEY'],
  fog_directory: ENV['S3_BUCKET'],
  fog_region: ENV['AWS_REGION'])

# # create index for when multiple sitemaps
# SitemapGenerator::Sitemap.create_index = true

SitemapGenerator::Sitemap.create do
  # Usage: add(path, options={})
  #        (default options are used if you don't specify)
  #
  # Defaults: :priority => 0.5, :changefreq => 'weekly',
  #           :lastmod => Time.now, :host => default_host
  #
  add '/bestellen'
  add '/actievoorwaarden'
  add '/over-tenzen'
  add '/privacybeleid'
  add '/vragen'
  add '/garanties'
  add '/cookiebeleid'
  add '/retourneren'
  add '/algemene-voorwaarden'
  add '/algemene-voorwaarden-ingewikkeld'
  add '/contact'
  add '/bestellen/eenpersoons'
  add '/bestellen/eenpersoons/resultaat'
  add '/bestellen/tweepersoons'
  add '/bestellen/tweepersoons/solo'
  add '/bestellen/tweepersoons/solo/resultaat'
  add '/bestellen/tweepersoons/duo'
  add '/bestellen/tweepersoons/duo/resultaat'
  add '/afrekenen'

  # SEO PAGES
  add '/matrassen/delft', priority: 0.8
  add '/matrassen/den-hoorn', priority: 0.5
  add '/matrassen/delfgauw', priority: 0.5
  add '/matrassen/pijnacker', priority: 0.5
  add '/matrassen/venlo', priority: 0.8
  add '/matrassen/tegelen', priority: 0.5
  add '/matrassen/blerick', priority: 0.5
  add '/matrassen/venray', priority: 0.5
end
