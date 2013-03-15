package  
{
	import net.flashpunk.Entity;
	import flash.geom.Point;
	import net.flashpunk.graphics.Image;
	/**
	 * ...
	 * @author Lambwatt
	 */
	
	public class ControlPoint extends Entity
	{
		
		[Embed(source = "assets/ControlPoint.png")] public static const IMG_CONTROLPOINT:Class;
		
		public var p:Point;
		public function ControlPoint(p:Point) 
		{
			super(p.x, p.y);
			this.p = p;
			graphic = new Image(IMG_CONTROLPOINT);
		}
		
		
	}

}