for i,v in ipairs(script.Parent:GetChildren()) do
	if v:IsA("BasePart") then
		v.Touched:Connect(function(touched)
			if touched.Parent:FindFirstChild("Humanoid") then
				if v.Cooldown:GetAttribute("active") == false then
					v.Cooldown:SetAttribute("active",true)
					touched.Parent.Humanoid:TakeDamage(v.Damage.Value)
					wait(v.Cooldown.Value)
					v.Cooldown:SetAttribute("active",false)
				end
			end
		end)
	end
end
