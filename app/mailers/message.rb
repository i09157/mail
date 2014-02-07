class Message < ActionMailer::Base

  def hello(contact,attachment)
    @contact = contact
    unless attachment.blank? then
      attachments[attachment.original_filename] = 
      { 
        :content => attachment.read,
        :transfer_encoding => :binary
      }
    end
    mail(
        from: @contact.user_name, 
        subject: @contact.subject,
        to: @contact.to,
        return_path:  @contact.email,
        reply_to: @contact.reply   
    )    
  end
end
