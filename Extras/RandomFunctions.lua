function KillWorkspace()
  for i,v in ipairs(workspace:GetChildren()) do
    if v ~= script then
    v:Destroy()
    end
  end
  print("haha workspace went boom")
end
