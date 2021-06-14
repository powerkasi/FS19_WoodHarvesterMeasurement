--[[
	Events.lua
	Author: powerkasi
]]

SetCubicMetreTotalEvent = {};
SetCubicMetreTotalEvent_mt = Class(SetCubicMetreTotalEvent, Event);

InitEventClass(SetCubicMetreTotalEvent, "SetCubicMetreTotalEvent");

function SetCubicMetreTotalEvent:emptyNew()
	local self = Event:new(SetCubicMetreTotalEvent_mt);  
	return self;
end;

function SetCubicMetreTotalEvent:new(object, cubicMetreTotal)
	local self = SetCubicMetreTotalEvent:emptyNew();
	
	self.object = object;
	self.cubicMetreTotal = cubicMetreTotal;
	
	return self;
end;

-- Called on client side
function SetCubicMetreTotalEvent:readStream(streamId, connection)
	self.object = NetworkUtil.readNodeObject(streamId);
	self.cubicMetreTotal = streamReadFloat32(streamId);
	self:run(connection);
end;

-- Called on server side
function SetCubicMetreTotalEvent:writeStream(streamId, connection)
	NetworkUtil.writeNodeObject(streamId, self.object);
	streamWriteFloat32(streamId, self.cubicMetreTotal);
end;

function SetCubicMetreTotalEvent:run(connection)
	if not connection:getIsServer() then
		g_server:broadcastEvent(SetCubicMetreTotalEvent:new(self.object, self.cubicMetreTotal), nil, connection, self.object);
	end;
	
	if self.object ~= nil then
        self.object:setCubicMetreTotal(self.cubicMetreTotal, true);
	end;
end;

--[[ 
	
]]

SetCurrentDiameterEvent = {};
SetCurrentDiameterEvent_mt = Class(SetCurrentDiameterEvent, Event);

InitEventClass(SetCurrentDiameterEvent, "SetCurrentDiameterEvent");

function SetCurrentDiameterEvent:emptyNew()
	local self = Event:new(SetCurrentDiameterEvent_mt);  
	return self;
end;

function SetCurrentDiameterEvent:new(object, currentDiameter)
	local self = SetCurrentDiameterEvent:emptyNew();
	
	self.object = object;
	self.currentDiameter = currentDiameter;
	
	return self;
end;

-- Called on client side
function SetCurrentDiameterEvent:readStream(streamId, connection)
	self.object = NetworkUtil.readNodeObject(streamId);
	self.currentDiameter = streamReadFloat32(streamId);
	self:run(connection);
end;

-- Called on server side
function SetCurrentDiameterEvent:writeStream(streamId, connection)
	NetworkUtil.writeNodeObject(streamId, self.object);
	streamWriteFloat32(streamId, self.currentDiameter);
end;

function SetCurrentDiameterEvent:run(connection)
	if not connection:getIsServer() then
		g_server:broadcastEvent(SetCurrentDiameterEvent:new(self.object, self.currentDiameter), nil, connection, self.object);
	end;
	
	if self.object ~= nil then
        self.object:setCurrentDiameter(self.currentDiameter, true);
	end;
end;

--[[ 
	
]]

SetCurrentLengthEvent = {};
SetCurrentLengthEvent_mt = Class(SetCurrentLengthEvent, Event);

InitEventClass(SetCurrentLengthEvent, "SetCurrentLengthEvent");

function SetCurrentLengthEvent:emptyNew()
	local self = Event:new(SetCurrentLengthEvent_mt);  
	return self;
end;

function SetCurrentLengthEvent:new(object, currentLength)
	local self = SetCurrentLengthEvent:emptyNew();
	
	self.object = object;
	self.currentLength = currentLength;
	
	return self;
end;

-- Called on client side
function SetCurrentLengthEvent:readStream(streamId, connection)
	self.object = NetworkUtil.readNodeObject(streamId);
	self.currentLength = streamReadFloat32(streamId);
	self:run(connection);
end;

-- Called on server side
function SetCurrentLengthEvent:writeStream(streamId, connection)
	NetworkUtil.writeNodeObject(streamId, self.object);
	streamWriteFloat32(streamId, self.currentLength);
end;

function SetCurrentLengthEvent:run(connection)
	if not connection:getIsServer() then
		g_server:broadcastEvent(SetCurrentLengthEvent:new(self.object, self.currentLength), nil, connection, self.object);
	end;
	
	if self.object ~= nil then
        self.object:setCurrentLength(self.currentLength, true);
	end;
