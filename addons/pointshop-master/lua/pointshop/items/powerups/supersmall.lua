ITEM.Name = 'Super Small'
ITEM.Price = 1000
ITEM.Model = 'models/props_junk/garbage_glassbottle003a.mdl'
ITEM.NoPreview = true

function ITEM:OnEquip(ply, modifications)
	ply:SetModelScale(.5, 0)
	if(ply:Team() == 2) then
		ply:SetNWFloat("modelScale", .5)
		local offset = Vector(0, 0, 32)
		ply:SetViewOffset(offset)
		ply:SetViewOffsetDucked(offset)
	end

	if(ply:Team() == 3) then
		if(ply:IsDisguised()) then
		tempEnt = ply:GetNWEntity("disguiseEntity")
		ply:SetNWFloat("modelScale", .5)
		ply:DisguiseAsPropScale(tempEnt, .5)
	end
	end

end

function ITEM:OnHolster(ply)
	ply:SetModelScale(1, 1)

	if(ply:Team() == 2) then
		ply:SetNWFloat("modelScale", 1)
		local offset = Vector(0, 0, 64)
		ply:SetViewOffset(offset)
		ply:SetViewOffsetDucked(offset)
	end

	if(ply:Team() == 3) then
				if(ply:IsDisguised()) then
		tempEnt = ply:GetNWEntity("disguiseEntity")
		ply:SetNWFloat("modelScale", 1)
		ply:DisguiseAsPropScale(tempEnt, 1.5)
	end
	end
end