function DumpTable(t)
    local _________ = "local TABLE_DATA = {\n";
    local Indexes = {
        tIndex = 0;
    };

    function GIOT(t1)
        local i = 0;
        for _,__ in pairs(t1) do
            i = i + 1;
        end
        return i;
    end

    function getTab()
        local c = "";
        for i = 0, Indexes.tIndex do
            c = c .. " ";
        end
        return c;
    end

    function Yeet(t1)
        Indexes.tIndex = Indexes.tIndex + 1;
        local i = 0;
        for x,y in pairs(t1) do
            i = i + 1;
            if (i == GIOT(t1)) then
                if (type(y) == "table") then
                    _________ = _________ .. getTab() .. tostring(x) .. " = {\n";
                    Yeet(y);
                    _________ = _________ .. getTab() .. "}\n";
                elseif (type(y) == "string") then
                    if (type(x) ~= "number") then
                        _________ = _________ .. getTab()  .. tostring(x) .. " = \"" .. tostring(y) .. "\"\n";
                    else
                        _________ = _________ .. getTab() .. "[" .. tostring(x) .. "] = \"" .. tostring(y) .. "\"\n";
                    end
                else
                    if (type(x) ~= "number") then
                        _________ = _________ .. getTab() .. tostring(x) .. " = " .. tostring(y) .. "\n";
                    else
                        _________ = _________ .. getTab() .. "[" .. tostring(x) .. "] = " .. tostring(y) .. "\n";
                    end
                end
            else
                if (type(y) == "table") then
                    _________ = _________ .. getTab() .. tostring(x) .. " = {\n";
                    Yeet(y);
                    _________ = _________ .. getTab() .. "},\n";
                elseif (type(y) == "string") then
                    if (type(x) ~= "number") then
                        _________ = _________ .. getTab()  .. tostring(x) .. " = \"" .. tostring(y) .. "\",\n";
                    else
                        _________ = _________ .. getTab() .. "[" .. tostring(x) .. "] = \"" .. tostring(y) .. "\",\n";
                    end
                else
                    if (type(x) ~= "number") then
                        _________ = _________ .. getTab() .. tostring(x) .. " = " .. tostring(y) .. ",\n";
                    else
                        _________ = _________ .. getTab() .. "[" .. tostring(x) .. "] = " .. tostring(y) .. ",\n";
                    end
                end
            end
        end
        Indexes.tIndex = Indexes.tIndex - 1;
    end
    Yeet(t);
    _________ = _________ .. "}";
    return _________;
end
