<?php

	namespace Packages\users\Models;

	class Gravatar{

		/**
		 * Get either a Gravatar URL or complete image tag for a specified email address.
		 * @source https://gravatar.com/site/implement/images/php/
		 *
		 * @param $strEmail The email address
		 * @param int $intSizePX Size in pixels, defaults to 80px [ 1 - 2048 ]
		 * @param string $mxdImageset Default imageset to use [ 404 | mm | identicon | monsterid | wavatar ]
		 * @param string $mxdMaxAgeRating Maximum rating (inclusive) [ g | pg | r | x ]
		 * @return string String containing either just a URL or a complete image tag
		 */
		public static function get($strEmail, $intSizePX = 160, $mxdImageset = 'mm', $mxdMaxAgeRating = 'pg'){

			$strAvatarURL = sprintf('https://www.gravatar.com/avatar/%s?s=%d&d=%s&r=%s',
				md5(strtolower(trim($strEmail))),
				$intSizePX,
				$mxdImageset,
				$mxdMaxAgeRating
			);

			return $strAvatarURL;
		}
	}
