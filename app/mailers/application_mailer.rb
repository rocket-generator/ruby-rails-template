# frozen_string_literal: true

# ApplicationMailer is a base class for mailers
class ApplicationMailer < ActionMailer::Base
  default from: 'from@example.com'
  layout 'mailer'
end
