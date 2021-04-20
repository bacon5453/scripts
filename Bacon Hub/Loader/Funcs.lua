local Funcs = {}


function Funcs:runscript(a)
    if a == 606849621 then
    gui:Destroy()
else
    if a == 286090429 then
        loadstring(game:HttpGet("https://raw.githubusercontent.com/bacon5453/scripts/main/Bacon%20Hub/Arsenal/guiv2.lua"))()
        wait()
        DestoryUI()
    else
        if a == 155615604 then
            loadstring(game:HttpGet("https://raw.githubusercontent.com/bacon5453/scripts/main/Bacon%20Hub/Prison%20Life/gui%20v2.lua"))()
            wait()
            DestoryUI()
        else
            if a == 1224212277 then
                loadstring(game:HttpGet("https://raw.githubusercontent.com/bacon5453/scripts/main/Bacon%20Hub/Mad%20City/guiv2.lua"))()
                wait()
                DestoryUI()
            else
                if a == 0 then
                    --loadstring(game:HttpGet("https://raw.githubusercontent.com/bacon5453/scripts/main/Bacon%20Hub/Arsenal/guiv2.lua"))()
                    wait()
                    DestoryUI()
                else
                    if a == 301549746 then
                        loadstring(game:HttpGet("https://raw.githubusercontent.com/bacon5453/scripts/main/Bacon%20Hub/Counter%20Blox/guiv2.lua"))()
                        wait()
                        DestoryUI()
                    else
                        if a == 0 then
                            --loadstring(game:HttpGet(""))()
                            wait()
                            DestoryUI()
                        end
                    end
                end
            end
        end
    end
end
end

function Funcs:gamename()
    if game.PlaceId == 0 then
        getgenv().Gui.Frame.MainFrame.GameName.Text = "test"
else
    if game.PlaceId == 286090429 then
        getgenv().Gui.Frame.MainFrame.GameName.Text = "Arsenal"
    else
        if game.PlaceId == 606849621 then
            getgenv().Gui.Frame.MainFrame.GameName.Text = "Jailbreak"
        else
            if game.PlaceId == 155615604 then
                getgenv().Gui.Frame.MainFrame.GameName.Text = "Mad City"
            else
                if game.PlaceId == 155615604 then
                    getgenv().Gui.Frame.MainFrame.GameName.Text = "Counter Blox"
                else
                    if game.PlaceId == 155615604 then
                        getgenv().Gui.Frame.MainFrame.GameName.Text = "Prison Life"
                    else
                        if game.PlaceId == 0 then
                            --script.Parent.MainFrame.GameName.Text = "Prison Life"

                    end
                end
            end
            end
        end
    end
end
end


return Funcs
