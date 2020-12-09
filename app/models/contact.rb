class Contact < MailForm::Base
  attribute :name,      validate: true
  attribute :email,     validate: /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :phone
  attribute :message,   validate:  true
  attribute :nickname,  captcha:   true

  def headers
    {
      subject: "Neue Nachricht von Webseite",
      to: "rene@swissmassiv.ch",
      bcc: "diego.unternaehrer@hotmail.com",
      from: %("#{name}" <#{email}>)
    }
  end
end
