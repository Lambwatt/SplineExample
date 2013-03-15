package  
{
	import net.flashpunk.World;
	/**
	 * ...
	 * @author Lambwatt
	 */
	public class SplineWorld extends World
	{
		
		public function SplineWorld() 
		{
			add(new Planet(550, 400));
			add(new Ship(0,0));
		}
		
	}

}