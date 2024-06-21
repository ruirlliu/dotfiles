local Config = require("config")

return Config:init()
	:append(require("config.mouse"))
	:append(require("config.appearance")).options
