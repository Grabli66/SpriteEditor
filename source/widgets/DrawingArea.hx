package widgets;

import flixel.util.FlxColor;
import flixel.FlxSprite;

/**
 * Drawing area
 */
class DrawingArea extends FlxSprite {
    /**
     * Constructor
     */
    public function new() {
        super();
    }

    /**
     * Prepare and draw area
     */
    public function make(width:Int, height:Int, color:FlxColor) {
        makeGraphic(width, height, color);
    }
}