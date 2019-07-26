class Api::EmailValidationController < ApplicationController
  
  def validate_email 
    @article = Article.find(params[:article_id])
    @email = params[:from]
    ApplicationMailer.welcome_email(params[:from], @article.otp_code).deliver_now
  end
  def verify_otp
    @article = Article.find(params[:article_id])
    @status = {}
    if @article.authenticate_otp(params[:otp], drift: 300)
EmailValidation.create(email: params[:email],  article_id: @article.id, status: true)
  @status = { result: true, message: "Valid OTP", article_id: @article.id }
else
EmailValidation.create(email: params[:email],  article_id: @article.id, status: false)
  @status = { result: false, message: "Invalid OTP"  }
end
  end
end
