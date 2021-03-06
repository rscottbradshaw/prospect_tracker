class Email < ActiveRecord::Base
  belongs_to :prospect

  def self.receive_mail(message)
    email = Email.create name: message[:from].value.split(" <").first, address: message.from.first, subject: message.subject, body: message.body.decoded

    email.attach_to_prospect
  end

  def attach_to_prospect
    prospect = Prospect.find_or_create_by(email: address)
    new_status = Status.find_by_name("New")
    prospect.update(name: name, status: new_status)
    self.prospect = prospect
    self.save
  end
end
