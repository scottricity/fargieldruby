require 'discordrb'
require 'fs'

bot = Discordrb::Commands::CommandBot.new token: FS.read('token.txt'), prefix: 'f.'

FS.list('cmds').each do |fileName|
    require ("./cmds/" + fileName)
    command(bot)
end

bot.run
