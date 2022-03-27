# frozen_string_literal: true

require 'rack'

class App
  class << self
    def call(_env)
      [200, { 'Content-Type' => 'text/html' }, [template('X-Ruby-Version' => RUBY_VERSION.to_s)]]
    end

    def template(name)
      <<~HTML
        <!DOCTYPE html>
        <html lang="ru">
          <head>
            <title>#{name}</title>
            <meta charset='utf-8'>
          </head>
          <body>
            <h1>#{name}<h1>
          </body>
        </html>
      HTML
    end
  end
end

run App
