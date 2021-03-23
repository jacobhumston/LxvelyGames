function KillWorkspace()
	for i,v in ipairs(workspace:GetChildren()) do
		if v ~= script and v:IsA("Terrain") == false and v:IsA("Camera") == false then
			v:Destroy()
		end
	end
	print("haha workspace went boom")
end

function KickAge(player,age)
        local timeword = "days"
	if age == 1 then
		timeword = "day"
	end	
	function sendmessage(message)
		print(message)
	end
	for i,v in ipairs(game:GetService("Players")) do
		local playerage = player.AccountAge
		if v ~= player then
			if playerage < age then
				v:Kick("⚠️ \nYou have been kicked dew to your account being less then ".. age .." ".. timeword .." old. \nMod/Admin: ".. player.Name)
				sendmessage("❌ | ".. v.Name .." was kicked. ".. playerage .." / ".. age)
			else
				sendmessage("✅ | ".. v.Name .." was not kicked. ".. playerage .." / ".. age)
			end	
		end
        end
end

function ListChildren(instance)
	print("📚 | Printing children.")
	for i,v in ipairs(instance:GetChildren()) do
		print(i .. " | " .. v.Name)
	end
	print("📚 | Finished printing children.")
end
