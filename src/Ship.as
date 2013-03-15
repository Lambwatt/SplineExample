package  
{
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Image;
	/**
	 * ...
	 * @author ...
	 */
	public class Ship extends Entity
	{
		[Embed(source = "assets/ship.png")] public static const IMG_SHIP:Class;
		public function Ship(x:int,y:int) 
		{
			super(x, y);
			graphic = new Image(IMG_SHIP);
		}
		
	}

}