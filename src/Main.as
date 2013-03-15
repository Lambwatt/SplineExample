package 
{
	import net.flashpunk.Engine;
	import net.flashpunk.FP;
	import SplineWorld;

	
	public class Main extends Engine
	{
		
		public function Main():void 
		{
			super(600, 480, 60, false);
			
			FP.world = new SplineWorld;
		}
		
		override public function init():void
		{
			trace("flashpunk has started succesfully!");
		}
		
	}
	
}