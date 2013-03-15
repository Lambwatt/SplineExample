package  
{
	import net.flashpunk.World;
	import flash.geom.Point;
	/**
	 * ...
	 * @author Lambwatt
	 */
	public class Spline 
	{
		public var world:World;
		public var controlPoints:Vector.<ControlPoint> = new Vector.<ControlPoint>();
		public var points:Vector.<SplinePoint> = new Vector.<SplinePoint>();
		public var arcLengths:Vector.<Number> = new Vector.<Number>();
		public var t_values:Vector.<Number> = new Vector.<Number>();
		public var total_arc_length:Number = 0;
		public var control_poines_modified:Boolean = false;
		
		public function Spline(world:World) 
		{
			this.world = world;
		}
		
		public function initialize(start:Point, end:Point)
		{
			for (var i:int = 0; i < 5; i++ )
			{
				var p:Point = new Point;
				p.x = start.x +( (i / 5) * (end.x - start.x));
				p.y = start.y +( (i / 5) * (end.y - start.y));
				controlPoints[i] = new ControlPoint(p);
				world.add(controlPoints[i]);
			}
			resetPoints()
		}
		
		public function interpolateForT(spline:Vector.<ControlPoint>, t):Point
		{
			if (spline.length == 1)
			{
				return spline[0].p;
			}
			else {
				var vec:Vector.<ControlPoint> = new Vector.<ControlPoint>();
				for (var i:int = 1; i < spline.length; i++)
				{
					var p:Point = new Point;
					p.x = spline[i-1].x +(t*(spline[i].x - spline[i-1].x));
					p.y = spline[i-1].y +(t*(spline[i].y - spline[i - 1].y));
					
					vec[i - 1] = new ControlPoint(p);
				}
				return interpolateForT(vec, t);
			}
		}
		
		public function resetPoints()
		{
			for (var i :int = 0; i < controlPoints.length; i++)
			{
				for (var j:int = 0; j < 10; j++ )
				{
					var t:Number = ((i as Number) / (controlPoints.length as Number)) + ((j as Number) * (controlPoints.length as Number) / 10.0);
					points[(i*10) + j] = new SplinePoint(interpolateForT(controlPoints, t));
					world.add(points[(i * 10) + j]);
				}
			}
		}
		
		
	}

}