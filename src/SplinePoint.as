package  
{
	import net.flashpunk.Entity;
	import flash.geom.Point;
	import net.flashpunk.graphics.Image;
	/**
	 * ...
	 * @author Lambwatt
	 */
	public class SplinePoint extends Entity
	{
		var p:Point;
		[Embed(source = "assets/SmallPoint.png")] public static const IMG_SPLINEPOINT:Class;
		public function SplinePoint(p:Point) 
		{
			super(p.x, p.y);
			this.p = p;
			graphic = new Image(IMG_SPLINEPOINT);
		}
		
	}

}