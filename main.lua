local discordia = require('discordia')
local client = discordia.Client()

client:on('ready', function()
	print('Logged in as '.. client.user.username)
end)
 
client:on("messageCreate", function(message)

	local content = message.content
	local author = message.author

	if content == "lua_help" then
		message:reply {
			embed = {
				title = "Page d'aide DevBot -Help",
				description = "Voici le prefox du bot Devbot `lua_`",
			
				fields = { -- array of fields
					{
						name = "Utilitaires",
						value = "`lua_help`,`lua_ping`,`lua_Info`",
						inline = true
					},
					{
						name = "Administration",
						value = "`lua_purge`",
						inline = false
					}
				},
				footer = {

					text = author.username..os.date("\n%m/%d/%Y %H:%M:%S"),
					icon_url = author.avatarURL
				},
				color = 15158332 -- hex color code
			}
		}
	end

end)

client:on("messageCreate", function(message)

	local content = message.content
	local author = message.author

	if content == "lua_ping" then
		message:reply {
			embed = {
				title = "Ping ?",
				description = "Pong  🏓 !",

				footer = {
					text = author.username..os.date("\n%m/%d/%Y %H:%M:%S"),
					icon_url = author.avatarURL
				},
				color = 15158332 -- hex color code
			}
		}
	end
end)

client:on("messageCreate", function(message)

	local content = message.content
	local author = message.author

	if content == "lua_purge" then
		message:reply {
			embed = {
				title = "Pas encore Dev",
				footer = {
					text = author.username..os.date("\n%m/%d/%Y %H:%M:%S"),
					icon_url = author.avatarURL
				},
				color = 15158332 -- hex color code
			}
		}
	end
end)

client:on("messageCreate", function(message)

	local content = message.content
	local author = message.author
	local user = author.username

	if content == "lua_info" then
		message:reply {
			embed = {
				title = "UserInfo",
				fields = { -- array of fields
					{
						name = "User Tag",
						value = "`" ..author.tag.."`" ,
						inline = true
					},
					{
						name = "User Id",
						value = "`" ..author.id.. "`",
						inline = true
					},
				},
				footer = {
					text = author.username..os.date("\n%m/%d/%Y %H:%M:%S"),
					icon_url = author.avatarURL
				},
				color = 15158332 -- hex color code
			}
		}
	end
end)
 
client:run('Bot TOKEN')
