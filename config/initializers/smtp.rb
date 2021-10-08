ActionMailer::Base.smtp_settings = {
  user_name: 'apikey',
  password: 'SENDGRID_API_KEY',
  domain: 'jolly-br.com',
  address: 'smtp.sendgrid.net',
  port: 587,
  authentication: :plain,
  enable_starttls_auto: true
}
