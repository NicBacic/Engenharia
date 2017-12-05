class ApplicationMailer < ActionMailer::Base
  default from: 'rottenpxls@gmail.com'
  layout 'mailer'

  def feedbackForm
    @titulo = null
    render :'feedback_mailer/feedbackForm'


  end

  def feedbackMail
    mail(to: 'rottenpxls@gmail.com', subject: @titulo)
  end

end

