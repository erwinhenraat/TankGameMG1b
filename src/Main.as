package 
{
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.KeyboardEvent;
	import flash.ui.Keyboard;
	/**
	 * ...
	 * @author Erwin Henraat
	 */
	public class Main extends Sprite 
	{
		private var tank:Tank;
		private var dPressed:Boolean = false;
		
		public function Main():void 
		{
			if (stage) init();
			else addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event = null):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			// entry point
			tank = new Tank();
			this.addChild(tank);
			tank.x = stage.stageWidth * 0.5;
			tank.y = stage.stageHeight * 0.5;
			
			
			stage.addEventListener(KeyboardEvent.KEY_DOWN, onKeyDown);
			stage.addEventListener(KeyboardEvent.KEY_UP, onKeyUp);
			this.addEventListener(Event.ENTER_FRAME, loop);
		}		
		
		private function loop(e:Event):void 
		{
			if (dPressed == true)
			{
				tank.x += 5;
			}
		}
		private function onKeyDown(e:KeyboardEvent):void
		{			
			if (e.keyCode == Keyboard.D)
			{
				//d is ingedrukt				
				dPressed = true;
			}
			
		}
		private function onKeyUp(e:KeyboardEvent):void
		{
			if (e.keyCode == Keyboard.D)
			{
				//d is losgelaten
				dPressed = false;
			}
		}
	}
	
}