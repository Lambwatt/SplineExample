package  
{
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Image;
	/**
	 * ...
	 * @author ...
	 */
	public class Planet extends Entity
	{
		[Embed(source = "../assets/Planet.png")] public static const IMG_SHIP:Class;
		public function Planet(x:int,y:int) 
		{
			super(x, y);
			graphic = new Image(IMG_SHIP);
		}
		
	}

}