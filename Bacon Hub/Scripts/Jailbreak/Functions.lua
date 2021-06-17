local Functions = {}


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
