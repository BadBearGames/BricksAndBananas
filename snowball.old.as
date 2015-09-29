package  {
	
	import flash.display.MovieClip;
	
	
	public class snowball extends MovieClip 
	{
		public var snowballDirection:Boolean = false;
		public var die:Boolean = false;
		public var delay:Number = 1;
		
		public function snowball(dir:Number) 
		{
			if (dir > 0)
			{
				snowballDirection = true;
			}
			else
			{
				snowballDirection = false;
			}
			
		}
		
		public function updateSnowball():void
		{
			if (delay > 0)
			{
				this.visible = false;
				delay--;
			}
			else
			{
				this.visible = true;
			}
			
			if (snowballDirection == true)
			{
				this.x += 15;
			}
			else
			{
				this.x -= 15;
			}
			
			if (this.x > 660)
			{
				die = true;
			}
			else if (this.x < -20)
			{
				die = true;
			}
			
		}
		
	}
	
}
