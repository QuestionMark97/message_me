Rails.application.routes.draw do

	# Chatroom route
	root 'chatrooms#index'
	post 'chatroom' => 'chatrooms#create'

	#User route
	get 'signup' => 'users#new'
	post 'users' => 'users#create'

	# Session routes
	get 'login' => 'sessions#new'
	post 'login' => 'sessions#create'
	delete 'logout' => 'sessions#destroy'

	# Message route
	post 'message' => 'messages#create'

	# Channel route
	mount ActionCable.server, at: '/cable'

end
