local wezterm = require 'wezterm'

return {

   term = "xterm-256color",
   -- behaviours
   automatically_reload_config = true,
   exit_behavior = 'CloseOnCleanExit', -- if the shell program exited with a successful status
   exit_behavior_messaging = 'Verbose',
   status_update_interval = 1000,

   -- Scrollback
   scrollback_lines = 5000,
   enable_scroll_bar = true,

   hyperlink_rules = wezterm.default_hyperlink_rules()

}
