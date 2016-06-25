require "open-uri"
require "json"

module Ruboty
  module Handlers
    class Irasutoya < Base
      JSON_URL = 'https://june29.github.io/irasutoya-data/irasutoya.json'

      on(
        /irasutoya ?(?<keyword>.+)?/,
        name: 'irasutoya',
        description: 'Search irasuto'
      )

      def irasutoya(message)
        query = Regexp.compile(message[:keyword])

        data = JSON.parse(open(JSON_URL).read)

        selected = data.select { |irasuto|
          %w(title description image_alt).any? { |element|
            irasuto[element] =~ query
          }
        }.sample

        if selected
          message.reply(selected['image_url'])
        else
          message.reply('No result')
        end
      end
    end
  end
end
