local Functions = {}


function Functions:CheckStore(a)
    if a == "Jewelry" then
    for i,v in next,game:GetService("Workspace").Jewelrys:GetChildren() do
    if v:isA("Model") and v.Extra ~= nil then
    if v.Extra.Sign.Decal.Transparency ~= 0 then
    return true
    else
    return false
    end
    end
    end
    end
    if a == "Bank" then
    for i,v in next,game:GetService("Workspace").Banks:GetChildren() do
    if v:isA("Model") and v.Extra ~= nil then
    if v.Extra.Sign.Decal.Transparency ~= 0 then
    return true
    else
    return false
    end
    end
    end
    end
    if a == "Museum" then
        for i,v in next,game.Workspace.Museum.Roof.Hole:GetChildren() do
            if v:GetChildren()[1] then
                if v.Transparency == 0 then
                    return false
                else
                    return true
                end
            end
            end
        end
    
    end


    function Functions:removedamageparts()
        for i,v in next,game:GetService("Workspace").Jewelrys:GetDescendants() do
        if v.Name == "BarbedWire" then
        v:Destroy()
        end
        end

        for i,v in next,game:GetService("Workspace").Jewelrys:GetDescendants() do
        if v.Name == "Lasers"  then
        v:Destroy()
        end
        end
        for i,v in next,game:GetService("Workspace").Banks:GetDescendants() do
        if v.Name == "Lasers" then
        v:Destroy()
        end
        end
        
        end

        function Functions:UntilNotInCar()
            while wait() do
                if not game:GetService("Players").LocalPlayer.Character.Humanoid.Sit then
                    break
                end
                end
        
            end


            function Functions:removedoors()
                for i,v in next,Ws.Doors:GetChildren() do
                if v.Name == "SwingDoor" then
                v:Destroy()
                end
                end
                
                end

        return Functions
