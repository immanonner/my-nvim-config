-- Load the global settings
-- think of this as the settings for the *editor*. For example, the tab size
require("sets")

-- Load the keymaps
-- think of this as the keybindings for the *editor*. For example, how to save a file
require("remaps")

-- Load Lazy Plugin Manager
-- self explanatory
require("lazy_engine")

-- Load the plugins
-- telescope and other plugin configs will be found here, with their key remaps.
require("lazy").setup("plugins")

