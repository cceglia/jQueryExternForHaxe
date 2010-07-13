package jQueryPlugins.jQueryUI;

import JQuery;

/**
	jQuery Media Plugin
	http://jquery.malsup.com/media/
**/

extern class Media {
	/**
	 * Converts the matched set of elements to <div> elements which contain rich media. The media method accepts three arguments, all of which are optional.
	 * @param	jQ
	 * @param	configuration An object literal that is used to override the global defaults.
	 */
	inline static public function media(jQ:JQuery, configuration:Dynamic):JQuery untyped {
		return jQ.media(configuration);
	}
	
	/**
	 * Converts the matched set of elements to <div> elements which contain rich media. The media method accepts three arguments, all of which are optional.
	 * @param	jQ
	 * @param	configuration An object literal that is used to override the global defaults.
	 * @param	fn1 Callback function which is passed the original element and the options, before conversion to media
	 * @param	fn2 Callback function which is passed the original element, the new <div> element and the options
	 */
	inline static public function mediaWithCallbacks(jQ:JQuery, configuration:Dynamic, fn1:Dynamic, fn2:Dynamic):JQuery untyped {
		return jQ.media(configuration, fn1, fn2);
	}
}

extern class MediaS {
	/**
	 * Associates a media type with a specific media player. This can be used to override a default mapping or to add a new media type.
	 * @param	type Any media type, such as swf, mov, mp3, etc
	 * @param	player One of: flash, quicktime, realplayer, silverlight, winmedia or iframe
	 */
	inline static public function mapFormat(type:String, player:String):Void untyped {
		jQ.fn.media.mapFormat(type, player);
	}
	
	inline static public function getFlvPlayer():String untyped {
		return jQ.fn.media.defaults.flvPlayer;
	}
	inline static public function setFlvPlayer(playerUrl:String):Void untyped {
		jQ.fn.media.defaults.flvPlayer = playerUrl;
	}
}