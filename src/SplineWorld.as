package  
{
	import net.flashpunk.World;
	import flash.geom.Point
	/**
	 * ...
	 * @author Lambwatt
	 */
	public class SplineWorld extends World
	{
		var spline:Spline;
		public function SplineWorld() 
		{
			spline = new Spline(this);
			spline.initialize(new Point(0, 0), new Point(550, 400));
			add(new Planet(550, 400));
			add(new Ship(0, 0));
		}
		
		override public function update():void 
		{
			super.update();
			spline.update();
		}
		
	}

}