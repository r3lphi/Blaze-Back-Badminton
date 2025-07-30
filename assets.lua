local Assets = {}

function Assets.load_all()
	local files = love.filesystem.getDirectoryItems("assets/")
	print(files)
	print(#files)

	for _,filename in pairs(files) do
		print("Located " .. filename)
		local fileData = love.filesystem.newFileData("assets/" .. filename)
		local fileExtension = fileData:getExtension()

		local assetType = ""
		if fileExtension == "png" then
			assetType = "Sprites"
		end

		if Assets[assetType] == nil then Assets[assetType] = {} end
		Assets[assetType][string.gsub(filename, "." .. fileExtension, "")] = love.graphics.newImage("assets/" .. filename)
	end

	Assets.print(Assets)
end

function Assets.print(t, indent)
    indent = indent or ""
    for key, value in pairs(t) do
        if type(value) == "table" then
            print(indent .. key .. ": {")
           	Assets.print(value, indent .. "  ") -- Increase indent for nested tables
            print(indent .. "}")
        else
            print(indent .. key .. ": " .. tostring(value))
        end
    end
end

return Assets
