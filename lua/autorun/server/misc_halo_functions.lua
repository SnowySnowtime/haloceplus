-- This is just about how it works. 
-- Create a new projectile, replace (local projectile = ) with yours, 
-- make sure the function begins with the one you made in halo_shared.
-- So if i added one like HWA, i'd need to do HWA.FirePhysProjectile in here and in the weapon code.
-- This is how I fine tune the traveling effects and gravity.

-- Don't touch anythign else unless you KNOW what you are doing.
-- There's a reason why the only change is (local projectile = ).

function HALO.FirePhysProjectile( data )
	if not data then return end
	if not istable( data.filter ) then return end
	if not isvector( data.shootOrigin ) then return end
	if not isvector( data.shootDirection ) then return end
	if not IsValid( data.attacker ) then return end
	if not IsValid( data.attackingent ) then return end

	local projectile = ents.Create( "h3_tankprojectile" ) -- The projectile that is swapped to, from the base simfphys tankprojectile.
	projectile:SetPos( data.shootOrigin )
	projectile:SetAngles( data.shootDirection:Angle() )
	projectile:SetOwner( data.attackingent )
	projectile.Attacker = data.attacker
	projectile.AttackingEnt = data.attackingent 
	
	local filter = data.filter 
	table.insert( filter, projectile )

	projectile.Force = data.Force and data.Force or 100
	projectile.MuzzleVelocity = data.MuzzleVelocity
	projectile.Damage = data.Damage and data.Damage or 100
	projectile.BlastRadius = data.BlastRadius and data.BlastRadius or 200
	projectile.BlastDamage = data.BlastDamage and data.BlastDamage or 50
	projectile:SetBlastEffect( isstring( data.BlastEffect ) and data.BlastEffect or "simfphys_tankweapon_explosion" )
	projectile:SetSize( data.Size and data.Size or 1 )
	projectile.Filter = filter
	projectile:Spawn()
	projectile:Activate()
end

function H3.FirePhysProjectile( data )
	if not data then return end
	if not istable( data.filter ) then return end
	if not isvector( data.shootOrigin ) then return end
	if not isvector( data.shootDirection ) then return end
	if not IsValid( data.attacker ) then return end
	if not IsValid( data.attackingent ) then return end

	local projectile = ents.Create( "h3_tankprojectile" ) -- The projectile that is swapped to, from the base simfphys tankprojectile.
	projectile:SetPos( data.shootOrigin )
	projectile:SetAngles( data.shootDirection:Angle() )
	projectile:SetOwner( data.attackingent )
	projectile.Attacker = data.attacker
	projectile.AttackingEnt = data.attackingent 
	
	local filter = data.filter 
	table.insert( filter, projectile )

	projectile.Force = data.Force and data.Force or 100
	projectile.MuzzleVelocity = data.MuzzleVelocity
	projectile.Damage = data.Damage and data.Damage or 100
	projectile.BlastRadius = data.BlastRadius and data.BlastRadius or 200
	projectile.BlastDamage = data.BlastDamage and data.BlastDamage or 50
	projectile:SetBlastEffect( isstring( data.BlastEffect ) and data.BlastEffect or "simfphys_tankweapon_explosion" )
	projectile:SetSize( data.Size and data.Size or 1 )
	projectile.Filter = filter
	projectile:Spawn()
	projectile:Activate()
end

