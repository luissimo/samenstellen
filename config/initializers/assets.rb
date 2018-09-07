# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path
# Rails.application.config.assets.paths << Emoji.images_path

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
# Rails.application.config.assets.precompile += %w( search.js )

## JAVASCRIPTS && STYLESHEETS
Rails.application.config.assets.precompile += %w( custom.js jquery.validate.js jquery.placeholder.js
																									jquery.tweet.min.js jquery.bxslider.min.js quantity-bt.js
																									bootstrap.js retina.js owl.carousel.min.js functions.js fancy_func.js
																									check_radio/jquery.icheck.js modernizr.custom.17475.js respond.min.js
																									jquery.wizard.js jquery-ui-1.8.22.min.js jquery-1.10.2.min.js
																									fancybox/source/jquery.fancybox.pack.js fancybox/source/helpers/jquery.fancybox-media.js

                                                  home/jquery.min.js home/bootstrap.js home/jquery.counterup.min.js home/owl.carousel.min.js
                                                  home/owl.carousel.min.js home/jquery.easing.min.js home/script.js

																									bootstrap.css style.css fancybox/source/jquery.fancybox.css
																									check_radio/skins/square/aero.css jquery.switch.css owl.carousel.css owl.theme.css

                                                  home/bootstrap.css home/font-awesome.min.css home/flaticon.css home/owl.carousel.min.css home/colors/color-1.css
                                                  home/style.css)
