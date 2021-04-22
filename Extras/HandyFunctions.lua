local HandyFunctions = {}

function HandyFunctions.ClearTypeOfChildren(instance,objecttype)
	for index, value in ipairs(instance:GetChildren()) do
		if value:IsA(objecttype) then
			value:Destroy()
		end
	end	
end

function HandyFunctions.ClearTypeOfDescendant(instance,objecttype)
	for index, value in ipairs(instance:GetDescendants()) do
		if value:IsA(objecttype) then
			value:Destroy()
		end
	end	
end

function HandyFunctions.ReturnListOfChildren(instance,printindex,newline) 
	local tableofchildren = {}
	for index, value in ipairs(instance:GetChildren()) do
		if printindex == true then
			table.insert(tableofchildren,#tableofchildren+1,"["..index.."] "..value.Name)	
		elseif printindex == false then
			table.insert(tableofchildren,#tableofchildren+1,value.Name)
		end
	end
	if newline == true then
		return table.concat(tableofchildren,"\n")
	elseif newline == false then
		return table.concat(tableofchildren,", ")
	end
end     

function HandyFunctions.GetPlayerURL(player,endpoint)
	if endpoint == "profile" then
		return "https://www.roblox.com/users/" .. player.UserId .. "/profile"
	elseif endpoint == "message" then
		return "https://www.roblox.com/messages/compose?recipientId=" .. player.UserId
	end
end

function HandyFunctions.ReturnListOfDescendants(instance,printindex,newline) 
	local tableofchildren = {}
	for index, value in ipairs(instance:GetDescendants()) do
		if printindex == true then
			table.insert(tableofchildren,#tableofchildren+1,"["..index.."] "..value.Name)	
		elseif printindex == false then
			table.insert(tableofchildren,#tableofchildren+1,value.Name)
		end
	end
	if newline == true then
		return table.concat(tableofchildren,"\n")
	elseif newline == false then
		return table.concat(tableofchildren,", ")
	end
end

return HandyFunctions
