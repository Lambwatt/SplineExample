package  
{
	import net.flashpunk.Entity;
	import flash.geom.Point;
	import net.flashpunk.graphics.Image;
	import net.flashpunk.utils.Input;
	import net.flashpunk.FP;
	
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
			
			var ship:Image = new Image(IMG_CONTROLPOINT);
			height = ship.height;
			width = ship.width;
			graphic = ship;
		}
		
		public override function update():void
		{
			if (Input.mouseDown)
			{
				if (FP.world.mouseX >= x &&  FP.world.mouseX < x + width && FP.world.mouseY >= y && FP.world.mouseY < y + height)
				{
					x = FP.world.mouseX - width / 2;
					y = FP.world.mouseY - height / 2;
					(FP.world as SplineWorld).spline.control_points_modified = true;
				}
			}
			super.update();
		}
		
		
	}

}