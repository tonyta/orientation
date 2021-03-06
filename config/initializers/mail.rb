# -*- encoding : utf-8 -*-
require 'yaml'

ActionMailer::Base.smtp_settings = {
  :address   => "smtp.mandrillapp.com",
  :port      => 587,
  :user_name => ENV.fetch("MANDRILL_USERNAME"),
  :password  => ENV.fetch("MANDRILL_PASSWORD"),
  :domain    => ENV.fetch("MANDRILL_DOMAIN")
}
ActionMailer::Base.delivery_method = :smtp

MandrillMailer.configure do |config|
  config.api_key = ENV.fetch("MANDRILL_API_KEY")
end
