-- [[
--
-- ]]

function getOSType()
	if vim.fn.has('unix') then -- Unix
		return 'unix'
	end
	return 'win32'
end

