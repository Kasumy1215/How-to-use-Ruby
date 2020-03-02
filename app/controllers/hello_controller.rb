class HelloController < ApplicationController

	def index
		#Step1
		# render plain: "Hello, This is Rails sample page!"

		#Step2
		# msg = '
		# <html>
		# <body>
		# 	<h1>Sample Page</h1>
		# 	<p>this is Rails sample page!</p>
		# </body>
		# </html>
		# '
		# render html:msg.html_safe

		#Step3
		# if params['msg'] != nil then
		# 	msg = 'Hello, ' + params['msg'] + '!'
		# else
		# 	msg = 'this is sample page.'
		# end
		# html = '
		# <html>
		# <body>
		# <h1>Sample Page</h1>
		# <p>' + msg + '</p>
		# </body>
		# </html>
		# '
		# render html:html.html_safe

		#Step4
		# def index
		# 	@title = "View Sample"
		# 	@msg = "this value comes from Controller"
		# end

		#Step5
		# def index
		# 	if params['msg'] != nil then
		# 		@title = params['msg']
		# 	else
		# 		@title = 'index'
		# 	end
		# 	@msg = 'this is redirect sample...'
		# end
		# def other
		# 	redirect_to action: :index, params: {'msg':'from other page'}
		# end

		#Step6
		# if request.post? then
		# 	@title = 'Result'
		# 	@msg = 'you typed: ' + params['input1'] + '.'
		# 	@value = params['input1']
		# else
		# 	@title = 'Index'
		# 	@msg = 'type text ...'
		# 	@value = ''
		# end
		#Step7
		# if request.post? then
		# 	@title = 'Result'
		# 	if params['check1'] then
		# 		@msg = 'you checked!'
		# 	else
		# 		@msg = 'not checked..'
		# 	end
		# 	@value = params['input1']
		# else
		# 	@title = 'Index'
		# 	@msg = 'check it ...'
		# 	@value = ''
		# end
		#Step8
		if request.post? then
			@title = 'Result'
			if params['s1'] then
				@msg = 'you selected:' + params['s1']
			else
				@msg = 'not selected..'
			end
		else
			@title = 'Index'
			@msg = 'select List ...'
		end
	end
end
