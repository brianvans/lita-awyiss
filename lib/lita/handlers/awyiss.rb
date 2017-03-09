require 'json'

module Lita
  module Handlers
    class Awyiss < Handler
      route(
        /^aw+yiss\s(.+)$/i,
        :duck,
        command: true,
        help: { "awyiss PHRASE" => "Mutha fucking ducks" }
      )

      def duck(response)
        uri = URI('http://awyisser.com/api/generator')
        post = Net::HTTP.post_form(uri, "phrase" => response.matches.flatten[0])
        link = JSON.parse(post.body).fetch('link')
        response.reply(link)
      end

      Lita.register_handler(self)
    end
  end
end
