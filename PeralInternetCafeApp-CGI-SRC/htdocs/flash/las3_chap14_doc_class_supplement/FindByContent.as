﻿package {		import flash.display.*;	import flash.events.*;		public class FindByContent extends Sprite {				public function FindByContent() {			var products:XML = 	<phones>                        <model stock="no">							<name>T2</name>							<price>89.00</price>						</model>                        <model stock="no">							<name>T1000</name>							<price>99.00</price>						</model>                        <model stock="yes">							<name>T3</name>							<price>199.00</price>											<model stock="yes">								<name>T3</name>								<price>59.00</price>							</model>						</model>                    </phones>;			trace(products.model.(price < 100));			trace("--");			trace(products.model.(Number(price) < 100));			trace("--");			trace(products.*.(@stock == "yes"));		}	}}