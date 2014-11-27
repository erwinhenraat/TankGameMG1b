package  
{
	import flash.display.MovieClip;
	
	/**
	 * ...
	 * @author Erwin Henraat
	 */
	public class Bullet extends MovieClip 
	{
		private var xMove:Number;
		private var yMove:Number;
		private var speed:Number = 20;
		public function Bullet(xpos:Number, ypos:Number, rot:Number ) 
		{
			super();			
			addChild(new BulletArt());			
			
			
			
			this.rotation = rot;							
			var radians:Number = this.rotation * Math.PI / 180;
			xMove = Math.cos(radians);
			yMove = Math.sin(radians);
			
			this.x = xpos + xMove * 170;//midden van tank tot einde van turret
			this.y = ypos + yMove * 170;
		}
		public function update():void
		{
			//hier wil ik elk frame iets doen
			this.x += xMove * speed;
			this.y += yMove * speed;			
		}
		
	}

}