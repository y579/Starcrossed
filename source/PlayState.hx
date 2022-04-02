package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;

class PlayState extends FlxState
{
	var Maincharacter:FlxSprite;

	override public function create()
	{
		Maincharacter = new FlxSprite(0, 300);
		Maincharacter.loadGraphic(Paths.placeholder__png);
		add(Maincharacter);
		super.create();
	}

	override public function update(elapsed:Float)
	{
		{}
		super.update(elapsed);
		if (FlxG.keys.justPressed.W)
			Maincharacter.y--;
		if (FlxG.keys.justPressed.S)
			Maincharacter.y++;
		if (FlxG.keys.justPressed.A)
			Maincharacter.x--;
	}
}
