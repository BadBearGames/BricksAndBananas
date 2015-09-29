package  
{
	
	import flash.display.MovieClip;
	import flash.net.SharedObject;
	import flash.net.LocalConnection;
	import flash.system.System;
	
	
	public class document extends MovieClip 
	{
		//MAIN VARS
		public static var init:Boolean = true;
		public static var mute:Boolean = false;
		public static var gameState:Number = 1;
		public static var score:Number = 0;
		public static var highScore:Number = 0;
		public static var level:Number = 1;
		public var saveData:SharedObject;
		
		//OTHER VARS
		
		
		public function document() 
		{
			//SAVE DATA--
			saveData = SharedObject.getLocal("BricksAndBananasSaveData");
			
			//saveData.clear();
			
			if (saveData.data.highestScore == null)
			{
				//INIT SAVE VARS
				saveData.data.highestScore = 0;
				
				saveData.flush();
			}
			//--
			
			//SET VARS
			setVarstoData();
		}
		
		public function saveGame():void //SAVES THE GAME
		{
			//SET SAVE DATA TO VARS
			saveData.data.highestScore = highScore;
			saveData.flush();
		}
		
		public function setVarstoData():void //SETS VARS EQUAL TO SAVE DATA
		{
			//SET VARS TO SAVE DATA
			highScore = saveData.data.highestScore;
		}
	}
}