package widgets;

import flixel.FlxG;
import vector.VectorSprite;
import flixel.FlxSprite;
import flixel.util.FlxColor;
import flixel.group.FlxSpriteGroup;

/**
 * Toolbar button
 */
class ToolbarButton extends VectorButton {
}

/**
 * Toolbar with drawings element: circle, rectangle, etc
 */
class DrawingToolbar extends FlxSpriteGroup {
    /**
     * Background sprite
     */
    var back:VectorSprite;

    /**
     * Constructor
     */
    public function new() {
        super();

        back = new VectorSprite('
            <sprite width="44" height="400">
				<brush name="white" color="FFFFFFFF" />
				<frame>					
					<rect x="0" y="0" width="44" height="400" brush="white" />
				</frame>
			</sprite>
        ');

        add(back);

        var circle = new ToolbarButton('
			<sprite width="40" height="40">
				<brush name="gray" color="FF333333" />
                <brush name="black" color="FF000000" />
				<frame>					
					<rect x="0" y="0" width="40" height="40" brush="gray" />
                    <circle x="20" y="20" radius="15" brush="black" />                    
				</frame>
			</sprite>
		', 2, 2, () -> {

		});

        var rect = new ToolbarButton('
			<sprite width="40" height="40">
				<brush name="gray" color="FF333333" />
                <brush name="black" color="FF000000" />
				<frame>					
					<rect x="0" y="0" width="40" height="40" brush="gray" />
                    <rect x="5" y="5" width="30" height="30" brush="black" />                    
				</frame>
			</sprite>
		', 2, 44, () -> {

		});

        var path = new ToolbarButton('
			<sprite width="40" height="40">
				<brush name="gray" color="FF333333" />
                <brush name="black" color="FF000000" />
				<frame>					
					<rect x="0" y="0" width="40" height="40" brush="gray" />
                    <rect x="8" y="8" width="26" height="26" brush="black" />                    
				</frame>
			</sprite>
		', 2, 90, () -> {

		});

        add(circle);
        add(rect);

		x = FlxG.width - width;
        y = 200;
    }
}