end;

--[[ 
	
]]

SetCutOnGoingEvent = {};
SetCutOnGoingEvent_mt = Class(SetCutOnGoingEvent, Event);

InitEventClass(SetCutOnGoingEvent, "SetCutOnGoingEvent");

function SetCutOnGoingEvent:emptyNew()
	local self = Event:new(SetCutOnGoingEvent_mt);  
	return self;
end;

function SetCutOnGoingEvent:new(object, cutOnGoing)
	local self = SetCutOnGoingEvent:emptyNew();
	
	self.object = object;
	self.cutOnGoing = cutOnGoing;
	
	return self;
end;

-- Called on client side
function SetCutOnGoingEvent:readStream(streamId, connection)
	self.object = NetworkUtil.readNodeObject(streamId);
	self.cutOnGoing = streamReadBool(streamId);
	self:run(connection);
end;

-- Called on server side
function SetCutOnGoingEvent:writeStream(streamId, connection)
	NetworkUtil.writeNodeObject(streamId, self.object);
	streamWriteBool(streamId, self.cutOnGoing);
end;

function SetCutOnGoingEvent:run(connection)
	if not connection:getIsServer() then
		g_server:broadcastEvent(SetCutOnGoingEvent:new(self.object, self.cutOnGoing), nil, connection, self.object);
	end;
	
	if self.object ~= nil then
        self.object:setCutOnGoing(self.cutOnGoing, true);
	end;
end;

--[[ 
	
]]

SetTreeSpecieEvent = {};
SetTreeSpecieEvent_mt = Class(SetTreeSpecieEvent, Event);

InitEventClass(SetTreeSpecieEvent, "SetTreeSpecieEvent");

function SetTreeSpecieEvent:emptyNew()
	local self = Event:new(SetTreeSpecieEvent_mt);  
	return self;
end;

function SetTreeSpecieEvent:new(object, treeSpecie)
	local self = SetTreeSpecieEvent:emptyNew();
	
	self.object = object;
	self.treeSpecie = treeSpecie;
	
	return self;
end;

-- Called on client side
function SetTreeSpecieEvent:readStream(streamId, connection)
	self.object = NetworkUtil.readNodeObject(streamId);
	self.treeSpecie = streamReadInt32(streamId);
	self:run(connection);
end;

-- Called on server side
function SetTreeSpecieEvent:writeStream(streamId, connection)
	NetworkUtil.writeNodeObject(streamId, self.object);
	streamWriteInt32(streamId, self.treeSpecie);
end;

function SetTreeSpecieEvent:run(connection)
	if not connection:getIsServer() then
		g_server:broadcastEvent(SetTreeSpecieEvent:new(self.object, self.treeSpecie), nil, connection, self.object);
	end;
	
	if self.object ~= nil then
        self.object:setTreeSpecie(self.treeSpecie, true);
	end;
end;

--[[ 
	
]]

SetJSONObjectEvent = {};
SetJSONObjectEvent_mt = Class(SetJSONObjectEvent, Event);

InitEventClass(SetJSONObjectEvent, "SetJSONObjectEvent");

function SetJSONObjectEvent:emptyNew()
	local self = Event:new(SetJSONObjectEvent_mt);  
	return self;
end;

function SetJSONObjectEvent:new(object, objectName, value)
	local self = SetJSONObjectEvent:emptyNew();
	self.object = object;
	self.objectName = objectName;
	self[self.objectName] = value;
	return self;
end;

-- Called on client side
function SetJSONObjectEvent:readStream(streamId, connection)
	self.object = NetworkUtil.readNodeObject(streamId);
	self.objectName = streamReadString(streamId);
	self[self.objectName] = streamReadString(streamId);
	self:run(connection);
end;

-- Called on server side
function SetJSONObjectEvent:writeStream(streamId, connection)
	NetworkUtil.writeNodeObject(streamId, self.object);
	streamWriteString(streamId, self.objectName);
	streamWriteString(streamId, self[self.objectName]);
end;

function SetJSONObjectEvent:run(connection)
	if not connection:getIsServer() then
		g_server:broadcastEvent(SetJSONObjectEvent:new(self.object, self.objectName, self[self.objectName]), nil, connection, self.object);
	end;
	
	if self.object ~= nil then
        self.object:setJSONObjectValue(self.objectName, self[self.objectName], true);
	end;
end;