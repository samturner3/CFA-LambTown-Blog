class ContactMailer < ApplicationMailer

  default from: 'webmaster@lambtown.com'

  def send_contact_email(email, message)
    @email = email
    @message = message
    mail(to: 'me@samturner.net.au',
    subject: 'New message from website')
      #  do |format|
          # format.html { render 'contact_mailer/contact_mailer' }
          # format.text { render 'contact_mailer/contact_mailer' }
      # end
    end

end
