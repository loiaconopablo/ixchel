TaskManagement::App.mailer :notification do

	email :contact_info_email do | taskManagement |
		from no_reply@ixchel.com
		to taskManagement.applicant_email
		subject 'Ixchel: Se ha creado una nueva tarea'
		locals :new_task => taskManagement.tasks
		content_type :plain
		render 'notification/contant_info_email'
	end
end