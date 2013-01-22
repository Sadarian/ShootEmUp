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

	public class Game extends Sprite {

		public function Game() {
			var player:Player = new Player();
			player.createPlayer();
		}
	}
}