class Api::EmailValidationController < ApplicationController
  def validate_email 
    ApplicationMailer.welcome_email(params[:from], "647383").deliver_now
  end
  def verify_otp
  end
end

