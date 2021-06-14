--[[
	Register.lua
	Author: powerkasi
]]

source(Utils.getFilename("hud/Enums.lua", g_currentModDirectory))
source(Utils.getFilename("hud/Styles.lua", g_currentModDirectory))
source(Utils.getFilename("hud/Card.lua", g_currentModDirectory))
source(Utils.getFilename("libs/json.lua", g_currentModDirectory))
source(Utils.getFilename("libs/Helper.lua", g_currentModDirectory))
source(Utils.getFilename("classes/Tree.lua", g_currentModDirectory))
source(Utils.getFilename("classes/Stand.lua", g_currentModDirectory))
source(Utils.getFilename("Events.lua", g_currentModDirectory))
source(Utils.getFilename("gui/SettingsController.lua", g_currentModDirectory))
source(Utils.getFilename("WoodHarvesterMeasurement.lua", g_currentModDirectory))

Register = {};

local specName = "woodHarvesterMeasurement";
local className = "WoodHarvesterMeasurement";

function Register.Specialization(name)
	for vehicleTypeName, vehicleType in pairs(g_vehicleTypeManager.vehicleTypes) do
		if vehicleType ~=  nil then
			for specName, spec in pairs(vehicleType.specializationsByName) do
				if specName == "woodHarvester" then
					vehicleType.specializationsByName[name] = WoodHarvesterMeasurement;
					table.insert(vehicleType.specializationNames, name);
					table.insert(vehicleType.specializations, WoodHarvesterMeasurement);
				end
			end
		end
	end
end

if g_specializationManager:getSpecializationByName(className) == nil then
	Register.Specialization(specName)
else
	print("Error: " .. className .. " not found.")
end
