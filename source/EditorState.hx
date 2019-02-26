import flixel.FlxG;
import flixel.util.FlxColor;
import flixel.FlxSprite;
import flixel.math.FlxPoint;
import flixel.graphics.frames.FlxTileFrames;
import flixel.FlxState;
import flixel.ui.FlxButton;
import vector.VectorSprite;
using flixel.util.FlxSpriteUtil;

/**
 * State for editing vector sprite
 */
class EditorState extends FlxState {
	/**
	 * Create menu buttons
	 */
	function createMenu() {
		var newButton = new LableButton("New", 4, 4, "FF22AA22", () -> {
			trace("NEW");
		});
		add(newButton);		

		var openButton = new LableButton("Open", 88, 4, "FFAA2222", () -> {
			trace("OPEN");
		});
		add(openButton);

		var saveButton = new LableButton("Load", 172, 4, "FF2222AA", () -> {
			trace("SAVE");
		});
		add(saveButton);
	}

	/**
	 * Create area for drawing
	 */
	function createDrawingArea() {		
		var sprite = new DrawingArea();
		sprite.make(200, 200, FlxColor.WHITE);
		sprite.x = FlxG.width / 2 - sprite.width / 2;
		sprite.y = FlxG.height / 2 - sprite.height / 2;
		add(sprite);
	}

	/**
	 * Create panel with tools for drawing
	 */
	function createToolPanel() {

	}

	/**
	 * On create
	 */
	override public function create():Void {
		super.create();
		createMenu();
		createDrawingArea();
		createToolPanel();
	}
}
