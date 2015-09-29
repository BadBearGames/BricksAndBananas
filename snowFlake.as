package  {
	
	import flash.display.MovieClip;
	
	
	public class snowFlake extends MovieClip
	{
		private var speedVert:Number = 1;
		private var speedHor:Number = 1;
		private var variance:Number = 1;
		private var direct:Boolean = true;
		
		
		public function snowFlake() 
		{
			speedVert = (Math.floor(Math.random() * (5 - 2 + 1)) + 2);
			speedHor = (Math.floor(Math.random() * (.2 - .1 + 1)) + .1);
			variance = (Math.floor(Math.random() * (30 - 15 + 1)) + 15);
		}
	
		public function updateObject()
		{
			this.y += speedVert;
			
			if (variance > 0)
			{
				variance--;
				if (direct)
				{
					this.x += speedHor;
				}
				else
				{
					this.x -= speedHor;
				}
			}
			else
			{
				direct = (!direct);
				variance = (Math.floor(Math.random() * (30 - 15 + 1)) + 15);
				speedHor = (Math.floor(Math.random() * (.2 - .1 + 1)) + .1);
			}
			
		}
	}
	
}