function DumpTable(t)
    local __________________  = tostring;
    local ___________________ = type;
    local _________ = "local TABLE_DATA = {\n";
    local ______ = {
        ________________ = 0;
    };

    function __________(t1)
        local i = 0;
        for _,__ in pairs(t1) do
            i = i + 1;
        end
        return i;
    end

    function ___________()
        local c = "";
        for i = 0, ______.________________ do
            c = c .. " ";
        end
        return c;
    end

    function ______________(t1)
        ______.________________ = ______.________________ + 1;
        local i = 0;
        for x,y in pairs(t1) do
            i = i + 1;
            if (i == __________(t1)) then
                if (___________________(y) == "table") then
                    _________ = _________ .. ___________() .. __________________(x) .. " = {\n";
                    ______________(y);
                    _________ = _________ .. ___________() .. "}\n";
                elseif (___________________(y) == "string") then
                    if (___________________(x) ~= "number") then
                        _________ = _________ .. ___________()  .. __________________(x) .. " = \"" .. __________________(y) .. "\"\n";
                    else
                        _________ = _________ .. ___________() .. "[" .. __________________(x) .. "] = \"" .. __________________(y) .. "\"\n";
                    end
                else
                    if (___________________(x) ~= "number") then
                        _________ = _________ .. ___________() .. __________________(x) .. " = " .. __________________(y) .. "\n";
                    else
                        _________ = _________ .. ___________() .. "[" .. __________________(x) .. "] = " .. __________________(y) .. "\n";
                    end
                end
            else
                if (___________________(y) == "table") then
                    _________ = _________ .. ___________() .. __________________(x) .. " = {\n";
                    ______________(y);
                    _________ = _________ .. ___________() .. "},\n";
                elseif (___________________(y) == "string") then
                    if (___________________(x) ~= "number") then
                        _________ = _________ .. ___________()  .. __________________(x) .. " = \"" .. __________________(y) .. "\",\n";
                    else
                        _________ = _________ .. ___________() .. "[" .. __________________(x) .. "] = \"" .. __________________(y) .. "\",\n";
                    end
                else
                    if (___________________(x) ~= "number") then
                        _________ = _________ .. ___________() .. __________________(x) .. " = " .. __________________(y) .. ",\n";
                    else
                        _________ = _________ .. ___________() .. "[" .. __________________(x) .. "] = " .. __________________(y) .. ",\n";
                    end
                end
            end
        end
        ______.________________ = ______.________________ - 1;
    end
    ______________(t);
    _________ = _________ .. "}";
    return _________;
end
