class BugMailer < ActionMailer::Base  
  default to: 'aidanlevy03@gmail.com'

  def bug_email(title, description)
    @title = title
    @description = description

    mail(from: 'bug_mailer@aidandns.ddns.net', subject: 'New Bug Report')
  end
end
