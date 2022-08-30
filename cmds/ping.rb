def command(bot)
    commandName = :ping
    bot.command commandName do |event, *args |
        "hi {username}!".gsub("{username}", event.user.name)
    end
end