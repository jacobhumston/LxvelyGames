local function syncGuiColors(objects)
	local function setColors()
		for _, guiObject in pairs(objects) do
			guiObject.BackgroundColor3 = settings().Studio.Theme:GetColor(Enum.StudioStyleGuideColor.MainBackground)
			guiObject.TextColor3 = settings().Studio.Theme:GetColor(Enum.StudioStyleGuideColor.MainText)
		end
	end
	setColors()
	settings().Studio.ThemeChanged:Connect(setColors)
end


local widgetInfo = DockWidgetPluginGuiInfo.new(
	Enum.InitialDockState.Float, 
	true,   
	true,  
	300,    
	300,    
	150,    
	150     
)

local ChangeHistoryService = game:GetService("ChangeHistoryService")
local toolbar = plugin:CreateToolbar("Sign Creator V1")
local newbuttontop = toolbar:CreateButton("New Sign", "Create a Sign!", "rbxassetid://6304009908")

local newwindow = plugin:CreateDockWidgetPluginGui("CreateSignWindow", widgetInfo)
newwindow.Title = "New Sign - Sign Creator V1"
newwindow.Name = "Sign Creator V1"

local textbox = Instance.new("TextBox")
textbox.BorderSizePixel = 0
textbox.Text = "Sign Text Here!"
textbox.TextScaled = true
textbox.TextColor3 = Color3.new(1, 1, 1)
textbox.Size = UDim2.new(1,0,0.5,0)
textbox.Parent = newwindow
textbox.PlaceholderText = "Sign Text Here!"

local ConfirmButon = Instance.new("TextButton")
ConfirmButon.BorderSizePixel = 0
ConfirmButon.TextScaled = true
ConfirmButon.TextColor3 = Color3.new(1, 1, 1)
ConfirmButon.Size = UDim2.new(1,0,0.5,0)
ConfirmButon.Position = UDim2.new(0,0,0.5,0)
ConfirmButon.Text = "Create New Sign!"
ConfirmButon.Parent = newwindow

newwindow.Enabled = false

syncGuiColors({ConfirmButon})
syncGuiColors({textbox})

local function newtopbutton()
	if newwindow.Enabled == false then
		newwindow.Enabled = true
	else
		newwindow.Enabled = false
	end
	ConfirmButon.MouseButton1Down:Connect(function()
		script.NewSign.PartS.SurfaceGui.TextLabel.Text = textbox.Text
		script.NewSign:Clone().Parent = workspace
		ConfirmButon.Text = "Sign Created!"
		wait(1)
		ConfirmButon.Text = "Create New Sign!"
		ChangeHistoryService:SetWaypoint("Added New Sign!")
	end)
end
newbuttontop.Click:Connect(newtopbutton)
