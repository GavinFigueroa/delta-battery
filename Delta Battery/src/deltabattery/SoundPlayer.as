package deltabattery 
{
	import flash.media.Sound;
	/**
	 * ...
	 * @author Alexander Huynh
	 */
	public class SoundPlayer 
	{
		[Embed(source = "../sounds/SFX_chaingunNorm.wav", mimeType = "application/octet-stream")]private static var sfx_missile:Class;
		
		[Embed(source = "../sounds/SFX_explodeNorm.wav", mimeType = "application/octet-stream")]private static var sfx_chaingun:Class;
		
		[Embed(source = "../sounds/SFX_missileNormFire.wav", mimeType = "application/octet-stream")]private static var sfx_explosion:Class;
		
		public var sndMap:Object = new Object();
		
		public function SoundPlayer() 
		{
			trace("OK");
			// -- add sound definitions here		
			/*sndMap["sfx_missile"] = new sfx_missile();
			sndMap["sfx_chaingun"] = new sfx_chaingun();
			sndMap["sfx_explosion"] = new sfx_explosion();*/
		}
		
		public static function play(s:String):void
		{
			return;
			var sound:Sound;
			switch (s)
			{
				case "sfx_missile":
					sound = new sfx_missile();
				break;
				case "sfx_chaingun":
					sound = new sfx_chaingun();
				break;
				case "sfx_explosion":
					sound = new sfx_explosion();
				break;
			}
			trace(sound);
			if (sound)
				sound.play();
		}
		
		public static function shutUp():void
		{
			//SoundMixer.stopAll();
		}
	}
}