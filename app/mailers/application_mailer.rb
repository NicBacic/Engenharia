class ApplicationMailer < ActionMailer::Base
<<<<<<< Updated upstream

=======
>>>>>>> Stashed changes
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

