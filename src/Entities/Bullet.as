/**
 * Created with IntelliJ IDEA.
 * User: tofrey
 * Date: 22.01.13
 * Time: 09:35
 * To change this template use File | Settings | File Templates.
 */
package Entities {
	import starling.display.Image;

	public class Bullet extends Entity {
		public function Bullet() {
			var bullet:Image = new Image(Assets.getTexture("BulletPicture"));
		}


		override public function update():void {

		}

		override public function move():void {

		}
	}
}