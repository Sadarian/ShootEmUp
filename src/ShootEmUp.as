package {

	import flash.display.Sprite;
	import flash.display.StageAlign;
	import flash.display.StageScaleMode;
	import flash.events.Event;
	import flash.geom.Rectangle;
	import flash.html.ControlInitializationError;
	import flash.text.TextField;
	import flash.ui.GameInput;

	import starling.core.Starling;

	public class ShootEmUp extends Sprite {
		private var _starling:Starling;

		public function ShootEmUp() {
			Starling.handleLostContext = true;

			stage.align = StageAlign.TOP_LEFT;
			stage.scaleMode = StageScaleMode.NO_SCALE;
			stage.frameRate = 60;

			handelScaling();

			init();
		}

		private function handelScaling():void {
			var guiSize:Rectangle = new Rectangle(0, 0, 1024, 600);
			var deviceSize:Rectangle = new Rectangle(0, 0,
					Math.max(stage.fullScreenWidth, stage.fullScreenHeight),
					Math.min(stage.fullScreenWidth, stage.fullScreenHeight));

			var appScale:Number = 1; var appSize:Rectangle = guiSize.clone(); var appLeftOffset:Number = 0;

			// if device is wider than GUI's aspect ratio, height determines scale
			if ((deviceSize.width/deviceSize.height) > (guiSize.width/guiSize.height))
			{
				 appScale = deviceSize.height / guiSize.height;
				 appSize.width = deviceSize.width / appScale;
				 appLeftOffset = Math.round((appSize.width - guiSize.width) / 2);
			}
			// if device is taller than GUI's aspect ratio, width determines scale
			else
			{
				appScale = deviceSize.width / guiSize.width;
				appSize.height = deviceSize.height / appScale;
				appLeftOffset = 0;
			}
		}



		private function init():void {
			_starling = new Starling(Game, stage);
			_starling.showStats = true;
			_starling.start();
		}
	}
}