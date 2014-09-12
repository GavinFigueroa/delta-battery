package deltabattery.weapons 
{
	import cobaltric.ContainerGame;
	import deltabattery.SoundPlayer;
	import flash.geom.Point;
	import flash.media.Sound;
	
	/**	Standard primary weapon
	 * 
	 * 	Surface-to-Air Missile
	 *
	 * @author Alexander Huynh
	 */
	public class Weapon_SAM extends ABST_Weapon 
	{
		[Embed(source="../../sounds/SFX_missileNormFire.wav", mimeType="application/octet-stream")]
		private var sfx_missile:Class;
		
		public function Weapon_SAM(_cg:ContainerGame, _slot:int) 
		{
			super(_cg, _slot);
			name = "SAM";
			projectileParams["velocity"] = 7;
			
			//SoundPlayer.play("sfx_missile");
			//(new sfx_missile as Sound).play();
		}
		
		override protected function createProjectile():void
		{
			cg.manMiss.spawnProjectile("standard", new Point(turret.x, turret.y - 15),
												   new Point(cg.mx, cg.my),
										TURRET_ID, projectileParams);
		}
	}
}