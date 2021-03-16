local cooldown = false
script.Parent.Touched:Connect(function(touched)
	if touched.Parent:FindFirstChild("Humanoid") then
		if cooldown == false then
			cooldown = true
			touched.Parent.Humanoid:TakeDamage(script.Damage.Value)
			wait(script.Cooldown.Value)
			cooldown = false
		end
	end
end)
