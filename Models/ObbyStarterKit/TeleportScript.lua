local debounce = false
script.Parent.Start.Touched:Connect(function(touched)
	if touched.Parent:FindFirstChild("Humanoid") then
		if debounce == false then
			debounce = true
			touched.Parent.Humanoid.RootPart.Position = Vector3.new(script.Parent.End.Position.X,script.Parent.End.Position.Y + 5,script.Parent.End.Position.Z)
			wait(script.Cooldown.Value)
			debounce = false	
		end
	end
end)
