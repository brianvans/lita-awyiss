require 'json'

module Lita
  module Handlers
    class Awyiss < Handler
      route(/^aw+yiss\s(.+)$/i,
        :command => true,
        :help => { "awyiss PHRASE" => "Mutha fucking ducks" }
      ) do |response|
        response.reply(ducks(response.matches.flatten[0]))
      end

      def ducks(text)
        uri = URI('http://awyisser.com/api/generator')
        response = Net::HTTP.post_form(uri, { "phrase" => text })
        link = JSON.parse(response.body)['link']
        return link 
      end

      Lita.register_handler(self)
    end
  end
end
