package
{
	import jam.MainMenu;
	import punk.core.Engine;
	import punk.util.Input;
	import punk.util.Key;
	
	public class Main extends Engine
	{
		public function Main()
		{
			super(320, 240, 60, 2, MainMenu);
		}
		
		override public function init():void
		{
			Input.define("right", Key.RIGHT);
			Input.define("left", Key.LEFT);
			Input.define("up", Key.UP);
			Input.define("down", Key.DOWN);
			Input.define("jump", Key.X, Key.UP, Key.S);
			Input.define("grapple", Key.Z, Key.A);
			Input.define("skip", Key.ENTER);
		}
	}
}
