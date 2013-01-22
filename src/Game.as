/**
 * Created with IntelliJ IDEA.
 * User: tofrey
 * Date: 21.01.13
 * Time: 08:28
 * To change this template use File | Settings | File Templates.
 */
package {
	import Entities.Player;

	import starling.display.Sprite;
	import starling.events.Event;
	import starling.events.EventDispatcher;

	public class Game extends Sprite {
		private var player:Player;
		public function Game() {
			player = new Player();
			player.createPlayer();
			player.y = 200;
			addChild(player);

			addEventListener(starling.events.Event.ENTER_FRAME,gameLoop)
		}

		private function gameLoop(event:Event):void {
			player.update();
		}
	}
}