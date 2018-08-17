class UserMailer < ApplicationMailer

  default from: 'monmultitask@gmail.com'

  def welcome_email
    @user = params[:user]
    @url  = 'https://accounts.google.com/signin/v2/identifier?hl=fr&passive=true&continue=https%\3A%\2F%\2Fwww.google.com%\2F&flowName=GlifWebSignIn&flowEntry=ServiceLogin'
    mail(to: @user.email,
        subject: 'We welcome you to our page') do |format|
      format.html { render 'another_template' }
      format.text { render plain: 'Render text' }
    end
  end

  mail = Mail.new do
  to      'you@test.lindsaar.net'
  subject 'This is a test email'
  body    File.read('welcome_email.txt.erb')
  end
end
