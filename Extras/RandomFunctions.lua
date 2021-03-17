function KillWorkspace()
	for i,v in ipairs(workspace:GetChildren()) do
		if v ~= script and v:IsA("Terrain") == false and v:IsA("Camera") == false then
			v:Destroy()
		end
	end
	print("haha workspace went boom")
end
