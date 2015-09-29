package  {
	
	import flash.display.MovieClip;
	
	
	public class enemy extends MovieClip 
	{
		public var enemyDirection:Boolean = false;
		public var steps:Number = 30;
		public var die:Boolean = false;
		
		public function enemy() 
		{
			if ((Math.floor(Math.random() * (1 - 0 + 1)) + 0) == 1)
			{
				this.x = 0;
			}
			else
			{
				this.x = 640;
				this.scaleX *= (-1);
			}
			this.y = 434;
		}
		
		public function updateObject():void
		{
			if (this.x == 0)
			{
				enemyDirection = true;
			}
			else if (this.x == 640)
			{
				enemyDirection = false;
			}
			
			if (steps == 0)
			{
				if (enemyDirection)
				{
					this.x += 80;
				}
				else
				{
					this.x -= 80;
				}
				steps = 30;
			}
			else
			{
				steps--;
			}
			
			if ((this.x == (-80)) || (this.x == 720))
			{
				die = true;
			}
		}
	}
	
}
