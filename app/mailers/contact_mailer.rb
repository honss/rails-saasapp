class ContactMailer < ActionMailer::Base
  default to: 'aidanlevy03@gmail.com'

  def contact_email(name, email, body)
    @name = name
    @email = email
    @body = body

    mail(from: 'contact_reports@aidandns.ddns.net', subject:'Contact Form Message')
  end
end
