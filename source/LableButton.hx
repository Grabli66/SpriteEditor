/**
 * Button with lable
 */
class LableButton extends VectorButton {
	/**
	 * Constructor
	 */
	public function new(text:String, x:Int, y:Int, onClick:Void->Void) {
		super('<sprite width="80" height="40">
				<brush name="green" color="FF33AA33" />
				<brush name="green2" color="FF229922" />
				<brush name="green3" color="FF226622" />
				<frame>					
					<rect x="0" y="0" width="80" height="36" brush="green" />
					<rect x="0" y="36" width="80" height="4" brush="green3" />
					<text x="20" y="8" color="FFFFFF" size="14" text="${text}" />
				</frame>
				<frame>					
					<rect x="0" y="0" width="80" height="36" brush="green2" />
					<rect x="0" y="36" width="80" height="4" brush="green3" />
					<text x="20" y="8" color="FFFFFF" size="14" text="${text}" />
				</frame>
				<frame>					
					<rect x="0" y="2" width="80" height="38" brush="green2" />
					<rect x="0" y="38" width="80" height="2" brush="green3" />
					<text x="20" y="10" color="FFFFFF" size="14" text="${text}" />
				</frame>
			</sprite>', x, y, onClick);
	}
}
