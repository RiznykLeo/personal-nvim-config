require("ttriznykleo")

local function safe_replace_commands()
	local commands = {
		"%s/Room/FacilityLocation/g",
		"%s/room/facilityLocation/g",
	}

	for _, cmd in ipairs(commands) do
		vim.cmd("silent! " .. cmd)
	end
end

-- Create a Neovim command to call the function
vim.api.nvim_create_user_command("SafeReplace", safe_replace_commands, {})
