package 
{
	import flash.display.Sprite;
	import flash.display.StageAlign;
	import flash.display.StageScaleMode;
	import flash.events.Event;
	import flash.geom.Rectangle;
	import starling.core.Starling;
	import starling.events.ResizeEvent;
	
	/**
	 * ...
	 * @author Léo Santana
	 */
	[SWF(width = "1024", height = "768", backgroundColor = "0x000000")]
	 
	public class Main extends Sprite 
	{		
		private var starling:Starling;
		
		public function Main():void 
		{
			if (stage) init();
			else addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event = null):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			
			stage.align = StageAlign.TOP_LEFT;
			stage.scaleMode = StageScaleMode.EXACT_FIT;
			
			starling = new Starling(Root, stage);
			starling.antiAliasing = 1;
			starling.start();
			
			//stage.addEventListener(ResizeEvent.RESIZE, resizeStage);
			//resizeStage(null);
		}
		
		private function resizeStage(e:Event):void {
			var viewPortRectangle:Rectangle = new Rectangle();
			viewPortRectangle.width = stage.stageWidth;
			viewPortRectangle.height = viewPortRectangle.width * 0.5859375;
			
			if (viewPortRectangle.height > stage.stageHeight) {
				viewPortRectangle.height = stage.stageHeight;
				viewPortRectangle.width = viewPortRectangle.height / 0.5859375;
			}
			//Centers the viewPort so you have black bars around it
			viewPortRectangle.x = (stage.stageWidth - viewPortRectangle.width) / 2;
			viewPortRectangle.y = (stage.stageHeight - viewPortRectangle.height) / 2;
			
			Starling.current.viewPort = viewPortRectangle;
		}
		
		public function destroy():void
		{
			trace('destroyMain');
			Root(starling.root).removeChildren(Root(starling.root).numChildren);
			starling.dispose();
			starling.stop();
			starling = null;
		}
	}
	
}