/**
 * Created with IntelliJ IDEA.
 * User: tofrey
 * Date: 22.01.13
 * Time: 08:23
 * To change this template use File | Settings | File Templates.
 */
package Entities {
	import Entities.Entity;

	import starling.core.Starling;

	import starling.display.MovieClip;

	import starling.display.MovieClip;

	public class Player extends Entity {
		public function Player() {

		}

		public function createPlayer():void {
			var playerMovi:MovieClip = new MovieClip(Assets.createAtlasAnim("StickFigure", 9, 8, 70).getTextures(),60);
			Starling.juggler.add(playerMovi);
			playerMovi.play();
		}

		public function shoot():void {
			
		}

		override public function update():void {

		}

		override public function move():void {

		}
	}
}