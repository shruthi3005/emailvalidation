class ApplicationMailer < ActionMailer::Base
  default from: 'shruthireddyvari@gmail.com'
  layout 'mailer'
 def welcome_email(email,otp)
    @otp = otp
    # I am overriding the 'to' default
    mail(to: email, subject: 'OTP sent to your email')
  end
end
