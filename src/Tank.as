package  
{
	import flash.display.MovieClip;
	
	/**
	 * ...
	 * @author Erwin Henraat
	 */
	public class Tank extends MovieClip
	{
		private var tankBodyArt:MovieClip;
		private var tankTurretArt:TankTurretArt;
		
		public function Tank() 
		{
	
			tankBodyArt = new TankBodyArt();//instantieren van de Class
			this.addChild(tankBodyArt);
			tankTurretArt = new TankTurretArt();
			this.addChild(tankTurretArt);		
			
		}
		
	}

}