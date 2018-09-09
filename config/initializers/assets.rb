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
																									bootstrap.js functions.js check_radio/jquery.icheck.js
                                                  modernizr.custom.17475.js respond.min.js jquery.wizard.js
                                                  jquery-ui-1.8.22.min.js jquery-1.10.2.min.js

                                                  home/jquery.min.js home/bootstrap.js home/jquery.counterup.min.js
                                                  home/jquery.easing.min.js

																									bootstrap.css style.css check_radio/skins/square/aero.css jquery.switch.css
                                                  home/bootstrap.css home/font-awesome.min.css home/flaticon.css home/colors/color-1.css
                                                  home/style.css
                                                  )