function HCE.FirePhysProjectile( data )
	if not data then return end
	if not istable( data.filter ) then return end
	if not isvector( data.shootOrigin ) then return end
	if not isvector( data.shootDirection ) then return end
	if not IsValid( data.attacker ) then return end
	if not IsValid( data.attackingent ) then return end

	local projectile = ents.Create( "hce_tankprojectile" ) -- The projectile that is swapped to, from the base simfphys tankprojectile.
	projectile:SetPos( data.shootOrigin )
	projectile:SetAngles( data.shootDirection:Angle() )
	projectile:SetOwner( data.attackingent )
	projectile.Attacker = data.attacker
	projectile.AttackingEnt = data.attackingent 
	
	local filter = data.filter 
	table.insert( filter, projectile )

	projectile.Force = data.Force and data.Force or 100
	projectile.MuzzleVelocity = data.MuzzleVelocity
	projectile.Damage = data.Damage and data.Damage or 100
	projectile.BlastRadius = data.BlastRadius and data.BlastRadius or 200
	projectile.BlastDamage = data.BlastDamage and data.BlastDamage or 50
	projectile:SetBlastEffect( isstring( data.BlastEffect ) and data.BlastEffect or "simfphys_tankweapon_explosion" )
	projectile:SetSize( data.Size and data.Size or 1 )
	projectile.Filter = filter
	projectile:Spawn()
	projectile:Activate()
end

function HCS.FirePhysProjectile( data )
	if not data then return end
	if not istable( data.filter ) then return end
	if not isvector( data.shootOrigin ) then return end
	if not isvector( data.shootDirection ) then return end
	if not IsValid( data.attacker ) then return end
	if not IsValid( data.attackingent ) then return end

	local projectile = ents.Create( "hcs_tankprojectile" ) -- The projectile that is swapped to, from the base simfphys tankprojectile.
	projectile:SetPos( data.shootOrigin )
	projectile:SetAngles( data.shootDirection:Angle() )
	projectile:SetOwner( data.attackingent )
	projectile.Attacker = data.attacker
	projectile.AttackingEnt = data.attackingent 
	
	local filter = data.filter 
	table.insert( filter, projectile )

	projectile.Force = data.Force and data.Force or 100
	projectile.MuzzleVelocity = data.MuzzleVelocity * 2
	projectile.Damage = data.Damage and data.Damage or 100
	projectile.BlastRadius = data.BlastRadius and data.BlastRadius or 200
	projectile.BlastDamage = data.BlastDamage and data.BlastDamage or 50
	projectile:SetBlastEffect( isstring( data.BlastEffect ) and data.BlastEffect or "simfphys_tankweapon_explosion" )
	projectile:SetSize( data.Size and data.Size or 1 )
	projectile.Filter = filter
	projectile:Spawn()
	projectile:Activate()
end

function SWR.FirePhysProjectile( data )
	if not data then return end
	if not istable( data.filter ) then return end
	if not isvector( data.shootOrigin ) then return end
	if not isvector( data.shootDirection ) then return end
	if not IsValid( data.attacker ) then return end
	if not IsValid( data.attackingent ) then return end

	local projectile = ents.Create( "snow_wraithproj" ) -- The projectile that is swapped to, from the base simfphys tankprojectile.
	projectile:SetPos( data.shootOrigin )
	projectile:SetAngles( data.shootDirection:Angle() )
	projectile:SetOwner( data.attackingent )
	projectile.Attacker = data.attacker
	projectile.AttackingEnt = data.attackingent 
	
	local filter = data.filter 
	table.insert( filter, projectile )

	projectile.Force = data.Force and data.Force or 100
	projectile.MuzzleVelocity = data.MuzzleVelocity
	projectile.Damage = data.Damage and data.Damage or 100
	projectile.BlastRadius = data.BlastRadius and data.BlastRadius or 200
	projectile.BlastDamage = data.BlastDamage and data.BlastDamage or 50
	projectile:SetBlastEffect( isstring( data.BlastEffect ) and data.BlastEffect or "simfphys_tankweapon_explosion" )
	projectile:SetSize( data.Size and data.Size or 1 )
	projectile.Filter = filter
	projectile:Spawn()
	projectile:Activate()
end

