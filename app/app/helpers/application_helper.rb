module ApplicationHelper
	def is_current_page?(path)
		'active' if current_page?(path)
	end

	def button_login_for(user, html_options = {})
		options = options(user)
		link_to options[:name], options[:url], method: options[:method], class: html_options.values
	end 

	def cashiero_of_the_exit cashiero
		"error" if cashiero.operation == "saida"
	end

	private 
	def options(login)
		if login.nil?
			{name: 'Entrar', url: new_user_session_path, method: :post}
		else
			{name: 'Sair', url: destroy_user_session_path, method: :delete}
		end
	end


end
