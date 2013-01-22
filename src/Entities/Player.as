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

	public class Player extends Entity {
		private var bullets:Array = [];
		private var bullet:Bullet;
		private var shootCooldown:int = 0;
		private var shootingRate:int = 40;
		public function Player() {

		}

		public function createPlayer():void {
			var playerMovi:MovieClip = new MovieClip(Assets.createAtlasAnim("StickFigure", 9, 8, 70).getTextures(),60);
			Starling.juggler.add(playerMovi);
			playerMovi.play();
			addChild(playerMovi);
		}

		private function shoot():void {
			bullet = new Bullet();
			bullets.push(bullet);
			trace("shoot");
		}

		override public function update():void {
			if (shootCooldown == shootingRate)
			{
				shoot();
				shootCooldown = 0;
			}
			else
			{
				shootCooldown++;
			}

		}

		override public function move():void {

		}
	}
}