function SAA.FirePhysProjectile( data )
	if not data then return end
	if not istable( data.filter ) then return end
	if not isvector( data.shootOrigin ) then return end
	if not isvector( data.shootDirection ) then return end
	if not IsValid( data.attacker ) then return end
	if not IsValid( data.attackingent ) then return end

	local projectile = ents.Create( "snow_wraithproj_aa" ) -- The projectile that is swapped to, from the base simfphys tankprojectile.
	projectile:SetPos( data.shootOrigin )
	projectile:SetAngles( data.shootDirection:Angle() )
	projectile:SetOwner( data.attackingent )
	projectile.Attacker = data.attacker
	projectile.AttackingEnt = data.attackingent 
	
	local filter = data.filter 
	table.insert( filter, projectile )

	projectile.Force = data.Force and data.Force or 100
	projectile.MuzzleVelocity = data.MuzzleVelocity
	projectile.Damage = data.Damage and data.Damage or 100
	projectile.BlastRadius = data.BlastRadius and data.BlastRadius or 200
	projectile.BlastDamage = data.BlastDamage and data.BlastDamage or 50
	projectile:SetBlastEffect( isstring( data.BlastEffect ) and data.BlastEffect or "simfphys_tankweapon_explosion" )
	projectile:SetSize( data.Size and data.Size or 1 )
	projectile.Filter = filter
	projectile:Spawn()
	projectile:Activate()
end

function SNG.FirePhysProjectile( data )
	if not data then return end
	if not istable( data.filter ) then return end
	if not isvector( data.shootOrigin ) then return end
	if not isvector( data.shootDirection ) then return end
	if not IsValid( data.attacker ) then return end
	if not IsValid( data.attackingent ) then return end

	local projectile = ents.Create( "gauss_tankprojectile" ) -- The projectile that is swapped to, from the base simfphys tankprojectile.
	projectile:SetPos( data.shootOrigin )
	projectile:SetAngles( data.shootDirection:Angle() )
	projectile:SetOwner( data.attackingent )
	projectile.Attacker = data.attacker
	projectile.AttackingEnt = data.attackingent 
	
	local filter = data.filter 
	table.insert( filter, projectile )

	projectile.Force = data.Force and data.Force or 100
	projectile.MuzzleVelocity = data.MuzzleVelocity
	projectile.Damage = data.Damage and data.Damage or 100
	projectile.BlastRadius = data.BlastRadius and data.BlastRadius or 200
	projectile.BlastDamage = data.BlastDamage and data.BlastDamage or 50
	projectile:SetBlastEffect( isstring( data.BlastEffect ) and data.BlastEffect or "simfphys_tankweapon_explosion" )
	projectile:SetSize( data.Size and data.Size or 1 )
	projectile.Filter = filter
	projectile:Spawn()
	projectile:Activate()
end

function SWTYR.FirePhysProjectile( data )
	if not data then return end
	if not istable( data.filter ) then return end
	if not isvector( data.shootOrigin ) then return end
	if not isvector( data.shootDirection ) then return end
	if not IsValid( data.attacker ) then return end
	if not IsValid( data.attackingent ) then return end

	local projectile = ents.Create( "snow_wraithproj_tyrant" ) -- The projectile that is swapped to, from the base simfphys tankprojectile.
	projectile:SetPos( data.shootOrigin )
	projectile:SetAngles( data.shootDirection:Angle() )
	projectile:SetOwner( data.attackingent )
	projectile.Attacker = data.attacker
	projectile.AttackingEnt = data.attackingent 
	
	local filter = data.filter 
	table.insert( filter, projectile )

	projectile.Force = data.Force and data.Force or 100
	projectile.MuzzleVelocity = data.MuzzleVelocity
	projectile.Damage = data.Damage and data.Damage or 100
	projectile.BlastRadius = data.BlastRadius and data.BlastRadius or 200
	projectile.BlastDamage = data.BlastDamage and data.BlastDamage or 50
	projectile:SetBlastEffect( isstring( data.BlastEffect ) and data.BlastEffect or "simfphys_tankweapon_explosion" )
	projectile:SetSize( data.Size and data.Size or 1 )
	projectile.Filter = filter
	projectile:Spawn()
	projectile:Activate()
end