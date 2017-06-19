class NotificationMailer < ApplicationMailer
	 default from: "no-reply@nomsterapp.com"

	 def comment_added
	 	mail(to: "firehosedemo123@gmail.com",
	 		subject: "A comment has been added")
	 end
end
