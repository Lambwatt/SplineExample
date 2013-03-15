package  
{
	import net.flashpunk.Entity;
	/**
	 * ...
	 * @author Lambwatt
	 */
	public class SplinePoint extends Entity
	{
		[Embed(source = "../assets/SplinePoint.png")] public static const IMG_SPLINEPOINT:Class;
		public function SplinePoint(p:Point) 
		{
			super(p.x, p.y);
			graphic = new Image(IMG_SHIP);
		}
		
	}

}