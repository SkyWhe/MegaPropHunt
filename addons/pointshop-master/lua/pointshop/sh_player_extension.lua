local Player = FindMetaTable('Player')

-- Because of the huge variaty of admin mods and their various ways of handling usergroups.
-- This had to be done..
function Player:PS_GetTeam()
	-- add for each conflicting admin mod.

	return self:Team()
end
