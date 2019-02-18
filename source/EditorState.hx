import flixel.math.FlxPoint;
import flixel.graphics.frames.FlxTileFrames;
import flixel.FlxState;
import flixel.ui.FlxButton;
import vector.VectorSprite;

/**
 * State for editing vector sprite
 */
class EditorState extends FlxState {
	/**
	 * Create menu buttons
	 */
	function createMenu() {
		var newButton = new LableButton("New", 4, 4, () -> {
			trace("NEW");
		});
		add(newButton);		

		var openButton = new LableButton("Open", 88, 4, () -> {
			trace("OPEN");
		});
		add(openButton);

		var saveButton = new LableButton("Save", 172, 4, () -> {
			trace("SAVE");
		});
		add(saveButton);		
	}

	/**
	 * On create
	 */
	override public function create():Void {
		super.create();
		createMenu();
	}
}