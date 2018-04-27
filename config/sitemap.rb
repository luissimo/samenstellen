# Set the host name for URL creation
SitemapGenerator::Sitemap.default_host = "https://www.tenzen.nl"
SitemapGenerator::Sitemap.adapter = SitemapGenerator::S3Adapter.new(
  fogprovider: 'AWS',
  awsaccesskeyid: ENV['AWSACCESSKEYID'],
  awssecretaccesskey: ENV['AWSSECRETACCESSKEY'],
  fogdirectory: ENV['S3BUCKET'],
  fogregion: ENV['AWS_REGION'])

SitemapGenerator::Sitemap.sitemapshost = "https://s3-#{ENV['AWSREGION']}.amazonaws.com/#{ENV['S3_BUCKET']}/"
SitemapGenerator::Sitemap.sitemapspath = 'sitemaps/'
SitemapGenerator::Sitemap.publicpath = 'tmp/'

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
  add '/matrassen/den_hoorn', priority: 0.5
  add '/matrassen/delfgauw', priority: 0.5
  add '/matrassen/pijnacker', priority: 0.5
end