--[[
local Bracket = loadstring(game:HttpGet("https://raw.githubusercontent.com/AlexR32/Bracket/main/BracketV32.lua"))()
Bracket:Notification({Title = "Text",Description = "Text",Duration = 10}) -- Duration can be nil for "x" to pop up
Bracket:Notification2({Title = "Text",Duration = 10})

-- see source code for more hidden things i forgot to add in this example
local Window = Bracket:Window({Name = "Window",Enabled = true,Color = Color3.new(1,0.5,0.25),Size = UDim2.new(0,496,0,496),Position = UDim2.new(0.5,-248,0.5,-248)}) do
    --Window:SetName("Name")
    --Window:SetSize(UDim2.new(0,496,0,496))
    --Window:SetPosition(UDim2.new(0.5,-248,0.5,-248))
    --Window:SetColor(Color3.new(1,0.5,0.25))
    --Window:Toggle(true)

    --Window:SetValue("Flag",Value)
    --Window:GetValue("Flag")

    --Window:SaveConfig("FolderName", "ConfigName")
    --Window:LoadConfig("FolderName", "ConfigName")
    --Window:DeleteConfig("FolderName", "ConfigName")
    --Window:GetDefaultConfig("FolderName")
    --Window:LoadDefaultConfig("FolderName")

    --Window.Background -- ImageLabel

    local Watermark = Window:Watermark({
        Title = "Bracket V3.2 | Example",
        Flag = "UI/Watermark/Position",
        Enabled = true,
    })
    --Watermark:Toggle(true)
    --Watermark:Transparency(1)
    --Watermark:SetTitle("Text")
    --Watermark:SetValue({1,0,1,0}) -- Position, UDim2 but table

    local Tab = Window:Tab({Name = "Tab"}) do
        --Side might be "Left", "Right" or nil for auto side choose
        --Tab:AddConfigSection("FolderName", "Side")
        --Tab:SetName("Tab")

        local Divider = Tab:Divider({Text = "Divider", Side = "Left"})
        --Divider:SetText("Text")

        local Label = Tab:Label({Text = "Label", Side = "Left"})
        --Label:SetText("Text")

        local Button = Tab:Button({Name = "Button", Side = "Left", Callback = function() end})
        --Button:SetName("Name")
        --Button:SetCallback(function() end)
        --Button:ToolTip("Text")

        local Toggle = Tab:Toggle({Name = "Toggle",Flag = "Toggle", Side = "Left",Value = false, Callback = function(Toggle_Bool) end})
        --Toggle:SetName("Name")
        --Toggle:SetValue(true) -- Boolean
        --Toggle:SetCallback(function(Toggle_Bool) end)
        --Toggle:ToolTip("Text")

        local ToggleKeybind = Toggle:Keybind({Value = "NONE",Flag = "Toggle/Keybind",DoNotClear = false,Mouse = false, Callback = function(Key_String,Pressed_Bool) end,
        Blacklist = {"W", "A", "S", "D", "Slash", "Tab", "Backspace", "Escape", "Space", "Delete", "Unknown", "Backquote"}})
        --ToggleKeybind:SetValue("B")
        --ToggleKeybind:SetCallback(function(Key_String,Bool) end)

        local Slider = Tab:Slider({Name = "Slider",Flag = "Slider", Side = "Left",Min = 0,Max = 100,Value = 50,Precise = 2,Unit = "", Callback = function(Value_Number) end})
        --Slider:SetName("Name")
        --Slider:SetValue(50)
        --Slider:SetCallback(function(Value_Number) end)
        --Slider:ToolTip("Text")

        local Textbox = Tab:Textbox({Name = "Textbox",Flag = "Textbox", Side = "Left",Value = "Text",Placeholder = "Placeholder",NumberOnly = false, Callback = function(Text_String) end})
        --Textbox:SetName("Name")
        --Textbox:SetValue("Text")
        --Textbox:SetPlaceholder("Text")
        --Textbox:SetCallback(function(Text_String) end)
        --Textbox:ToolTip("Text")

        local Keybind = Tab:Keybind({Name = "Keybind",Flag = "Keybind", Side = "Left",Value = "NONE",Mouse = false,DoNotClear = false, Callback = function(Key_String,Pressed_Bool,Toggle_Bool) end,
        Blacklist = {"W", "A", "S", "D", "Slash", "Tab", "Backspace", "Escape", "Space", "Delete", "Unknown", "Backquote"}})
        --Keybind:SetName("Name")
        --Keybind:SetValue("B")
        --Keybind:SetCallback(function(Key_String,Pressed_Bool,Toggle_Bool) end)
        --Keybind:ToolTip("Text")

        local BodyParts = {"Head"}
        local Dropdown = Tab:Dropdown({Name = "Dropdown",Flag = "Dropdown", Side = "Left",List = {
            {
                Name = "Head",
                Mode = "Toggle", -- Button or Toggle
                Value = false, -- Default
                Callback = function(Selected)
                    BodyParts = Selected
                    print(BodyParts)
                end
            },
            {
                Name = "HumanoidRootPart",
                Mode = "Toggle",
                Value = false,
                Callback = function(Selected)
                    BodyParts = Selected
                    print(BodyParts)
                end
            }
        }})
        --Dropdown:BulkAdd(List_Table)
        --Dropdown:RemoveOption("Name")
        --Dropdown:Clear()
        --Dropdown:SetValue(Options_Table)
        --Dropdown:SetName("Name")
        --Dropdown:ToolTip("Text")

        local Colorpicker = Tab:Colorpicker({Name = "Colorpicker",Flag = "Colorpicker", Side = "Left",Value = {1,1,1,0,false}, Callback = function(HSVAR_Table,Color3) end})
        --Colorpicker:SetName("Name")
        --Colorpicker:SetCallback(function(HSVAR_Table,Color3) end)
        --Colorpicker:SetValue({1,1,1,0,false}) -- HSV A R
        --Colorpicker:ToolTip("Text")

        local Section = Tab:Section({Name = "Section", Side = "Right"}) do
            --Section:SetName("Section")

            --Same Elements as in tab but "Side" key in table does nothing
            Section:Divider()
            Section:Label()
            Section:Button()
            Section:Toggle()
            Section:Slider()
            Section:Textbox()
            Section:Keybind()
            Section:Dropdown()
            Section:Colorpicker()
        end
    end
end
]]
