SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

--
-- Database: `twittercapture`
--

-- --------------------------------------------------------

--
-- Table structure for table `streamsample_hashtags`
--

CREATE TABLE `streamsample_hashtags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tweet_id` bigint(20) NOT NULL,
  `created_at` datetime NOT NULL,
  `from_user_name` varchar(255) NOT NULL,
  `from_user_id` int(11) NOT NULL,
  `text` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `created_at` (`created_at`),
  KEY `tweet_id` (`tweet_id`),
  KEY `text` (`text`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=899653 ;

-- --------------------------------------------------------

--
-- Table structure for table `streamsample_mentions`
--

CREATE TABLE `streamsample_mentions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tweet_id` bigint(20) NOT NULL,
  `created_at` datetime NOT NULL,
  `from_user_name` varchar(255) NOT NULL,
  `from_user_id` int(11) NOT NULL,
  `to_user` varchar(255) NOT NULL,
  `to_user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `created_at` (`created_at`),
  KEY `tweet_id` (`tweet_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3413974 ;

-- --------------------------------------------------------

--
-- Table structure for table `streamsample_tweets`
--

CREATE TABLE `streamsample_tweets` (
  `id` bigint(20) NOT NULL,
  `created_at` datetime NOT NULL,
  `from_user_name` varchar(255) NOT NULL,
  `from_user_id` int(11) NOT NULL,
  `from_user_lang` varchar(16) NOT NULL,
  `from_user_tweetcount` int(11) NOT NULL,
  `from_user_followercount` int(11) NOT NULL,
  `from_user_friendcount` int(11) NOT NULL,
  `from_user_realname` varchar(64) NOT NULL,
  `source` varchar(255) NOT NULL,
  `location` varchar(64) NOT NULL,
  `geo_lat` float(10,6) NOT NULL,
  `geo_lng` float(10,6) NOT NULL,
  `text` varchar(255) NOT NULL,
  `to_user_id` int(11) NOT NULL,
  `to_user_name` varchar(255) NOT NULL,
  `in_reply_to_status_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `created_at` (`created_at`),
  FULLTEXT KEY `text` (`text`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `streamsample_urls`
--

CREATE TABLE `streamsample_urls` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tweet_id` bigint(20) NOT NULL,
  `created_at` datetime NOT NULL,
  `from_user_name` varchar(255) NOT NULL,
  `from_user_id` int(11) NOT NULL,
  `url` varchar(255) NOT NULL,
  `url_expanded` varchar(255) NOT NULL,
  `url_followed` varchar(255) NOT NULL,
  `domain` varchar(255) NOT NULL,
  `error_code` varchar(64) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `created_at` (`created_at`),
  KEY `domain` (`domain`),
  KEY `url_followed` (`url_followed`),
  KEY `url_expanded` (`url_expanded`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=564804 ;
