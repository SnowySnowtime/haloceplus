
local Tracer = Material( "effects/halo2/contrail_human" )
local Tracer2 = Material( "effects/halo2/contrail_human" )
local Tracer3 = Material( "effects/halo2/condensation_contrail" )
local Width = 80
local Width2 = 96
local Width3 = 64

function EFFECT:Init( data )

	self.Entity=data:GetEntity()
	if !IsValid(self.Entity) then return end
	self.Position = self.Entity:GetAttachment(1).Pos
	self.EndPos = data:GetOrigin()
	self.WeaponEnt = data:GetEntity()
	self.Attachment = data:GetAttachment()
	self.StartPos = self:GetTracerShootPos( self.Position, self.WeaponEnt, self.Attachment )
	self:SetRenderBoundsWS( self.StartPos, self.EndPos )

	self.Dir = ( self.EndPos - self.StartPos ):GetNormalized()
	self.Dist = self.StartPos:Distance( self.EndPos )
	
	self.LifeTime = 0.2
	self.LifeTime2 = 0.8
	self.DieTime = CurTime() + self.LifeTime
	self.DieTime2 = CurTime() + self.LifeTime2

end

function EFFECT:Think()

	if ( CurTime() > self.DieTime ) then return false end
	return true

end

function EFFECT:Render()


	
	local v = ( self.DieTime - CurTime() ) / self.LifeTime
	local v2 = ( self.DieTime2 - CurTime() ) / self.LifeTime2
	


	
	render.SetMaterial( Tracer3 )
	for i=1, 2 do
	render.DrawBeam( self.StartPos, self.EndPos, ( Width3 / i)* v2, 0, (self.Dist/10)*math.Rand(-2,2), Color( 255, 255, 255, v * 100 ) )
	end
	
	render.SetMaterial( Tracer2 )
	for i=1, 8 do
	render.DrawBeam( self.StartPos, self.EndPos, ( Width2 / i)* v, 0, (self.Dist/10)*math.Rand(-2,2), Color( 255, 255, 255, v * 100 ) )
	end
	
	render.SetMaterial( Tracer )
	for i=1, 4 do
	render.DrawBeam( self.StartPos, self.EndPos, ( Width / i)* v, 0, (self.Dist/10)*math.Rand(-2,2), Color( 255, 255, 255, v * 100 ) )
	end
end
