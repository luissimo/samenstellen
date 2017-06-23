# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path
# Rails.application.config.assets.paths << Emoji.images_path

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
# Rails.application.config.assets.precompile += %w( search.js )

## JAVASCRIPTS
	Rails.application.config.assets.precompile += %w( jquery.validate.js)
	Rails.application.config.assets.precompile += %w( jquery.placeholder.js )
	Rails.application.config.assets.precompile += %w( jquery.tweet.min.js )
	Rails.application.config.assets.precompile += %w( jquery.bxslider.min.js )
	Rails.application.config.assets.precompile += %w( quantity-bt.js )

	Rails.application.config.assets.precompile += %w( bootstrap.js )
	Rails.application.config.assets.precompile += %w( retina.js )
	Rails.application.config.assets.precompile += %w( owl.carousel.min.js )
	Rails.application.config.assets.precompile += %w( functions.js )
	Rails.application.config.assets.precompile += %w( fancy_func.js )

	Rails.application.config.assets.precompile += %w( check_radio/jquery.icheck.js )
	Rails.application.config.assets.precompile += %w( modernizr.custom.17475.js )
	Rails.application.config.assets.precompile += %w( respond.min.js )
	Rails.application.config.assets.precompile += %w( jquery.wizard.js )
	Rails.application.config.assets.precompile += %w( jquery-ui-1.8.22.min.js )

	Rails.application.config.assets.precompile += %w( jquery-1.10.2.min.js )
	Rails.application.config.assets.precompile += %w( fancybox/source/jquery.fancybox.pack.js )
	Rails.application.config.assets.precompile += %w( fancybox/source/helpers/jquery.fancybox-media.js )


## STYLESHEETS
	Rails.application.config.assets.precompile += %w( bootstrap.css )
	Rails.application.config.assets.precompile += %w( style.css )
	Rails.application.config.assets.precompile += %w( fancybox/source/jquery.fancybox.css )
	Rails.application.config.assets.precompile += %w( check_radio/skins/square/aero.css )

	Rails.application.config.assets.precompile += %w( jquery.switch.css )
	Rails.application.config.assets.precompile += %w( owl.carousel.css )
	Rails.application.config.assets.precompile += %w( owl.theme.css )
