import flixel.graphics.frames.FlxTileFrames;
import flixel.math.FlxPoint;
import vector.VectorSprite;
import flixel.ui.FlxButton;

/**
 * Button based on VectorSprite
 */
class VectorButton extends FlxButton {
    /**
     * Constructor
     */
    public function new(vector:String, x:Int, y:Int, onClick:Void->Void) {        
        super(x, y, null, onClick);
        
        var sprite = new VectorSprite(vector);
        frames = FlxTileFrames.fromGraphic(sprite.graphic, FlxPoint.get(sprite.width, sprite.height));
    }
}