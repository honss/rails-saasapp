class ContactMailerPreview < ActionMailer::Preview
	def contact_mail_preview
		ContactMailer.contact_email(Contact.all)
	end
end
