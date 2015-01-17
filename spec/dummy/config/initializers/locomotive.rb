Locomotive.configure do |config|

  # list of forbidden handles for a site because there are in conflicts with internal resources.
  # config.reserved_site_handles = %w(sites my_account password sign_in sign_out)

  # configure how many items we display in sub menu in the "Contents" section.
  config.ui = {
    per_page:           10
  }

  # default locale (for now, only en, de, fr, pl, pt, pt-BR, it, nl, nb, ja, cs, bg and sk are supported)
  config.default_locale = :en

  # available locales suggested to "localize" a site. You will have to pick up at least one among that list.
  # config.site_locales = %w{en de fr pl pt pt-BR it nl nb es ru ja cs bg sk}

  # tell if logs are enabled. Useful for debug purpose.
  config.enable_logs = true

  # the API authentication requires to developer to pass 2 params in the header
  # of the request: X-Locomotive-Account-Email and X-Locomotive-Token.
  # However, to keep backward compatability with v2.x versions, you can use
  # the "token" request param instead although it is considered unsafe.
  config.unsafe_token_authentication = true

  # Uncomment this line to force LocomotiveCMS to redirect all requests in the
  # back-office to https in production.
  # config.enable_admin_ssl = Rails.env.production?

  # Configure the e-mail address which will be shown in the DeviseMailer, NotificationMailer, ...etc
  # if you do not put the domain name in the email, Locomotive will take the default domain name depending
  # on your deployment target (server, Heroku, Bushido, ...etc)
  #
  # Ex:
  # config.mailer_sender = 'support'
  # # => 'support@heroku.com' (Heroku), 'support@bushi.do' (Bushido), 'support@example.com' (Dev) or 'support@<your_hosting_platform>' (Multi-sites)
  config.mailer_sender = 'support@dummy.com'

  # allow apps using the engine to add their own Liquid drops, variables and similar available
  # in Liquid templates, extending the assigns used while rendering.
  # follow the Dependency Injection pattern
  # config.context_assign_extensions = {}

  # add extra classes other than the defined content types among a site which will potentially used by the templatized pages.
  config.models_for_templatization = %w(Foo)

  # "Public" forms can be protected from Cross-Site Request Forgery (CSRF) attacks.
  # By default, that protection is disabled (false) in order to keep backwards compatibility with the existing public forms.
  #
  # Note: we strongly recommend to enable it. See the documentation about the "csrf_param" liquid tag.
  #
  # config.csrf_protection = true

  # Add the checksum of a theme asset at the end of its path to allow public caching.
  # By default, it's disabled.
  #
  # config.theme_assets_checksum = true

  # Rack-cache settings, mainly used for the inline resizing image module. Default options:
  # config.rack_cache = {
  #   verbose:     true,
  #   metastore:   URI.encode("file:#{Rails.root}/tmp/dragonfly/cache/meta"), # URI encoded in case of spaces
  #   entitystore: URI.encode("file:#{Rails.root}/tmp/dragonfly/cache/body")
  # }
  # If you do want to disable it for good, just use the following syntax
  # config.rack_cache = false
  #
  # Note: by default, rack/cache is disabled in the Heroku platform

end
