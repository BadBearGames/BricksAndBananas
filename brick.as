package  {
	
	import flash.display.MovieClip;
	
	
	public class brick extends MovieClip
	{
		public var steps:Number = 0;
		public var die:Boolean = false;
		public var prevLev:Number = 0;
		
		public function brick(lev:Number)
		{
			switch (lev)
			{
				case 1:
				steps = 50;
				break;
				
				case 2:
				steps = 40;
				break;
				
				case 3:
				steps = 30;
				break;
				
				case 4:
				steps = 20;
				break;
				
				case 5:
				steps = 10;
				break;
			}
			
			this.y = 0;
		}
		
		public function updateObject(lev1:Number, frez:Boolean):void
		{
			if (!frez)
			{
				if (steps == 0)
				{
					this.y += 80;
					switch (lev1)
					{
					case 1:
					steps = 50;
					break;
					
					case 2:
					steps = 40;
					break;
					
					case 3:
					steps = 30;
					break;
					
					case 4:
					steps = 20;
					break;
					
					case 5:
					steps = 10;
					break;
				}
				}
				else
				{
					steps--;
				}
				this.gotoAndStop(1);
			}
			else
			{
				this.gotoAndStop(2);
			}
			
			if (prevLev < lev1)
			{
				switch (lev1)
				{
				case 1:
				steps = 50;
				break;
				
				case 2:
				steps = 40;
				break;
				
				case 3:
				steps = 30;
				break;
				
				case 4:
				steps = 20;
				break;
				
				case 5:
				steps = 10;
				break;
			}
			}
			
			if (this.y == 560)
			{
				die = true;
			}
			
			prevLev = lev1;
		}
		
	}
	
}
