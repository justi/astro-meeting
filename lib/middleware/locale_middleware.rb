module Middleware
	class LocaleMiddleware
		def initialize(app)
			@app = app
		end

		def call(env)
			I18n.locale = :pl # Or whatever logic you use to choose.
			status, headers, body = @app.call(env)
		end
	end
end