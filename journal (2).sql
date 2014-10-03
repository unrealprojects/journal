-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Хост: localhost
-- Время создания: Окт 03 2014 г., 20:56
-- Версия сервера: 5.5.38-0ubuntu0.14.04.1
-- Версия PHP: 5.5.9-1ubuntu4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `journal`
--

-- --------------------------------------------------------

--
-- Структура таблицы `f8ad7_acymailing_config`
--

CREATE TABLE IF NOT EXISTS `f8ad7_acymailing_config` (
  `namekey` varchar(200) NOT NULL,
  `value` text,
  PRIMARY KEY (`namekey`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `f8ad7_acymailing_config`
--

INSERT INTO `f8ad7_acymailing_config` (`namekey`, `value`) VALUES
('level', 'Starter'),
('version', '4.7.2'),
('from_name', 'journal'),
('from_email', 'chevil92@gmail.com'),
('mailer_method', 'mail'),
('sendmail_path', '/usr/sbin/sendmail'),
('smtp_secured', ''),
('smtp_auth', '0'),
('smtp_username', ''),
('smtp_password', ''),
('reply_name', 'journal'),
('reply_email', 'chevil92@gmail.com'),
('cron_sendto', 'chevil92@gmail.com'),
('bounce_email', ''),
('add_names', '1'),
('encoding_format', '8bit'),
('charset', 'UTF-8'),
('word_wrapping', '150'),
('hostname', ''),
('embed_images', '0'),
('embed_files', '1'),
('editor', 'acyeditor'),
('multiple_part', '1'),
('smtp_host', 'localhost'),
('smtp_port', ''),
('queue_nbmail', '40'),
('queue_nbmail_auto', '70'),
('queue_type', 'auto'),
('queue_try', '3'),
('queue_pause', '120'),
('allow_visitor', '1'),
('require_confirmation', '0'),
('priority_newsletter', '3'),
('allowedfiles', 'zip,doc,docx,pdf,xls,txt,gzip,rar,jpg,gif,xlsx,pps,csv,bmp,ico,odg,odp,ods,odt,png,ppt,swf,xcf,mp3,wma'),
('uploadfolder', 'media/com_acymailing/upload'),
('confirm_redirect', ''),
('subscription_message', '1'),
('notification_unsuball', ''),
('cron_next', '1251990901'),
('confirmation_message', '1'),
('welcome_message', '1'),
('unsub_message', '1'),
('cron_last', '0'),
('cron_fromip', ''),
('cron_report', ''),
('cron_frequency', '900'),
('cron_sendreport', '2'),
('cron_fullreport', '1'),
('cron_savereport', '2'),
('cron_savepath', 'media/com_acymailing/logs/report932607009.log'),
('notification_created', ''),
('notification_accept', ''),
('notification_refuse', ''),
('forward', '0'),
('description_starter', 'Joomla!™ Mailing Extension'),
('description_essential', 'Joomla!™ Newsletter System'),
('description_business', 'Joomla!™ Mailing Extension'),
('description_enterprise', 'Joomla!™ Marketing Campaign'),
('priority_followup', '2'),
('unsub_redirect', ''),
('show_footer', '1'),
('use_sef', '0'),
('itemid', '0'),
('css_module', 'default'),
('css_frontend', 'default'),
('css_backend', 'default'),
('bootstrap_frontend', '0'),
('menu_position', 'above'),
('unsub_reasons', 'a:2:{i:0;s:21:"UNSUB_SURVEY_FREQUENT";i:1;s:21:"UNSUB_SURVEY_RELEVANT";}'),
('installcomplete', '1'),
('Starter', '0'),
('Essential', '1'),
('Business', '2'),
('Enterprise', '3'),
('website', 'http://localhost/journal/'),
('max_execution_time', '0'),
('module_redirect', '|journal');

-- --------------------------------------------------------

--
-- Структура таблицы `f8ad7_acymailing_fields`
--

CREATE TABLE IF NOT EXISTS `f8ad7_acymailing_fields` (
  `fieldid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `fieldname` varchar(250) NOT NULL,
  `namekey` varchar(50) NOT NULL,
  `type` varchar(50) DEFAULT NULL,
  `value` text NOT NULL,
  `published` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `ordering` smallint(5) unsigned DEFAULT '99',
  `options` text,
  `core` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `required` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `backend` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `frontcomp` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `default` varchar(250) DEFAULT NULL,
  `listing` tinyint(3) unsigned DEFAULT NULL,
  `frontlisting` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `frontjoomlaprofile` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `frontjoomlaregistration` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `joomlaprofile` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`fieldid`),
  UNIQUE KEY `namekey` (`namekey`),
  KEY `orderingindex` (`published`,`ordering`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Дамп данных таблицы `f8ad7_acymailing_fields`
--

INSERT INTO `f8ad7_acymailing_fields` (`fieldid`, `fieldname`, `namekey`, `type`, `value`, `published`, `ordering`, `options`, `core`, `required`, `backend`, `frontcomp`, `default`, `listing`, `frontlisting`, `frontjoomlaprofile`, `frontjoomlaregistration`, `joomlaprofile`) VALUES
(1, 'NAMECAPTION', 'name', 'text', '', 1, 1, '', 1, 1, 1, 1, '', 1, 1, 0, 0, 0),
(2, 'EMAILCAPTION', 'email', 'text', '', 1, 2, '', 1, 1, 1, 1, '', 1, 1, 0, 0, 0),
(3, 'RECEIVE', 'html', 'radio', '0::JOOMEXT_TEXT\n1::HTML', 1, 3, '', 1, 1, 1, 1, '1', 1, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `f8ad7_acymailing_filter`
--

CREATE TABLE IF NOT EXISTS `f8ad7_acymailing_filter` (
  `filid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(250) DEFAULT NULL,
  `description` text,
  `published` tinyint(3) unsigned DEFAULT NULL,
  `lasttime` int(10) unsigned DEFAULT NULL,
  `trigger` text,
  `report` text,
  `action` text,
  `filter` text,
  PRIMARY KEY (`filid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `f8ad7_acymailing_geolocation`
--

CREATE TABLE IF NOT EXISTS `f8ad7_acymailing_geolocation` (
  `geolocation_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `geolocation_subid` int(10) unsigned NOT NULL DEFAULT '0',
  `geolocation_type` varchar(255) NOT NULL DEFAULT 'subscription',
  `geolocation_ip` varchar(255) NOT NULL DEFAULT '',
  `geolocation_created` int(10) unsigned NOT NULL DEFAULT '0',
  `geolocation_latitude` decimal(9,6) NOT NULL DEFAULT '0.000000',
  `geolocation_longitude` decimal(9,6) NOT NULL DEFAULT '0.000000',
  `geolocation_postal_code` varchar(255) NOT NULL DEFAULT '',
  `geolocation_country` varchar(255) NOT NULL DEFAULT '',
  `geolocation_country_code` varchar(255) NOT NULL DEFAULT '',
  `geolocation_state` varchar(255) NOT NULL DEFAULT '',
  `geolocation_state_code` varchar(255) NOT NULL DEFAULT '',
  `geolocation_city` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`geolocation_id`),
  KEY `geolocation_type` (`geolocation_subid`,`geolocation_type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `f8ad7_acymailing_history`
--

CREATE TABLE IF NOT EXISTS `f8ad7_acymailing_history` (
  `subid` int(10) unsigned NOT NULL,
  `date` int(10) unsigned NOT NULL,
  `ip` varchar(50) DEFAULT NULL,
  `action` varchar(50) NOT NULL COMMENT 'different actions: created,modified,confirmed',
  `data` text,
  `source` text,
  `mailid` mediumint(8) unsigned DEFAULT NULL,
  KEY `subid` (`subid`,`date`),
  KEY `dateindex` (`date`),
  KEY `actionindex` (`action`,`mailid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `f8ad7_acymailing_list`
--

CREATE TABLE IF NOT EXISTS `f8ad7_acymailing_list` (
  `name` varchar(250) NOT NULL,
  `description` text,
  `ordering` smallint(5) unsigned DEFAULT '0',
  `listid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `published` tinyint(4) DEFAULT NULL,
  `userid` int(10) unsigned DEFAULT NULL,
  `alias` varchar(250) DEFAULT NULL,
  `color` varchar(30) DEFAULT NULL,
  `visible` tinyint(4) NOT NULL DEFAULT '1',
  `welmailid` mediumint(9) DEFAULT NULL,
  `unsubmailid` mediumint(9) DEFAULT NULL,
  `type` enum('list','campaign') NOT NULL DEFAULT 'list',
  `access_sub` varchar(250) NOT NULL DEFAULT 'all',
  `access_manage` varchar(250) NOT NULL DEFAULT 'none',
  `languages` varchar(250) NOT NULL DEFAULT 'all',
  `startrule` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`listid`),
  KEY `typeorderingindex` (`type`,`ordering`),
  KEY `useridindex` (`userid`),
  KEY `typeuseridindex` (`type`,`userid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `f8ad7_acymailing_list`
--

INSERT INTO `f8ad7_acymailing_list` (`name`, `description`, `ordering`, `listid`, `published`, `userid`, `alias`, `color`, `visible`, `welmailid`, `unsubmailid`, `type`, `access_sub`, `access_manage`, `languages`, `startrule`) VALUES
('Newsletters', 'Receive our latest news', 1, 1, 1, 445, 'mailing_list', '#3366ff', 1, NULL, NULL, 'list', 'all', 'none', 'all', '0');

-- --------------------------------------------------------

--
-- Структура таблицы `f8ad7_acymailing_listcampaign`
--

CREATE TABLE IF NOT EXISTS `f8ad7_acymailing_listcampaign` (
  `campaignid` smallint(5) unsigned NOT NULL,
  `listid` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`campaignid`,`listid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `f8ad7_acymailing_listmail`
--

CREATE TABLE IF NOT EXISTS `f8ad7_acymailing_listmail` (
  `listid` smallint(5) unsigned NOT NULL,
  `mailid` mediumint(8) unsigned NOT NULL,
  PRIMARY KEY (`listid`,`mailid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `f8ad7_acymailing_listsub`
--

CREATE TABLE IF NOT EXISTS `f8ad7_acymailing_listsub` (
  `listid` smallint(5) unsigned NOT NULL,
  `subid` int(10) unsigned NOT NULL,
  `subdate` int(10) unsigned DEFAULT NULL,
  `unsubdate` int(10) unsigned DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  PRIMARY KEY (`listid`,`subid`),
  KEY `subidindex` (`subid`),
  KEY `listidstatusindex` (`listid`,`status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `f8ad7_acymailing_listsub`
--

INSERT INTO `f8ad7_acymailing_listsub` (`listid`, `subid`, `subdate`, `unsubdate`, `status`) VALUES
(1, 1, 1410952288, NULL, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `f8ad7_acymailing_mail`
--

CREATE TABLE IF NOT EXISTS `f8ad7_acymailing_mail` (
  `mailid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `subject` varchar(250) NOT NULL,
  `body` longtext NOT NULL,
  `altbody` longtext NOT NULL,
  `published` tinyint(4) DEFAULT '1',
  `senddate` int(10) unsigned DEFAULT NULL,
  `created` int(10) unsigned DEFAULT NULL,
  `fromname` varchar(250) DEFAULT NULL,
  `fromemail` varchar(250) DEFAULT NULL,
  `replyname` varchar(250) DEFAULT NULL,
  `replyemail` varchar(250) DEFAULT NULL,
  `type` enum('news','autonews','followup','unsub','welcome','notification','joomlanotification') NOT NULL DEFAULT 'news',
  `visible` tinyint(4) NOT NULL DEFAULT '1',
  `userid` int(10) unsigned DEFAULT NULL,
  `alias` varchar(250) DEFAULT NULL,
  `attach` text,
  `html` tinyint(4) NOT NULL DEFAULT '1',
  `tempid` smallint(6) NOT NULL DEFAULT '0',
  `key` varchar(200) DEFAULT NULL,
  `frequency` varchar(50) DEFAULT NULL,
  `params` text,
  `sentby` int(10) unsigned DEFAULT NULL,
  `metakey` text,
  `metadesc` text,
  `filter` text,
  `language` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`mailid`),
  KEY `senddate` (`senddate`),
  KEY `typemailidindex` (`type`,`mailid`),
  KEY `useridindex` (`userid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Дамп данных таблицы `f8ad7_acymailing_mail`
--

INSERT INTO `f8ad7_acymailing_mail` (`mailid`, `subject`, `body`, `altbody`, `published`, `senddate`, `created`, `fromname`, `fromemail`, `replyname`, `replyemail`, `type`, `visible`, `userid`, `alias`, `attach`, `html`, `tempid`, `key`, `frequency`, `params`, `sentby`, `metakey`, `metadesc`, `filter`, `language`) VALUES
(1, 'New Subscriber on your website : {user:email}', '<p>Hello {subtag:name},</p><p>A new user has been created in AcyMailing : </p><blockquote><p>Name : {user:name}</p><p>Email : {user:email}</p><p>IP : {user:ip} </p><p>Subscription : {user:subscription}</p></blockquote>', '', 1, NULL, NULL, NULL, NULL, NULL, NULL, 'notification', 0, NULL, 'notification_created', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(2, 'A User unsubscribed from all your lists : {user:email}', '<p>Hello {subtag:name},</p><p>The user {user:name} : {user:email} unsubscribed from all your lists</p><p>Subscription : {user:subscription}</p><p>{survey}</p>', '', 1, NULL, NULL, NULL, NULL, NULL, NULL, 'notification', 0, NULL, 'notification_unsuball', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(3, 'A User unsubscribed : {user:email}', '<p>Hello {subtag:name},</p><p>The user {user:name} : {user:email} unsubscribed from your list</p><p>Subscription : {user:subscription}</p><p>{survey}</p>', '', 1, NULL, NULL, NULL, NULL, NULL, NULL, 'notification', 0, NULL, 'notification_unsub', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(4, 'A User refuses to receive e-mails from your website : {user:email}', '<p>The User {user:name} : {user:email} refuses to receive any e-mail anymore from your website.</p><p>Subscription : {user:subscription}</p><p>{survey}</p>', '', 1, NULL, NULL, NULL, NULL, NULL, NULL, 'notification', 0, NULL, 'notification_refuse', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(5, 'New contact from your website : {user:email}', '<p>Hello {subtag:name},</p><p>A user submitted the form : </p><blockquote><p>Name : {user:name}</p><p>Email : {user:email}</p><p>IP : {user:ip} </p><p>Subscription : {user:subscription}</p></blockquote>', '', 1, NULL, NULL, NULL, NULL, NULL, NULL, 'notification', 0, NULL, 'notification_contact', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(6, 'A user confirmed his subscription : {user:email}', '<p>Hello {subtag:name},</p><p>A user confirmed his subscription : </p><blockquote><p>Name : {user:name}</p><p>Email : {user:email}</p><p>IP : {user:ip} </p><p>Subscription : {user:subscription}</p></blockquote>', '', 1, NULL, NULL, NULL, NULL, NULL, NULL, 'notification', 0, NULL, 'notification_confirm', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(7, '{subtag:name|ucfirst}, {trans:PLEASE_CONFIRM_SUB}', '<div style="text-align: center; width: 100%; background-color: #ffffff;">\r\n			<table style="text-align:justify; margin:auto; background-color:#ebebeb; border:1px solid #e7e7e7" border="0" cellspacing="0" cellpadding="0" width="600" align="center" bgcolor="#ebebeb">\r\n			<tbody>\r\n			<tr style="line-height: 0px;">\r\n			<td style="line-height: 0px;" height="38px"><img src="media/com_acymailing/templates/newsletter-4/top.png" border="0" alt=" - - - " /></td>\r\n			</tr>\r\n			<tr>\r\n			<td style="text-align:center" width="600">\r\n			<table style="margin:auto;" border="0" cellspacing="0" cellpadding="0" width="520">\r\n			<tbody>\r\n			<tr>\r\n			<td style="background-color: #ffffff; border: 1px solid #dbdbdb; padding: 20px; width: 500px; margin: 15px auto; text-align: left;">\r\n			<h1>Hello {subtag:name|ucfirst},</h1>\r\n			<p>{trans:CONFIRM_MSG}<br /><br />{trans:CONFIRM_MSG_ACTIVATE}</p>\r\n			<br />\r\n			<p style="text-align:center;"><strong>{confirm}{trans:CONFIRM_SUBSCRIPTION}{/confirm}</strong></p>\r\n			</td>\r\n			</tr>\r\n			</tbody>\r\n			</table>\r\n			</td>\r\n			</tr>\r\n			<tr style="line-height: 0px;">\r\n			<td style="line-height: 0px;" height="40px"><img src="media/com_acymailing/templates/newsletter-4/bottom.png" border="0" alt=" - - - " /></td>\r\n			</tr>\r\n			</tbody>\r\n			</table>\r\n			</div>', '', 1, NULL, NULL, NULL, NULL, NULL, NULL, 'notification', 0, NULL, 'confirmation', NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(8, 'AcyMailing Cron Report {mainreport}', '<p>{report}</p><p>{detailreport}</p>', '', 1, NULL, NULL, NULL, NULL, NULL, NULL, 'notification', 0, NULL, 'report', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(9, 'Modify your subscription', '<p>Hello {subtag:name}, </p><p>You requested some changes on your subscription,</p><p>Please {modify}click here{/modify} to be identified as the owner of this account and then modify your subscription.</p>', '', 1, NULL, NULL, NULL, NULL, NULL, NULL, 'notification', 0, NULL, 'modif', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '');

-- --------------------------------------------------------

--
-- Структура таблицы `f8ad7_acymailing_queue`
--

CREATE TABLE IF NOT EXISTS `f8ad7_acymailing_queue` (
  `senddate` int(10) unsigned NOT NULL,
  `subid` int(10) unsigned NOT NULL,
  `mailid` mediumint(8) unsigned NOT NULL,
  `priority` tinyint(3) unsigned DEFAULT '3',
  `try` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `paramqueue` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`subid`,`mailid`),
  KEY `listingindex` (`senddate`,`subid`),
  KEY `mailidindex` (`mailid`),
  KEY `orderingindex` (`priority`,`senddate`,`subid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `f8ad7_acymailing_rules`
--

CREATE TABLE IF NOT EXISTS `f8ad7_acymailing_rules` (
  `ruleid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `ordering` smallint(6) DEFAULT NULL,
  `regex` text NOT NULL,
  `executed_on` text NOT NULL,
  `action_message` text NOT NULL,
  `action_user` text NOT NULL,
  `published` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`ruleid`),
  KEY `ordering` (`published`,`ordering`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `f8ad7_acymailing_stats`
--

CREATE TABLE IF NOT EXISTS `f8ad7_acymailing_stats` (
  `mailid` mediumint(8) unsigned NOT NULL,
  `senthtml` int(10) unsigned NOT NULL DEFAULT '0',
  `senttext` int(10) unsigned NOT NULL DEFAULT '0',
  `senddate` int(10) unsigned NOT NULL,
  `openunique` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `opentotal` int(10) unsigned NOT NULL DEFAULT '0',
  `bounceunique` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `fail` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `clicktotal` int(10) unsigned NOT NULL DEFAULT '0',
  `clickunique` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `unsub` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `forward` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `bouncedetails` text,
  PRIMARY KEY (`mailid`),
  KEY `senddateindex` (`senddate`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `f8ad7_acymailing_subscriber`
--

CREATE TABLE IF NOT EXISTS `f8ad7_acymailing_subscriber` (
  `subid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(200) NOT NULL,
  `userid` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(250) NOT NULL DEFAULT '',
  `created` int(10) unsigned DEFAULT NULL,
  `confirmed` tinyint(4) NOT NULL DEFAULT '0',
  `enabled` tinyint(4) NOT NULL DEFAULT '1',
  `accept` tinyint(4) NOT NULL DEFAULT '1',
  `ip` varchar(100) DEFAULT NULL,
  `html` tinyint(4) NOT NULL DEFAULT '1',
  `key` varchar(250) DEFAULT NULL,
  `confirmed_date` int(10) unsigned NOT NULL DEFAULT '0',
  `confirmed_ip` varchar(100) DEFAULT NULL,
  `lastopen_date` int(10) unsigned NOT NULL DEFAULT '0',
  `lastopen_ip` varchar(100) DEFAULT NULL,
  `lastclick_date` int(10) unsigned NOT NULL DEFAULT '0',
  `lastsent_date` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`subid`),
  UNIQUE KEY `email` (`email`),
  KEY `userid` (`userid`),
  KEY `queueindex` (`enabled`,`accept`,`confirmed`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `f8ad7_acymailing_subscriber`
--

INSERT INTO `f8ad7_acymailing_subscriber` (`subid`, `email`, `userid`, `name`, `created`, `confirmed`, `enabled`, `accept`, `ip`, `html`, `key`, `confirmed_date`, `confirmed_ip`, `lastopen_date`, `lastopen_ip`, `lastclick_date`, `lastsent_date`) VALUES
(1, 'chevil92@gmail.com', 445, 'Super User', 1410777706, 1, 1, 1, NULL, 1, NULL, 0, NULL, 0, NULL, 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `f8ad7_acymailing_template`
--

CREATE TABLE IF NOT EXISTS `f8ad7_acymailing_template` (
  `tempid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(250) DEFAULT NULL,
  `description` text,
  `body` longtext,
  `altbody` longtext,
  `created` int(10) unsigned DEFAULT NULL,
  `published` tinyint(4) NOT NULL DEFAULT '1',
  `premium` tinyint(4) NOT NULL DEFAULT '0',
  `ordering` smallint(5) unsigned DEFAULT '0',
  `namekey` varchar(50) NOT NULL,
  `styles` text,
  `subject` varchar(250) DEFAULT NULL,
  `stylesheet` text,
  `fromname` varchar(250) DEFAULT NULL,
  `fromemail` varchar(250) DEFAULT NULL,
  `replyname` varchar(250) DEFAULT NULL,
  `replyemail` varchar(250) DEFAULT NULL,
  `thumb` varchar(250) DEFAULT NULL,
  `readmore` varchar(250) DEFAULT NULL,
  `access` varchar(250) NOT NULL DEFAULT 'all',
  PRIMARY KEY (`tempid`),
  UNIQUE KEY `namekey` (`namekey`),
  KEY `orderingindex` (`ordering`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Дамп данных таблицы `f8ad7_acymailing_template`
--

INSERT INTO `f8ad7_acymailing_template` (`tempid`, `name`, `description`, `body`, `altbody`, `created`, `published`, `premium`, `ordering`, `namekey`, `styles`, `subject`, `stylesheet`, `fromname`, `fromemail`, `replyname`, `replyemail`, `thumb`, `readmore`, `access`) VALUES
(1, 'Notification template', '', '<div style="text-align: center; width: 100%; background-color:#ffffff;">\r\n<div class="acymailing_online acyeditor_delete acyeditor_text" style="text-align:center">{readonline}This email contains graphics, so if you don''t see them, view it in your browser{/readonline}</div>\r\n\r\n<table align="center" border="0" cellpadding="0" cellspacing="0" class="w600" style="text-align: justify; margin: auto; width:600px">\r\n	<tbody>\r\n		<tr style="line-height: 0px;" class="acyeditor_delete">\r\n			<td class="w600" colspan="5" style="background-color: #69b4c0;" valign="bottom" width="600"><img alt=" - - - " src="media/com_acymailing/templates/newsletter-4/images/top.png" /></td>\r\n		</tr>\r\n		<tr class="acyeditor_delete">\r\n			<td class="w40" style="background-color: #ebebeb;" width="40"></td>\r\n			<td class="acyeditor_text w520" colspan="3" height="80" style="text-align: left; background-color: rgb(235, 235, 235);" width="520"><img alt="-" src="media/com_acymailing/templates/newsletter-4/images/message_icon.png" style="float:left; margin-right:10px;" />\r\n				<h3>Topic of your message</h3>\r\n\r\n				<h4>Subtitle for your message</h4>\r\n			</td>\r\n			<td class="acyeditor_picture w40" style="background-color: #ebebeb;" width="40"></td>\r\n		</tr>\r\n		<tr class="acyeditor_delete" >\r\n			<td class="w40" style="background-color: #ebebeb;" width="40"></td>\r\n			<td class="w20" style="background-color: #fff;" width="20"></td>\r\n			<td class="w480" height="20" style="background-color:#fff;" width="480"></td>\r\n			<td class="w20" style="background-color: #fff;" width="20"></td>\r\n			<td class="w40" style="background-color: #ebebeb;" width="40"></td>\r\n		</tr>\r\n		<tr class="acyeditor_delete" >\r\n			<td class="w40" style="background-color: #ebebeb;" width="40"></td>\r\n			<td class="w20" style="background-color: #fff;" width="20"></td>\r\n			<td class="acyeditor_text w480 pict" style="background-color:#fff; text-align: left;" width="480">\r\n			<h1>Dear {subtag:name},</h1>\r\n			Your message here...<br />\r\n			</td>\r\n			<td class="w20" style="background-color: #fff;" width="20"></td>\r\n			<td class="w40" style="background-color: #ebebeb;" width="40"></td>\r\n		</tr>\r\n		<tr class="acyeditor_delete" >\r\n			<td class="w40" style="background-color: #ebebeb;" width="40"></td>\r\n			<td class="w20" style="background-color: #fff;" width="20"></td>\r\n			<td class="w480" height="20" style="background-color:#fff;" width="480"></td>\r\n			<td class="w20" style="background-color: #fff;" width="20"></td>\r\n			<td class="w40" style="background-color: #ebebeb;" width="40"></td>\r\n		</tr>\r\n		<tr style="line-height: 0px;" class="acyeditor_delete">\r\n			<td class="w600" colspan="5" style="background-color:#ebebeb;" width="600"><img alt=" - - - " src="media/com_acymailing/templates/newsletter-4/images/bottom.png" /></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<div class="acyeditor_delete acyeditor_text" style="text-align:center">Not interested any more? {unsubscribe}Unsubscribe{/unsubscribe}</div>\r\n</div>', '', NULL, 1, 0, 1, 'newsletter-4', 'a:10:{s:6:"tag_h1";s:76:"color:#393939 !important; font-size:14px; font-weight:bold; margin:10px 0px;";s:6:"tag_h2";s:106:"color: #309fb3 !important; font-size: 14px; font-weight: normal; text-align:left; margin:0px; padding:0px;";s:6:"tag_h3";s:144:"color: #393939 !important; font-size: 18px; font-weight: bold; text-align:left; margin:0px; padding-bottom:5px; border-bottom:1px solid #bdbdbd;";s:6:"tag_h4";s:117:"color: #309fb3 !important; font-size: 14px; font-weight: bold; text-align:left; margin:0px; padding: 5px 0px 0px 0px;";s:5:"tag_a";s:71:"color:#309FB3; text-decoration:none; font-style:italic; cursor:pointer;";s:19:"acymailing_readmore";s:90:"font-size: 12px; color: #fff; background-color:#309fb3; font-weight:bold; padding:3px 5px;";s:17:"acymailing_online";s:52:"color:#a3a3a3; text-decoration:none; font-size:11px;";s:16:"acymailing_unsub";s:52:"color:#a3a3a3; text-decoration:none; font-size:11px;";s:8:"color_bg";s:7:"#ffffff";s:18:"acymailing_content";s:19:"text-align:justify;";}', NULL, 'div,table,p{font-family: Verdana, Arial, Helvetica, sans-serif; font-size:12px; text-align:justify; color:#8c8c8c; margin:0px}\r\ndiv.info{text-align:center;padding:10px;font-size:11px;color:#a3a3a3;}\r\n\r\n@media (min-width:10px){\r\n	table[class=w600], td[class=w600] { width: 320px !important;}\r\n	table[class=w520], td[class=w520] { width: 280px !important;}\r\n	table[class=w480], td[class=w480] { width: 260px !important;}\r\n	td[class=w40] { width: 20px !important;}\r\n	td[class=w20] { width: 10px !important;}\r\n	.w600 img {max-width:320px; height:auto !important}\r\n	.w480 img {max-width:260px; height:auto !important;}\r\n}\r\n\r\n@media (min-width:480px) {\r\n	table[class=w600], td[class=w600] { width: 480px !important;}\r\n	table[class=w520], td[class=w520] { width: 440px !important;}\r\n	table[class=w480], td[class=w480] { width: 420px !important;}\r\n	td[class=w40] { width: 20px !important;}\r\n	td[class=w20] { width: 10px !important;}\r\n	.w600 img {max-width:480px; height:auto !important}\r\n	.w480 img {max-width:420px;  height:auto !important;}\r\n}\r\n@media (min-width:600px){\r\n	table[class=w600], td[class=w600] { width: 600px !important;}\r\n	table[class=w520], td[class=w520] { width: 520px !important;}\r\n	table[class=w480], td[class=w480] { width: 480px !important;}\r\n	td[class=w40] { width40px !important;}\r\n	td[class=w20] { width: 20px !important;}\r\n	.w600 img {max-width:600px; height:auto !important}\r\n	.w480 img {max-width:480px;  height:auto !important;}\r\n}\r\n', NULL, NULL, NULL, NULL, 'media/com_acymailing/templates/newsletter-4/newsletter-4.png', '', 'all'),
(2, 'Newspaper', '', '<div align="center" style="width:100%; background-color:#454545; padding-bottom:20px; color:#ffffff;">\r\n<div class="acymailing_online acyeditor_delete acyeditor_text">{readonline}This e-mail contains graphics, if you don''t see them <strong>» view it online.</strong>{/readonline}</div>\r\n\r\n<table align="center" border="0" cellpadding="0" cellspacing="0" class="w600" style="margin:auto; background-color:#ffffff; color:#454545;" width="600">\r\n		<tr>\r\n			<td class="w600">\r\n			<table border="0" cellpadding="0" cellspacing="0" class="w600" width="600">\r\n					<tr class="acyeditor_delete" >\r\n						<td class="w30" style="background-color:#ffffff" width="30"></td>\r\n						<td class="acyeditor_text w540" style="font-family:Times New Roman, Times, serif; background-color:#ffffff; text-align:left" width="540">&nbsp;\r\n						<h1><img alt="logo" src="media/com_acymailing/templates/newsletter-5/images/logo.png" style="float: right; width: 107px; height: 70px;" /></h1>\r\n\r\n						<h1>Your title here</h1>\r\n\r\n						<h3>your subtitle</h3>\r\n						</td>\r\n						<td class="w30" style="line-height:0px; background-color:#ffffff" width="30"></td>\r\n					</tr>\r\n					<tr class="acyeditor_delete">\r\n						<td class="w600" colspan="3" style="line-height:0px; background-color:#e4e4e4" valign="top" width="600"><img alt="---" src="media/com_acymailing/templates/newsletter-5/images/header.png" /></td>\r\n					</tr>\r\n					<tr class="acyeditor_delete">\r\n						<td class="acyeditor_picture w600" colspan="3" style="line-height:0px; background-color:#ffffff" valign="top" width="600"><img alt="banner" src="media/com_acymailing/templates/newsletter-5/images/banner.png" /></td>\r\n					</tr>\r\n					<tr class="acyeditor_delete">\r\n						<td class="w600" colspan="3" style="line-height:0px;" valign="top" width="600"><img alt="---" src="media/com_acymailing/templates/newsletter-5/images/separator.png" /></td>\r\n					</tr>\r\n					<tr>\r\n						<td class="w30" style="background-color:#ffffff" width="30"></td>\r\n						<td class="acyeditor_text w540" style="text-align:justify; color:#575757; font-family:Times New Roman, Times, serif; font-size:13px; background-color:#ffffff" width="540">\r\n						<h2>Interviews and reports</h2>\r\n						<span class="dark">Lorem ipsum dolor sit amet, consectLorem ipsum dolor sit amet.</span><br />\r\n						consectetur adipiscing elit. Aenean sollicitudin orci sit amet urna lla pretium ut. Sed elementum convallis mi. Vivamus elementum.ed elementum convallis mi. <a href="#">Vivamus elementum</a>.Lorem ipsum dolor sit amet.<br />\r\n						<br />\r\n						cLorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean sollicitudin orci sit amet urna lla pretium ut. Sed elementum convallis mi. Vivamus elementum.<br />\r\n						<br />\r\n						<span class="acymailing_readmore">Read More</span><br />\r\n						&nbsp;\r\n						<h2>Journalism around the world</h2>\r\n						<span class="dark">Lorem ipsum dolor sit amet, consectLorem. consectetur adipiscing elit. Aenean sollicitudin orci sit amet urna lla pretium ut. Sed elementum.</span> consectetur adipiscing elit. Aenean sollicitudin orci sit amet urna lla pretium ut. Sed elementum convallis mi. Vivamus elementum.ed elementum convallis mi.<br />\r\n						Vivamus elementum.<a href="#">Lorem ipsum dolor</a> sit amet.Lorem ipsum dolor sit amet, consectetur adipiscing elit.<br />\r\n						<br />\r\n						<span class="acymailing_readmore">Read More</span></td>\r\n						<td class="w30" style="background-color:#ffffff" width="30"></td>\r\n					</tr>\r\n					<tr style="line-height: 0px;">\r\n						<td class="w600" colspan="3" style="background-color:#ffffff" width="600"><img alt="--" src="media/com_acymailing/templates/newsletter-5/images/footer1.png" width="600" /></td>\r\n					</tr>\r\n					<tr>\r\n						<td class="acyfooter acyeditor_text w600" colspan="3" height="25" style="text-align:center; background-color:#ebebeb;  color:#454545; font-family:Times New Roman, Times, serif; font-size:13px" width="600"><a href="#">www.mywebsite.com</a> | <a href="#">contact</a> | <a href="#">Facebook</a> | <a href="#">Twitter</a></td>\r\n					</tr>\r\n					<tr style="line-height: 0px;">\r\n						<td class="w600" colspan="3" style="background-color:#454545;" width="600"><img alt="--" src="media/com_acymailing/templates/newsletter-5/images/footer2.png" width="600" /></td>\r\n					</tr>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n</table>\r\n\r\n<div class="acymailing_unsub acyeditor_delete acyeditor_text">{unsubscribe}If you''re not interested any more <strong>» unsubscribe</strong>{/unsubscribe}</div>\r\n</div>\r\n', '', NULL, 1, 0, 2, 'newsletter-5', 'a:10:{s:6:"tag_h1";s:71:"color:#454545 !important; font-size:24px; font-weight:bold; margin:0px;";s:6:"tag_h2";s:145:"color:#b20000 !important; font-size:18px; font-weight:bold; margin:0px; margin-bottom:10px; padding-bottom:4px; border-bottom: 1px solid #d6d6d6;";s:6:"tag_h3";s:76:"color:#b20101 !important; font-weight:bold; font-size:18px; margin:10px 0px;";s:6:"tag_h4";s:67:"color:#e52323 !important; font-weight:bold; margin:0px; padding:0px";s:5:"tag_a";s:65:"cursor:pointer; color:#9d0000; text-decoration:none; border:none;";s:19:"acymailing_readmore";s:152:"cursor:pointer; color:#ffffff; background-color:#9d0000; border-top:1px solid #9d0000; border-bottom:1px solid #9d0000; padding:3px 5px; font-size:13px;";s:17:"acymailing_online";s:148:"color:#dddddd; text-decoration:none; font-size:13px; margin:10px; text-align:center; font-family:Times New Roman, Times, serif; padding-bottom:10px;";s:8:"color_bg";s:7:"#454545";s:18:"acymailing_content";s:0:"";s:16:"acymailing_unsub";s:131:"color:#dddddd; text-decoration:none; font-size:13px; text-align:center; font-family:Times New Roman, Times, serif; padding-top:10px";}', NULL, '.acyfooter a{\r\n	color:#454545;\r\n}\r\n.dark{\r\n	color:#454545;\r\n	font-weight:bold;\r\n}\r\ndiv,table,p{font-family:"Times New Roman", Times, serif;font-size:13px;color:#575757;}\r\n\r\n\r\n\r\n@media (min-width:10px){\r\n	table[class=w600], td[class=w600] { width:320px !important; }\r\n	table[class=w540], td[class=w540] { width:260px !important; }\r\n	td[class=w30] { width:30px !important; }\r\n	.w600 img {max-width:320px; height:auto !important; }\r\n	.w540 img {max-width:260px; height:auto !important; }\r\n}\r\n\r\n@media (min-width: 480px){\r\n	table[class=w600], td[class=w600] { width:480px !important; }\r\n	table[class=w540], td[class=w540] { width:420px !important; }\r\n	td[class=w30] { width:30px !important; }\r\n	.w600 img {max-width:480px; height:auto !important; }\r\n	.w540 img {max-width:420px; height:auto !important; }\r\n}\r\n\r\n@media (min-width:600px){\r\n	table[class=w600], td[class=w600] { width:600px !important; }\r\n	table[class=w540], td[class=w540] { width:540px !important; }\r\n	td[class=w30] { width:30px !important; }\r\n	.w600 img     {max-width:600px; height:auto !important; }\r\n	.w540 img {max-width:540px; height:auto !important; }\r\n}\r\n', NULL, NULL, NULL, NULL, 'media/com_acymailing/templates/newsletter-5/newsletter-5.png', '', 'all'),
(3, 'Build Bio', '', '<div align="center" style="width:100%; background-color:#3c3c3c; padding-bottom:20px; color:#ffffff;">\r\n<div class="acymailing_online acyeditor_delete acyeditor_text">{readonline}This e-mail contains graphics, if you don''t see them <strong>» view it online.</strong>{/readonline}</div>\r\n\r\n<table align="center" border="0" cellpadding="0" cellspacing="0" class="w600" style="margin:auto; background-color:#ffffff; color:#575757;" width="600">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<table border="0" cellpadding="0" cellspacing="0" class="w600" width="600">\r\n				<tr class="acyeditor_delete">\r\n					<td class="w600" colspan="3" style="line-height:0px; background-color:#eeeeee" valign="bottom" width="600"><img alt="mail" height="41" src="media/com_acymailing/templates/newsletter-6/images/header.png" width="600" /></td>\r\n				</tr>\r\n				<tr class="acyeditor_delete">\r\n					<td class="w30" style="color:#ffffff;" width="30"></td>\r\n					<td class="acyeditor_picture w540" style="line-height:0px; background-color:#ffffff; text-align:center" width="540"><img alt="" src="media/com_acymailing/templates/newsletter-6/images/banner.png" style="width: 540px; height: 122px;" /></td>\r\n					<td class="w30" height="122" style="background-color:#ffffff" width="30"></td>\r\n				</tr>\r\n				<tr class="acyeditor_delete">\r\n					<td class="w30" style="background-color:#b9cf00; color:#ffffff;" width="30"></td>\r\n					<td class="acyeditor_text w540" height="25" style="text-align:right; background-color:#b9cf00; color:#ffffff;" width="540"><span class="hide">Newsletter</span> {date:3}</td>\r\n					<td class="w30" style="background-color:#b9cf00; color:#ffffff;" width="30"></td>\r\n				</tr>\r\n				<tr>\r\n					<td class="w600" colspan="3" height="25" style="background-color:#ffffff" width="600"></td>\r\n				</tr>\r\n				<tr>\r\n					<td class="w30" style="background-color:#ffffff" width="30"></td>\r\n					<td class="acyeditor_text w540" style="text-align:justify; color:#575757; background-color:#ffffff" width="540"><span class="intro">Hello {subtag:name},</span><br />\r\n					<br />\r\n					Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean sollicitudin orci sit amet urna lla pretium ut. Sed elementum Vivamus elementum. sollicitudin orci sit amet urna lla pretium ut. Sed elementum convallis mi.\r\n					<h2>Day One</h2>\r\n					<strong>Lorem ipsum dolor sit amet, consectLorem ipsum dolor sit amet.</strong><br />\r\n					consectetur adipiscing elit. Aenean sollicitudin orci sit amet urna lla pretium ut. Sed <a href="#">elementum convallis</a> mi. Vivamus elementum.ed elementum convallis mi. Vivamus elementum.Lorem ipsum dolor sit amet.<br />\r\n					<br />\r\n					cLorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean sollicitudin orci sit amet urna lla pretium ut. Sed elementum convallis mi. Vivamus elementum.<br />\r\n					<br />\r\n					<span class="acymailing_readmore">Read More</span>\r\n\r\n					<h2>How to build a green house</h2>\r\n					<img alt="picture" height="160" src="media/com_acymailing/templates/newsletter-6/images/picture.png" style="float:left;" width="193" /> <strong>Lorem ipsum dolor sit amet, elit.</strong> Aenean sollicitudin orci sit amet . Sed <a href="#">elementum convallis</a> mi. Vivamus elementum.ed elementum convallis mi. Vivamus elementum.Lorem ipsum dolor sit amet.<br />\r\n					<br />\r\n					cLorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean sollicitudin orci sit amet urna lla pretium ut. Sed elementum convallis mi. Vivamus elementum.<br />\r\n					<br />\r\n					<span class="acymailing_readmore">Read More</span></td>\r\n					<td class="w30" style="background-color:#ffffff" width="30"></td>\r\n				</tr>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n		<tr class="acyeditor_delete">\r\n			<td>\r\n			<table border="0" cellpadding="0" cellspacing="0" class="w600" width="600">\r\n				<tr style="line-height: 0px;">\r\n					<td class="w600" colspan="3" style="line-height:0px; background-color:#efefef;" valign="top" width="600"><img alt="--" height="18" src="media/com_acymailing/templates/newsletter-6/images/footer1.png" width="600" /></td>\r\n				</tr>\r\n				<tr>\r\n					<td class="w30" height="20" style="line-height:0px; background-color:#efefef;" width="30"></td>\r\n					<td class="acyfooter acyeditor_text w540" style="text-align:right; background-color:#efefef; color:#575757;" width="540"><a href="#">www.mywebsite.com</a> | <a href="#">Contact</a><a href="#"><img alt="message" class="hide" src="media/com_acymailing/templates/newsletter-6/images/mail.png" style="border: medium none; width: 35px; height: 20px;" /></a></td>\r\n					<td class="w30" height="20" style="line-height:0px; background-color:#efefef;" width="30"></td>\r\n				</tr>\r\n				<tr style="line-height: 0px;">\r\n					<td class="w600" colspan="3" style="background-color:#efefef; line-height:0px;" valign="top" width="600"><img alt="--" height="24" src="media/com_acymailing/templates/newsletter-6/images/footer2.png" width="600" /></td>\r\n				</tr>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<div class="acymailing_unsub acyeditor_delete acyeditor_text" >{unsubscribe}If you''re not interested any more <strong>» unsubscribe</strong>{/unsubscribe}</div>\r\n</div>', '', NULL, 1, 0, 3, 'newsletter-6', 'a:9:{s:6:"tag_h1";s:69:"font-weight:bold; font-size:14px;color:#3c3c3c !important;margin:0px;";s:6:"tag_h2";s:129:"color:#b9cf00 !important; font-size:14px; font-weight:bold; margin-top:20px; border-bottom:1px solid #d6d6d6; padding-bottom:4px;";s:6:"tag_h3";s:149:"color:#7e7e7e !important; font-size:14px; font-weight:bold; margin:20px 0px 0px 0px; border-bottom:1px solid #d6d6d6; padding-bottom:0px 0px 4px 0px;";s:6:"tag_h4";s:84:"color:#879700 !important; font-size:12px; font-weight:bold; margin:0px; padding:0px;";s:8:"color_bg";s:7:"#3c3c3c";s:5:"tag_a";s:65:"cursor:pointer; color:#a2b500; text-decoration:none; border:none;";s:17:"acymailing_online";s:91:"color:#dddddd; text-decoration:none; font-size:11px; text-align:center; padding-bottom:10px";s:16:"acymailing_unsub";s:88:"color:#dddddd; text-decoration:none; font-size:11px; text-align:center; padding-top:10px";s:19:"acymailing_readmore";s:73:"cursor:pointer; color:#ffffff; background-color:#b9cf00; padding:3px 5px;";}', NULL, 'table, div, p{\r\n	font-family: Verdana, Arial, Helvetica, sans-serif;\r\n	font-size:11px;\r\n	color:#575757;\r\n}\r\n.intro{\r\n	font-weight:bold;\r\n	font-size:12px;}\r\n\r\n.acyfooter a{\r\n	color:#575757;}\r\n\r\n@media (min-width: 10px){\r\n	table[class=w600], td[class=w600]  { width:320px !important; }\r\n	table[class=w540], td[class=w540]  { width:260px !important; }\r\n	td[class=w30] { width:30px !important; }\r\n	.w600 img{max-width:320px; height:auto !important}\r\n	.w540 img{max-width:260px; height:auto !important}\r\n}\r\n\r\n@media (min-width: 480px){\r\n	table[class=w600], td[class=w600]  { width:480px !important; }\r\n	table[class=w540], td[class=w540]  { width:420px !important; }\r\n	td[class=w30] { width:30px !important; }\r\n	.w600 img{max-width:480px; height:auto !important}\r\n	.w540 img{max-width:420px; height:auto !important}\r\n}\r\n\r\n@media (min-width:600px){\r\n	table[class=w600], td[class=w600]  { width:600px !important; }\r\n	table[class=w540], td[class=w540]  { width:540px !important; }\r\n	td[class=w30] { width:30px !important; }\r\n	.w600 img{max-width:600px; height:auto !important}\r\n	.w540 img{max-width:540px; height:auto !important}\r\n}\r\n', NULL, NULL, NULL, NULL, 'media/com_acymailing/templates/newsletter-6/newsletter-6.png', '', 'all'),
(4, 'Technology', '', '<div align="center" style="width:100%; background-color:#575757; padding-bottom:20px; color:#999999;">\r\n<table align="center" border="0" cellpadding="0" cellspacing="0" class="w600" style="background-color:#fff; color:#999999; margin:auto" width="600">\r\n	<tbody>\r\n		<tr class="acyeditor_delete">\r\n			<td class="w30" style="background-color:#575757" width="30"></td>\r\n			<td class="acyeditor_text w540" style="text-align:right; color:#d2d1d1; background-color:#575757" width="540"><span class="acymailing_online">{readonline}If you can''t see this e-mail properly, <span style="text-decoration:underline">view it online</span>{/readonline}</span></td>\r\n			<td class="w30" style="background-color:#575757" width="30"></td>\r\n		</tr>\r\n		<tr class="acyeditor_delete">\r\n			<td class="acyeditor_picture w600" colspan="3" style="line-height:0px; background-color:#575757" valign="bottom" width="600"><img alt="--" src="media/com_acymailing/templates/technology_resp/images/shadowtop.jpg" /></td>\r\n		</tr>\r\n		<tr class="acyeditor_delete">\r\n			<td class="acyeditor_picture w600" colspan="3" style="line-height:0px; background-color:#f5f5f5" width="600"><img alt="--" src="media/com_acymailing/templates/technology_resp/images/top.jpg" /></td>\r\n		</tr>\r\n		<tr class="acyeditor_delete">\r\n			<td class="w30" height="32" style="background-color:#f5f5f5; border-bottom:1px solid #ddd" width="30"></td>\r\n			<td class="acyeditor_text links w540" style="background-color:#f5f5f5; border-bottom:1px solid #ddd; text-align:right; color:#ababab" width="540"><a href="#"><img alt="mail" src="media/com_acymailing/templates/technology_resp/images/mail.jpg" style="float:right; border:none" /></a> Newsletter {mailid} | {date:%B %Y} |&nbsp; <a href="#">www.acyba.com</a> |</td>\r\n			<td class="w30" height="32" style="background-color:#f5f5f5; border-bottom:1px solid #ddd" width="30"></td>\r\n		</tr>\r\n		<tr class="acyeditor_delete">\r\n			<td class="w600" colspan="3" height="16" width="600"></td>\r\n		</tr>\r\n		<tr class="acyeditor_delete">\r\n			<td class="w30" width="30"></td>\r\n			<td class="acyeditor_text w540" width="540"><img alt="picture" src="media/com_acymailing/templates/technology_resp/images/pic1.jpg" style="float:right" />\r\n			<h1>Fresh and technologic news !</h1>\r\n\r\n			<h3>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris massa quam, eleifend at ornare.</h3>\r\n			Liget, volutpat esvft sem. Praesent auctor posuere orci, sit amet molee. Integer nec scelerisque quam. Lore uctor posum ipsum dolor sit amesent auctor.</td>\r\n			<td class="w30" width="30"></td>\r\n		</tr>\r\n		<tr class="acyeditor_delete">\r\n			<td class="w30" style="background-color:#fafafa" width="30"></td>\r\n			<td class="acyeditor_picture w540" style="background-color:#fafafa; line-height:0px" width="540"><img alt="---" src="media/com_acymailing/templates/technology_resp/images/separator1.jpg" /></td>\r\n			<td class="w30" style="background-color:#fafafa" width="30"></td>\r\n		</tr>\r\n		<tr class="acyeditor_delete">\r\n			<td class="w30" style="background-color:#fafafa" width="30"></td>\r\n			<td class="acyeditor_text w540" style="background-color:#fafafa; color:#999999" width="540">\r\n			<h2>Choose your smartphone</h2>\r\n			<img alt="picture" src="media/com_acymailing/templates/technology_resp/images/pic2.jpg" style="float:left" />\r\n			<h3>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris massa quam, eleifend at ornare.</h3>\r\n			Liget, volutpat esvft sem. Praesent auctor posuere orci, sit amet molee. Integer nec<a href="#"> scelerisque quam</a>. Lore uctor posum ipsum dolor sit amesent auctor.<br />\r\n			<br />\r\n			<img alt="buy this product" src="media/com_acymailing/templates/technology_resp/images/buyproduct.jpg" /><br />\r\n			<br />\r\n			<br />\r\n			&nbsp;\r\n			<h2>Choose your device</h2>\r\n			<img alt="picture" src="media/com_acymailing/templates/technology_resp/images/pic3.jpg" style="float:right" />\r\n			<h3>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris massa quam, eleifend at ornare.</h3>\r\n			Liget, volutpat esvft sem. Praesent auctor posuere orci, sit amet molee. Integer nec scelerisque quam. Lore uctor posum ipsum dolor sit amesent auctor.<br />\r\n			<br />\r\n			<img alt="buy this product" src="media/com_acymailing/templates/technology_resp/images/buyproduct.jpg" /></td>\r\n			<td class="w30" style="background-color:#fafafa" width="30"></td>\r\n		</tr>\r\n		<tr class="acyeditor_delete" >\r\n			<td class="w30" style="background-color:#fafafa" width="30"></td>\r\n			<td class="acyeditor_picture w540" style="background-color:#fafafa; line-height:0px" width="540"><img alt="---" src="media/com_acymailing/templates/technology_resp/images/separator2.jpg" /></td>\r\n			<td class="w30" style="background-color:#fafafa" width="30"></td>\r\n		</tr>\r\n		<tr class="acyeditor_delete" >\r\n			<td class="w600" colspan="3" height="16" width="600"></td>\r\n		</tr>\r\n		<tr class="acyeditor_delete" >\r\n			<td class="w30" width="30"></td>\r\n			<td class="acyeditor_text special w540" style="color:#999999" width="540">\r\n			<h2>Best product of the month</h2>\r\n\r\n			<h3>Lorem ipsum dolor sit amet.</h3>\r\n			Liget, volutpat esvft sem. Praesent auctor posuere orci, sit amet molee. Integer nec scelerisque quam. Lore uctor posum ipsum doLiget, volutpat esvft sem. Praesent auctor posuere orci, sit amet molee. Integer nec scelerisque quam. Lore uctor posum ipsum dolor sit amesent.<br />\r\n			<br />\r\n			<img alt="read more" src="media/com_acymailing/templates/technology_resp/images/readmore.jpg" style="border:none" /></td>\r\n			<td class="w30" width="30"></td>\r\n		</tr>\r\n		<tr class="acyeditor_delete" >\r\n			<td class="w600" colspan="3" height="16" width="600"></td>\r\n		</tr>\r\n		<tr class="acyeditor_delete" >\r\n			<td class="w30" height="30" style="background-color:#f5f5f5; border-top:1px solid #ddd" width="30"></td>\r\n			<td class="acyeditor_text w540" height="30" style="background-color:#f5f5f5; border-top:1px solid #ddd; text-align:right; color:#ababab" valign="bottom" width="540">Follow us | <img alt="facebook" src="media/com_acymailing/templates/technology_resp/images/facebook.jpg" style="border:none" /> <img alt="twitter" src="media/com_acymailing/templates/technology_resp/images/twitter.jpg" style="border:none" /> <img alt="pinterest" src="media/com_acymailing/templates/technology_resp/images/pinterest.jpg" style="border:none" /> <img alt="rss" src="media/com_acymailing/templates/technology_resp/images/rss.jpg" style="border:none" /></td>\r\n			<td class="w30" height="30" style="background-color:#f5f5f5; border-top:1px solid #ddd" width="30"></td>\r\n		</tr>\r\n		<tr class="acyeditor_delete" >\r\n			<td class="acyeditor_picture w600" colspan="3" style="line-height:0px; background-color:#f5f5f5" width="600"><img alt="--" src="media/com_acymailing/templates/technology_resp/images/bottom.jpg" /></td>\r\n		</tr>\r\n		<tr class="acyeditor_delete" >\r\n			<td class="acyeditor_picture w600" colspan="3" style="line-height:0px; background-color:#575757" valign="bottom" width="600"><img alt="--" src="media/com_acymailing/templates/technology_resp/images/shadowbottom.jpg" /></td>\r\n		</tr>\r\n		<tr class="acyeditor_delete" >\r\n			<td class="w30" style="background-color:#575757" width="30"></td>\r\n			<td class="acyeditor_text w540" style="text-align:right; color:#d2d1d1; background-color:#575757" width="540"><span class="acymailing_unsub">{unsubscribe}If you don''t want to receive our news anymore, <span style="text-decoration:underline">unsubscribe</span>{/unsubscribe} </span></td>\r\n			<td class="w30" style="background-color:#575757" width="30"></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n</div>', '', NULL, 1, 0, 4, 'technology_resp', 'a:9:{s:6:"tag_h1";s:104:"font-size:20px; margin:0px; margin-bottom:15px; padding:0px; font-weight:bold; color:#01bbe5 !important;";s:6:"tag_h2";s:165:"font-size:12px; font-weight:bold; color:#565656 !important; text-transform:uppercase; margin:10px 0px; padding:0px; padding-bottom:5px; border-bottom:1px solid #ddd;";s:6:"tag_h3";s:104:"color:#565656 !important; font-weight:bold; font-size:12px; margin:0px; margin-bottom:10px; padding:0px;";s:6:"tag_h4";s:0:"";s:8:"color_bg";s:7:"#575757";s:5:"tag_a";s:62:"cursor:pointer;color:#01bbe5;text-decoration:none;border:none;";s:17:"acymailing_online";s:30:"color:#d2d1d1; cursor:pointer;";s:16:"acymailing_unsub";s:30:"color:#d2d1d1; cursor:pointer;";s:19:"acymailing_readmore";s:88:"cursor:pointer; font-weight:bold; color:#fff; background-color:#01bbe5; padding:2px 5px;";}', NULL, 'table, div, p {\r\n	font-family:Arial, Helvetica, sans-serif;\r\n	font-size:12px;\r\n}\r\np{margin:0px; padding:0px}\r\n\r\n.special h2{font-size:18px;\r\n	margin:0px;\r\n	margin-bottom:15px;\r\n	padding:0px;\r\n	font-weight:bold;\r\n	color:#01bbe5 !important;\r\n	text-transform:none;\r\n	border:none}\r\n\r\n.links a{color:#ababab}\r\n\r\n@media (min-width:10px){\r\n	table[class=w600], td[class=w600] { width:320px !important;}\r\n	table[class=w540], td[class=w540] { width:260px !important;}\r\n	td[class=w30] { width:30px !important;}\r\n	.w600 img {max-width:320px; height:auto !important}\r\n	.w540 img {max-width:260px; height:auto !important}\r\n}\r\n\r\n@media (min-width: 480px){\r\n	table[class=w600], td[class=w600] { width:480px !important;}\r\n	table[class=w540], td[class=w540] { width:420px !important;}\r\n	td[class=w30] { width:30px !important;}\r\n	.w600 img {max-width:480px; height:auto !important}\r\n	.w540 img {max-width:420px; height:auto !important}\r\n}\r\n\r\n@media (min-width:600px){\r\n	table[class=w600], td[class=w600] { width:600px !important;}\r\n	table[class=w540], td[class=w540] { width:540px !important;}\r\n	td[class=w30] { width:30px !important;}\r\n	.w600 img {max-width:600px; height:auto !important}\r\n	.w540 img {max-width:540px; height:auto !important}\r\n}\r\n', NULL, NULL, NULL, NULL, 'media/com_acymailing/templates/technology_resp/thumb.jpg', '', 'all');

-- --------------------------------------------------------

--
-- Структура таблицы `f8ad7_acymailing_url`
--

CREATE TABLE IF NOT EXISTS `f8ad7_acymailing_url` (
  `urlid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `url` text NOT NULL,
  PRIMARY KEY (`urlid`),
  KEY `url` (`url`(250))
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `f8ad7_acymailing_urlclick`
--

CREATE TABLE IF NOT EXISTS `f8ad7_acymailing_urlclick` (
  `urlid` int(10) unsigned NOT NULL,
  `mailid` mediumint(8) unsigned NOT NULL,
  `click` smallint(5) unsigned NOT NULL DEFAULT '0',
  `subid` int(10) unsigned NOT NULL,
  `date` int(10) unsigned NOT NULL,
  `ip` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`urlid`,`mailid`,`subid`),
  KEY `dateindex` (`date`),
  KEY `mailidindex` (`mailid`),
  KEY `subidindex` (`subid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `f8ad7_acymailing_userstats`
--

CREATE TABLE IF NOT EXISTS `f8ad7_acymailing_userstats` (
  `mailid` mediumint(8) unsigned NOT NULL,
  `subid` int(10) unsigned NOT NULL,
  `html` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `sent` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `senddate` int(10) unsigned NOT NULL,
  `open` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `opendate` int(11) NOT NULL,
  `bounce` tinyint(4) NOT NULL DEFAULT '0',
  `fail` tinyint(4) NOT NULL DEFAULT '0',
  `ip` varchar(100) DEFAULT NULL,
  `browser` varchar(255) DEFAULT NULL,
  `browser_version` tinyint(3) unsigned DEFAULT NULL,
  `is_mobile` tinyint(3) unsigned DEFAULT NULL,
  `mobile_os` varchar(255) DEFAULT NULL,
  `user_agent` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`mailid`,`subid`),
  KEY `senddateindex` (`senddate`),
  KEY `subidindex` (`subid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `f8ad7_assets`
--

CREATE TABLE IF NOT EXISTS `f8ad7_assets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set parent.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `level` int(10) unsigned NOT NULL COMMENT 'The cached level in the nested tree.',
  `name` varchar(50) NOT NULL COMMENT 'The unique name for the asset.\n',
  `title` varchar(100) NOT NULL COMMENT 'The descriptive title for the asset.',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_asset_name` (`name`),
  KEY `idx_lft_rgt` (`lft`,`rgt`),
  KEY `idx_parent_id` (`parent_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=303 ;

--
-- Дамп данных таблицы `f8ad7_assets`
--

INSERT INTO `f8ad7_assets` (`id`, `parent_id`, `lft`, `rgt`, `level`, `name`, `title`, `rules`) VALUES
(1, 0, 0, 572, 0, 'root.1', 'Root Asset', '{"core.login.site":{"6":1,"2":1},"core.login.admin":{"6":1},"core.login.offline":{"6":1},"core.admin":{"8":1},"core.manage":{"7":1},"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(2, 1, 1, 2, 1, 'com_admin', 'com_admin', '{}'),
(3, 1, 3, 6, 1, 'com_banners', 'com_banners', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(4, 1, 7, 8, 1, 'com_cache', 'com_cache', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(5, 1, 9, 10, 1, 'com_checkin', 'com_checkin', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(6, 1, 11, 12, 1, 'com_config', 'com_config', '{}'),
(7, 1, 13, 16, 1, 'com_contact', 'com_contact', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(8, 1, 17, 270, 1, 'com_content', 'com_content', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(9, 1, 271, 272, 1, 'com_cpanel', 'com_cpanel', '{}'),
(10, 1, 273, 274, 1, 'com_installer', 'com_installer', '{"core.admin":[],"core.manage":{"7":0},"core.delete":{"7":0},"core.edit.state":{"7":0}}'),
(11, 1, 275, 276, 1, 'com_languages', 'com_languages', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(12, 1, 277, 278, 1, 'com_login', 'com_login', '{}'),
(13, 1, 279, 280, 1, 'com_mailto', 'com_mailto', '{}'),
(14, 1, 281, 282, 1, 'com_massmail', 'com_massmail', '{}'),
(15, 1, 283, 284, 1, 'com_media', 'com_media', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":{"5":1}}'),
(16, 1, 285, 286, 1, 'com_menus', 'com_menus', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(17, 1, 287, 288, 1, 'com_messages', 'com_messages', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(18, 1, 289, 406, 1, 'com_modules', 'com_modules', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(19, 1, 407, 410, 1, 'com_newsfeeds', 'com_newsfeeds', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(20, 1, 411, 412, 1, 'com_plugins', 'com_plugins', '{"core.admin":{"7":1},"core.manage":[],"core.edit":[],"core.edit.state":[]}'),
(21, 1, 413, 414, 1, 'com_redirect', 'com_redirect', '{"core.admin":{"7":1},"core.manage":[]}'),
(22, 1, 415, 416, 1, 'com_search', 'com_search', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
(23, 1, 417, 418, 1, 'com_templates', 'com_templates', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(24, 1, 419, 422, 1, 'com_users', 'com_users', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(25, 1, 423, 426, 1, 'com_weblinks', 'com_weblinks', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(26, 1, 427, 428, 1, 'com_wrapper', 'com_wrapper', '{}'),
(27, 8, 18, 19, 2, 'com_content.category.2', 'Без категории', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(28, 3, 4, 5, 2, 'com_banners.category.3', 'Без категории', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(29, 7, 14, 15, 2, 'com_contact.category.4', 'Без категории', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(30, 19, 408, 409, 2, 'com_newsfeeds.category.5', 'Без категории', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(31, 25, 424, 425, 2, 'com_weblinks.category.6', 'Без категории', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(32, 24, 420, 421, 1, 'com_users.category.7', 'Без категории', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(33, 1, 429, 430, 1, 'com_finder', 'com_finder', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
(34, 1, 431, 432, 1, 'com_joomlaupdate', 'com_joomlaupdate', '{"core.admin":[],"core.manage":[],"core.delete":[],"core.edit.state":[]}'),
(35, 1, 433, 434, 1, 'com_tags', 'com_tags', '{"core.admin":[],"core.manage":[],"core.manage":[],"core.delete":[],"core.edit.state":[]}'),
(36, 1, 435, 436, 1, 'com_contenthistory', 'com_contenthistory', '{}'),
(37, 1, 437, 438, 1, 'com_ajax', 'com_ajax', '{}'),
(38, 1, 439, 440, 1, 'com_postinstall', 'com_postinstall', '{}'),
(39, 18, 290, 291, 2, 'com_modules.module.1', 'Главное меню', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(40, 18, 292, 293, 2, 'com_modules.module.2', 'Вход', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(41, 18, 294, 295, 2, 'com_modules.module.3', 'Популярные статьи', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(42, 18, 296, 297, 2, 'com_modules.module.4', 'Недавно добавленные статьи', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(43, 18, 298, 299, 2, 'com_modules.module.8', 'Панель инструментов', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(44, 18, 300, 301, 2, 'com_modules.module.9', 'Быстрые иконки', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(45, 18, 302, 303, 2, 'com_modules.module.10', 'Зарегистрированные пользователи', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(46, 18, 304, 305, 2, 'com_modules.module.12', 'Меню администратора', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(47, 18, 306, 307, 2, 'com_modules.module.13', 'Подменю администратора', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(48, 18, 308, 309, 2, 'com_modules.module.14', 'Статус пользователя', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(49, 18, 310, 311, 2, 'com_modules.module.15', 'Заголовок', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(50, 18, 312, 313, 2, 'com_modules.module.16', 'Авторизация', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(51, 18, 314, 315, 2, 'com_modules.module.17', 'Хлебные крошки', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(52, 18, 316, 317, 2, 'com_modules.module.79', 'Мультиязычность', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(53, 18, 318, 319, 2, 'com_modules.module.86', 'Версия Joomla', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(54, 1, 441, 442, 1, 'com_jsecure', 'jsecure', '{}'),
(55, 1, 443, 444, 1, 'com_jce', 'jce', '{}'),
(56, 1, 445, 446, 1, 'com_xmap', 'com_xmap', '{}'),
(57, 1, 447, 450, 1, 'com_djimageslider', 'com_djimageslider', '{}'),
(58, 18, 320, 321, 2, 'com_modules.module.87', 'Слайдер', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(59, 57, 448, 449, 2, 'com_djimageslider.category.8', 'Без категории', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(60, 8, 20, 161, 2, 'com_content.category.9', 'Информация о Joomla!', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(61, 60, 21, 136, 3, 'com_content.category.10', 'Расширения', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(62, 61, 22, 45, 4, 'com_content.category.11', 'Компоненты', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(63, 61, 46, 105, 4, 'com_content.category.12', 'Модули', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(64, 63, 47, 62, 5, 'com_content.category.13', 'Модули отображения Контента', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(65, 63, 63, 70, 5, 'com_content.category.14', 'Модули информации о пользователях', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(66, 63, 71, 84, 5, 'com_content.category.15', 'Модули отображения информации', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(67, 63, 85, 98, 5, 'com_content.category.16', 'Вспомогательные модули', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(68, 63, 99, 104, 5, 'com_content.category.17', 'Модули навигации', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(69, 61, 106, 109, 4, 'com_content.category.18', 'Типографика', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(70, 61, 110, 113, 4, 'com_content.category.19', 'Шаблоны', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(71, 61, 114, 115, 4, 'com_content.category.20', 'Языки', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(72, 61, 116, 135, 4, 'com_content.category.21', 'Плагины', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(73, 8, 162, 181, 2, 'com_content.category.22', 'Сайты', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(74, 8, 182, 199, 2, 'com_content.category.23', 'Услуги', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(75, 8, 200, 211, 2, 'com_content.category.24', 'Статьи', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(76, 8, 212, 247, 2, 'com_content.category.25', 'Книги', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(77, 8, 248, 269, 2, 'com_content.category.26', 'Руководства', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(78, 60, 137, 138, 3, 'com_content.article.1', 'Сообщество пользователей Joomla!', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(79, 60, 139, 140, 3, 'com_content.article.2', 'Сайты-примеры', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(80, 60, 141, 142, 3, 'com_content.article.3', 'С чего начать', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(81, 60, 143, 144, 3, 'com_content.article.4', 'Проект Joomla!', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(82, 60, 145, 146, 3, 'com_content.article.5', 'Помощь', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(83, 60, 147, 148, 3, 'com_content.article.6', 'Получить помощь', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(84, 60, 149, 150, 3, 'com_content.article.7', 'Опции', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(85, 60, 153, 154, 3, 'com_content.article.8', 'О проекте', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(86, 60, 151, 152, 3, 'com_content.article.9', 'Для новичков', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(87, 60, 155, 156, 3, 'com_content.article.10', 'Выбор домена и хостинга', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(88, 60, 157, 158, 3, 'com_content.article.11', 'Joomla! в действии', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(89, 60, 159, 160, 3, 'com_content.article.12', 'Joomla! - система управления сайтом', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(90, 62, 23, 24, 5, 'com_content.article.13', 'Ссылки', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(91, 1, 451, 452, 1, '#__ucm_content.1', '#__ucm_content.1', '[]'),
(92, 62, 25, 26, 5, 'com_content.article.14', 'Пользователи', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(93, 1, 453, 454, 1, '#__ucm_content.2', '#__ucm_content.2', '[]'),
(94, 62, 27, 28, 5, 'com_content.article.15', 'Поиск', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(95, 1, 455, 456, 1, '#__ucm_content.3', '#__ucm_content.3', '[]'),
(96, 62, 29, 30, 5, 'com_content.article.16', 'Ленты новостей', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(97, 1, 457, 458, 1, '#__ucm_content.4', '#__ucm_content.4', '[]'),
(98, 62, 31, 32, 5, 'com_content.article.17', 'Контент', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(99, 1, 459, 460, 1, '#__ucm_content.5', '#__ucm_content.5', '[]'),
(100, 62, 33, 34, 5, 'com_content.article.18', 'Контакт', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(101, 1, 461, 462, 1, '#__ucm_content.6', '#__ucm_content.6', '[]'),
(102, 62, 35, 36, 5, 'com_content.article.19', 'Компоненты панели управления', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(103, 1, 463, 464, 1, '#__ucm_content.7', '#__ucm_content.7', '[]'),
(104, 64, 48, 49, 6, 'com_content.article.20', 'Самое популярное', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(105, 1, 465, 466, 1, '#__ucm_content.8', '#__ucm_content.8', '[]'),
(106, 64, 50, 51, 6, 'com_content.article.21', 'Новости', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(107, 1, 467, 468, 1, '#__ucm_content.9', '#__ucm_content.9', '[]'),
(108, 64, 52, 53, 6, 'com_content.article.22', 'Модуль - Связанные Материалы', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(109, 1, 469, 470, 1, '#__ucm_content.10', '#__ucm_content.10', '[]'),
(110, 64, 54, 55, 6, 'com_content.article.23', 'Модуль - Новые статьи', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(111, 1, 471, 472, 1, '#__ucm_content.11', '#__ucm_content.11', '[]'),
(112, 64, 56, 57, 6, 'com_content.article.24', 'Модуль - Материалы в категории', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(113, 1, 473, 474, 1, '#__ucm_content.12', '#__ucm_content.12', '[]'),
(114, 64, 58, 59, 6, 'com_content.article.25', 'Модуль - Категории Материалов', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(115, 1, 475, 476, 1, '#__ucm_content.13', '#__ucm_content.13', '[]'),
(116, 64, 60, 61, 6, 'com_content.article.26', 'Модуль - Архив', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(117, 1, 477, 478, 1, '#__ucm_content.14', '#__ucm_content.14', '[]'),
(118, 65, 64, 65, 6, 'com_content.article.27', 'Модуль - Новые Пользователи', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(119, 1, 479, 480, 1, '#__ucm_content.15', '#__ucm_content.15', '[]'),
(120, 65, 66, 67, 6, 'com_content.article.28', 'Модуль - Вход на сайт', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(121, 1, 481, 482, 1, '#__ucm_content.16', '#__ucm_content.16', '[]'),
(122, 65, 68, 69, 6, 'com_content.article.29', 'Кто на сайте', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(123, 1, 483, 484, 1, '#__ucm_content.17', '#__ucm_content.17', '[]'),
(124, 66, 72, 73, 6, 'com_content.article.30', 'Ссылка на ленту новостей', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(125, 1, 485, 486, 1, '#__ucm_content.18', '#__ucm_content.18', '[]'),
(126, 66, 74, 75, 6, 'com_content.article.31', 'Модуль - Ссылки', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(127, 1, 487, 488, 1, '#__ucm_content.19', '#__ucm_content.19', '[]'),
(128, 66, 76, 77, 6, 'com_content.article.32', 'Модуль - Случайное изображение', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(129, 1, 489, 490, 1, '#__ucm_content.20', '#__ucm_content.20', '[]'),
(130, 66, 78, 79, 6, 'com_content.article.33', 'Модуль - Сторонний HTML-код', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(131, 1, 491, 492, 1, '#__ucm_content.21', '#__ucm_content.21', '[]'),
(132, 66, 80, 81, 6, 'com_content.article.34', 'Модуль - Нижний блок', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(133, 1, 493, 494, 1, '#__ucm_content.22', '#__ucm_content.22', '[]'),
(134, 66, 82, 83, 6, 'com_content.article.35', 'Модуль - Баннер', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(135, 1, 495, 496, 1, '#__ucm_content.23', '#__ucm_content.23', '[]'),
(136, 67, 86, 87, 6, 'com_content.article.36', 'Умный поиск', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(137, 1, 497, 498, 1, '#__ucm_content.24', '#__ucm_content.24', '[]'),
(138, 67, 88, 89, 6, 'com_content.article.37', 'Переключение языков', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(139, 1, 499, 500, 1, '#__ucm_content.25', '#__ucm_content.25', '[]'),
(140, 67, 90, 91, 6, 'com_content.article.38', 'Модуль - Статистика', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(141, 1, 501, 502, 1, '#__ucm_content.26', '#__ucm_content.26', '[]'),
(142, 67, 92, 93, 6, 'com_content.article.39', 'Модуль - Рассылки', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(143, 1, 503, 504, 1, '#__ucm_content.27', '#__ucm_content.27', '[]'),
(144, 67, 94, 95, 6, 'com_content.article.40', 'Модуль - Поиск', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(145, 1, 505, 506, 1, '#__ucm_content.28', '#__ucm_content.28', '[]'),
(146, 67, 96, 97, 6, 'com_content.article.41', 'Модуль - Обёртка (Wrapper)', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(147, 1, 507, 508, 1, '#__ucm_content.29', '#__ucm_content.29', '[]'),
(148, 68, 100, 101, 6, 'com_content.article.42', 'Модуль - Меню', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(149, 1, 509, 510, 1, '#__ucm_content.30', '#__ucm_content.30', '[]'),
(150, 68, 102, 103, 6, 'com_content.article.43', 'Модуль "Хлебные крошки"', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(151, 1, 511, 512, 1, '#__ucm_content.31', '#__ucm_content.31', '[]'),
(152, 69, 107, 108, 5, 'com_content.article.44', 'Типографика', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(153, 70, 111, 112, 5, 'com_content.article.45', 'Шаблон RSMetro', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(154, 72, 117, 118, 5, 'com_content.article.46', 'Система', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(155, 1, 513, 514, 1, '#__ucm_content.32', '#__ucm_content.32', '[]'),
(156, 72, 119, 120, 5, 'com_content.article.47', 'Редакторы', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(157, 1, 515, 516, 1, '#__ucm_content.33', '#__ucm_content.33', '[]'),
(158, 72, 121, 122, 5, 'com_content.article.48', 'Пользователь', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(159, 1, 517, 518, 1, '#__ucm_content.34', '#__ucm_content.34', '[]'),
(160, 72, 123, 124, 5, 'com_content.article.49', 'Поиск', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(161, 1, 519, 520, 1, '#__ucm_content.35', '#__ucm_content.35', '[]'),
(162, 72, 125, 126, 5, 'com_content.article.50', 'Контент', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(163, 1, 521, 522, 1, '#__ucm_content.36', '#__ucm_content.36', '[]'),
(164, 72, 127, 128, 5, 'com_content.article.51', 'Капча', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(165, 1, 523, 524, 1, '#__ucm_content.37', '#__ucm_content.37', '[]'),
(166, 72, 129, 130, 5, 'com_content.article.52', 'Дополнения к редакторам', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(167, 1, 525, 526, 1, '#__ucm_content.38', '#__ucm_content.38', '[]'),
(168, 72, 131, 132, 5, 'com_content.article.53', 'Быстрый доступ', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(169, 1, 527, 528, 1, '#__ucm_content.39', '#__ucm_content.39', '[]'),
(170, 72, 133, 134, 5, 'com_content.article.54', 'Аутентификация', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(171, 1, 529, 530, 1, '#__ucm_content.40', '#__ucm_content.40', '[]'),
(172, 73, 163, 164, 3, 'com_content.article.55', 'Сообщество Joomla.org', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(173, 1, 531, 532, 1, '#__ucm_content.41', '#__ucm_content.41', '[]'),
(174, 73, 165, 166, 3, 'com_content.article.56', 'Сайт компании Scarlett', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(175, 1, 533, 534, 1, '#__ucm_content.42', '#__ucm_content.42', '[]'),
(176, 73, 167, 168, 3, 'com_content.article.57', 'Сайт компании Danone', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(177, 1, 535, 536, 1, '#__ucm_content.43', '#__ucm_content.43', '[]'),
(178, 73, 169, 170, 3, 'com_content.article.58', 'Сайт компании Cigar Clan', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(179, 1, 537, 538, 1, '#__ucm_content.44', '#__ucm_content.44', '[]'),
(180, 75, 201, 202, 3, 'com_content.article.59', 'Сайт компании Транспаренси', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(181, 1, 539, 540, 1, '#__ucm_content.45', '#__ucm_content.45', '[]'),
(182, 73, 171, 172, 3, 'com_content.article.60', 'Сайт компании Joomla.ru', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(183, 1, 541, 542, 1, '#__ucm_content.46', '#__ucm_content.46', '[]'),
(184, 73, 173, 174, 3, 'com_content.article.61', 'Сайт компании Art-mania', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(185, 1, 543, 544, 1, '#__ucm_content.47', '#__ucm_content.47', '[]'),
(186, 73, 175, 176, 3, 'com_content.article.62', 'Сайт компании Portal-HR', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(187, 1, 545, 546, 1, '#__ucm_content.48', '#__ucm_content.48', '[]'),
(188, 73, 177, 178, 3, 'com_content.article.63', 'Промо-сайт MTV', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(189, 1, 547, 548, 1, '#__ucm_content.49', '#__ucm_content.49', '[]'),
(190, 73, 179, 180, 3, 'com_content.article.64', 'Промо-сайт Peugeot', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(191, 1, 549, 550, 1, '#__ucm_content.50', '#__ucm_content.50', '[]'),
(192, 74, 183, 184, 3, 'com_content.article.65', 'Хостинг', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(193, 74, 185, 186, 3, 'com_content.article.66', 'Создание сайтов', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(194, 74, 187, 188, 3, 'com_content.article.67', 'Создание интернет магазина', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(195, 74, 189, 190, 3, 'com_content.article.68', 'Разработка компонентов Joomla', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(196, 74, 191, 192, 3, 'com_content.article.69', 'Разработка сайтов', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(197, 74, 193, 194, 3, 'com_content.article.70', 'Продвижение сайтов', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(198, 74, 195, 196, 3, 'com_content.article.71', 'Корпоративный сайт', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(199, 74, 197, 198, 3, 'com_content.article.72', 'Дизайн сайтов', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(200, 75, 203, 204, 3, 'com_content.article.73', 'Разработка корпоративного сайта', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(201, 75, 205, 206, 3, 'com_content.article.74', 'Как составить резюме', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(202, 75, 207, 208, 3, 'com_content.article.75', 'Как создать свой сайт?', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(203, 75, 209, 210, 3, 'com_content.article.76', 'Бесплатный интернет магазин', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(204, 76, 213, 214, 3, 'com_content.article.77', 'Создание веб-сайтов с помощью Joomla! 1.5', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(205, 76, 215, 216, 3, 'com_content.article.78', 'Самоучитель Joomla!', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(206, 76, 217, 218, 3, 'com_content.article.79', 'Движок для вашего сайта. CMS Joomla!, Slaed, PHP-Nuke (+ CD-ROM)', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(207, 76, 219, 220, 3, 'com_content.article.80', 'Выбираем лучший бесплатный движок для сайта. CMS Joomla! и Drupal (+ CD-ROM)', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(208, 76, 221, 222, 3, 'com_content.article.81', 'Praktischer Vergleich der Open-Source CMS TYPO3 V.4 und Joomla! 1.5', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(209, 76, 223, 224, 3, 'com_content.article.82', 'Joomla. Создание сайтов без программирования', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(210, 76, 225, 226, 3, 'com_content.article.83', 'Joomla! Практическое руководство', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(211, 76, 227, 228, 3, 'com_content.article.84', 'Joomla! Практическое руководство', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(212, 76, 229, 230, 3, 'com_content.article.85', 'Joomla! Как спланировать, создать и поддерживать ваш веб-сайт (+ CD-ROM)', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(213, 76, 231, 232, 3, 'com_content.article.86', 'Joomla! Bible', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(214, 76, 233, 234, 3, 'com_content.article.87', 'Joomla! 1.5. Практическое руководство', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(215, 76, 235, 236, 3, 'com_content.article.88', 'Joomla 2.5. Руководство пользователя', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(216, 76, 237, 238, 3, 'com_content.article.89', 'Joomla 1.5.15/1.6.0. Руководство пользователя (+ CD-ROM)', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(217, 76, 239, 240, 3, 'com_content.article.90', 'Joomla 1.5.15/1.6.0. Руководство пользователя', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(218, 76, 241, 242, 3, 'com_content.article.91', 'Joomla 1.5. Руководство пользователя (+ CD-ROM)', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(219, 76, 243, 244, 3, 'com_content.article.92', 'CMS Security Handbook', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(220, 76, 245, 246, 3, 'com_content.article.93', 'A Newbies Guide Joomla!', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(221, 77, 249, 250, 3, 'com_content.article.94', '10. Общие задачи', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(222, 77, 251, 252, 3, 'com_content.article.95', '9. Интеграция с социальными сетями', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(223, 77, 253, 254, 3, 'com_content.article.96', '8. Расширения', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(224, 77, 255, 256, 3, 'com_content.article.97', '7. Отображение контента', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(225, 77, 257, 258, 3, 'com_content.article.98', '6.  Создание контента', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(226, 77, 259, 260, 3, 'com_content.article.99', '5. Пользователи и их статьи', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(227, 77, 261, 262, 3, 'com_content.article.100', '4. Дизайн, Макет, Цвета', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(228, 77, 263, 264, 3, 'com_content.article.101', '3.  Joomla на вашем языке', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(229, 77, 265, 266, 3, 'com_content.article.102', '2.  Скачивание и установка Joomla', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(230, 77, 267, 268, 3, 'com_content.article.103', '1.  Что такое Joomla?', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(231, 62, 37, 38, 5, 'com_content.article.104', 'Баннеры', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(232, 1, 551, 552, 1, '#__ucm_content.51', '#__ucm_content.51', '[]'),
(233, 62, 39, 40, 5, 'com_content.article.105', 'Метки', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(234, 1, 553, 554, 1, '#__ucm_content.52', '#__ucm_content.52', '[]'),
(235, 62, 41, 42, 5, 'com_content.article.106', 'Умный поиск', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(236, 1, 555, 556, 1, '#__ucm_content.53', '#__ucm_content.53', '[]'),
(237, 62, 43, 44, 5, 'com_content.article.107', 'Обновление Joomla!', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(238, 1, 557, 558, 1, '#__ucm_content.54', '#__ucm_content.54', '[]'),
(239, 18, 322, 323, 2, 'com_modules.module.88', 'Верхнее меню', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(240, 18, 324, 325, 2, 'com_modules.module.89', 'Верхнее меню (2)', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(241, 18, 326, 327, 2, 'com_modules.module.90', 'Футер меню', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(242, 18, 328, 329, 2, 'com_modules.module.91', 'Меню компоненты', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(243, 18, 330, 331, 2, 'com_modules.module.92', 'Поиск', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(244, 18, 332, 333, 2, 'com_modules.module.93', 'Новости', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(245, 18, 334, 335, 2, 'com_modules.module.94', 'Популярные', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(246, 18, 336, 337, 2, 'com_modules.module.95', 'Joomla RSS', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(247, 18, 338, 339, 2, 'com_modules.module.96', 'Новости RedSoft', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(248, 18, 340, 341, 2, 'com_modules.module.97', 'Соц закладки', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(249, 18, 342, 343, 2, 'com_modules.module.98', 'Скачать:', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(250, 18, 344, 345, 2, 'com_modules.module.99', 'Хостинг для joomla', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(251, 18, 346, 347, 2, 'com_modules.module.100', 'Баннер редсофт', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(252, 18, 348, 349, 2, 'com_modules.module.101', 'Мое меню', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(254, 18, 350, 351, 2, 'com_modules.module.102', 'ZOO Category', ''),
(255, 18, 352, 353, 2, 'com_modules.module.103', 'ZOO Comment', ''),
(256, 18, 354, 355, 2, 'com_modules.module.104', 'ZOO Item', ''),
(257, 18, 356, 357, 2, 'com_modules.module.105', 'ZOO Quick Icons', ''),
(258, 18, 358, 359, 2, 'com_modules.module.106', 'ZOO Tag', ''),
(259, 18, 360, 361, 2, 'com_modules.module.107', 'Widgetkit', ''),
(260, 18, 362, 363, 2, 'com_modules.module.108', 'Widgetkit Twitter', ''),
(261, 1, 559, 560, 1, 'com_widgetkit', 'widgetkit', '{}'),
(271, 18, 364, 365, 2, 'com_modules.module.109', 'trdgsergsergsed', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(276, 1, 561, 566, 1, 'com_zoo.application.3', 'journal', '{"core.admin":{"8":1},"core.manage":{"7":1},"zoo.categories.manage":[],"zoo.comments.manage":[],"zoo.frontpage.manage":[],"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(277, 18, 366, 367, 2, 'com_modules.module.110', 'Left nav', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(279, 18, 368, 369, 2, 'com_modules.module.111', 'AcyMailing Module', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(281, 18, 370, 371, 2, 'com_modules.module.112', 'Mailjet', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(282, 1, 568, 569, 1, 'com_acymailing', 'acymailing', '{}'),
(283, 18, 372, 373, 2, 'com_modules.module.113', 'AcyMailing Module', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(284, 18, 374, 375, 2, 'com_modules.module.114', 'Top nav', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(285, 18, 376, 377, 2, 'com_modules.module.115', 'Bot nav ', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(286, 18, 378, 379, 2, 'com_modules.module.116', 'Google translate', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(287, 1, 570, 571, 1, 'com_k2', 'com_k2', '{}'),
(288, 18, 380, 381, 2, 'com_modules.module.117', 'K2 Comments', ''),
(289, 18, 382, 383, 2, 'com_modules.module.118', 'K2 Content', ''),
(290, 18, 384, 385, 2, 'com_modules.module.119', 'K2 Tools', ''),
(291, 18, 386, 387, 2, 'com_modules.module.120', 'K2 Users', ''),
(292, 18, 388, 389, 2, 'com_modules.module.121', 'K2 User', ''),
(293, 18, 390, 391, 2, 'com_modules.module.122', 'K2 Quick Icons (admin)', ''),
(294, 18, 392, 393, 2, 'com_modules.module.123', 'K2 Stats (admin)', ''),
(295, 18, 394, 395, 2, 'com_modules.module.124', 'Вход', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(296, 18, 396, 397, 2, 'com_modules.module.125', 'Logo', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(297, 18, 398, 399, 2, 'com_modules.module.126', 'Поиск', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(298, 18, 400, 401, 2, 'com_modules.module.127', 'fdhgdfgh', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(299, 18, 402, 403, 2, 'com_modules.module.128', 'Теги тест', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(300, 18, 404, 405, 2, 'com_modules.module.129', 'Топ за неделю', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(301, 276, 562, 563, 2, 'com_zoo.application.3.article.2', 'journal (Article-2)', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(302, 276, 564, 565, 2, 'com_zoo.application.3.article', 'journal (Article)', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}');

-- --------------------------------------------------------

--
-- Структура таблицы `f8ad7_associations`
--

CREATE TABLE IF NOT EXISTS `f8ad7_associations` (
  `id` int(11) NOT NULL COMMENT 'A reference to the associated item.',
  `context` varchar(50) NOT NULL COMMENT 'The context of the associated item.',
  `key` char(32) NOT NULL COMMENT 'The key for the association computed from an md5 on associated ids.',
  PRIMARY KEY (`context`,`id`),
  KEY `idx_key` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `f8ad7_banners`
--

CREATE TABLE IF NOT EXISTS `f8ad7_banners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `imptotal` int(11) NOT NULL DEFAULT '0',
  `impmade` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `clickurl` varchar(200) NOT NULL DEFAULT '',
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `custombannercode` varchar(2048) NOT NULL,
  `sticky` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `params` text NOT NULL,
  `own_prefix` tinyint(1) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `reset` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `language` char(7) NOT NULL DEFAULT '',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `idx_state` (`state`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`),
  KEY `idx_banner_catid` (`catid`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Дамп данных таблицы `f8ad7_banners`
--

INSERT INTO `f8ad7_banners` (`id`, `cid`, `type`, `name`, `alias`, `imptotal`, `impmade`, `clicks`, `clickurl`, `state`, `catid`, `description`, `custombannercode`, `sticky`, `ordering`, `metakey`, `params`, `own_prefix`, `metakey_prefix`, `purchase_type`, `track_clicks`, `track_impressions`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `reset`, `created`, `language`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `version`) VALUES
(1, 1, 1, 'Редсофт', 'redsoft', 0, 5, 0, 'http://redsoft.ru/', 1, 3, '', '<div id="flashContent">\r\n<object width="978" height="98" id="banner_1" align="middle" data="/images/banners/redsoft.swf" style="vertical-align: middle;" type="application/x-shockwave-flash"><param name="movie" value="/images/banners/redsoft.swf" /><param name="quality" value="high" /><param name="bgcolor" value="#ffffff" /><param name="play" value="true" /><param name="loop" value="true" /><param name="wmode" value="window" /><param name="scale" value="showall" /><param name="menu" value="true" /><param name="devicefont" value="false" /><param name="salign" value="" /><param name="allowScriptAccess" value="sameDomain" /><!--[if !IE]>-->\r\n<object type="application/x-shockwave-flash" data="/images/banners/redsoft.swf" width="978" height="98"><param name="movie" value="/images/banners/redsoft.swf" /><param name="quality" value="high" /><param name="bgcolor" value="#ffffff" /><param name="play" value="true" /><param name="loop" value="true" /><param name="wmode" value="window" /><param name="scale" value="showall" /><param name="menu" value="true" /><param name="devicefont" value="false" /><param name="salign" value="" /><param name="allowScriptAccess" value="sameDomain" /></object>\r\n <a href="http://www.adobe.com/go/getflash"> <img src="http://www.adobe.com/images/shared/download_buttons/get_flash_player.gif" alt="Get Adobe Flash player" /> </a><!--<![endif]--></object>\r\n <!--<![endif]--></div>', 1, 1, '', '{"imageurl":"","width":"","height":"","alt":""}', 0, '', -1, 1, 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2014-03-16 18:28:42', '*', 0, '', '2014-03-16 18:30:04', 869, 2),
(2, 2, 0, 'Хостинг для joomla', 'khosting-dlya-joomla', 0, 5, 0, 'http://hostingjoomla.ru/', 1, 3, '', '', 0, 2, '', '{"imageurl":"images\\/banners\\/hosting.png","width":978,"height":156,"alt":"\\u0425\\u043e\\u0441\\u0442\\u0438\\u043d\\u0433 \\u0434\\u043b\\u044f joomla"}', 0, '', -1, 1, 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2014-03-16 18:31:14', '*', 0, '', '0000-00-00 00:00:00', 0, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `f8ad7_banner_clients`
--

CREATE TABLE IF NOT EXISTS `f8ad7_banner_clients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `contact` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `extrainfo` text NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `metakey` text NOT NULL,
  `own_prefix` tinyint(4) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`id`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Дамп данных таблицы `f8ad7_banner_clients`
--

INSERT INTO `f8ad7_banner_clients` (`id`, `name`, `contact`, `email`, `extrainfo`, `state`, `checked_out`, `checked_out_time`, `metakey`, `own_prefix`, `metakey_prefix`, `purchase_type`, `track_clicks`, `track_impressions`) VALUES
(1, 'Редсофт', 'Редсофт', 'info@redsoft.ru', '', 1, 0, '0000-00-00 00:00:00', '', 0, '', -1, 1, 1),
(2, 'Хостинг для joomla', 'Хостинг для joomla', 'info@hostingjoomla.ru', '', 1, 0, '0000-00-00 00:00:00', '', 0, '', -1, 1, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `f8ad7_banner_tracks`
--

CREATE TABLE IF NOT EXISTS `f8ad7_banner_tracks` (
  `track_date` datetime NOT NULL,
  `track_type` int(10) unsigned NOT NULL,
  `banner_id` int(10) unsigned NOT NULL,
  `count` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`track_date`,`track_type`,`banner_id`),
  KEY `idx_track_date` (`track_date`),
  KEY `idx_track_type` (`track_type`),
  KEY `idx_banner_id` (`banner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `f8ad7_banner_tracks`
--

INSERT INTO `f8ad7_banner_tracks` (`track_date`, `track_type`, `banner_id`, `count`) VALUES
('2014-03-20 00:00:00', 1, 1, 1),
('2014-03-20 00:00:00', 1, 2, 1),
('2014-09-15 13:00:00', 1, 1, 3),
('2014-09-15 13:00:00', 1, 2, 3),
('2014-09-15 14:00:00', 1, 1, 1),
('2014-09-15 14:00:00', 1, 2, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `f8ad7_categories`
--

CREATE TABLE IF NOT EXISTS `f8ad7_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(255) NOT NULL DEFAULT '',
  `extension` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `metadesc` varchar(1024) NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `cat_idx` (`extension`,`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_path` (`path`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=27 ;

--
-- Дамп данных таблицы `f8ad7_categories`
--

INSERT INTO `f8ad7_categories` (`id`, `asset_id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `extension`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `modified_user_id`, `modified_time`, `hits`, `language`, `version`) VALUES
(1, 0, 0, 0, 51, 0, '', 'system', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{}', '', '', '{}', 445, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(2, 27, 1, 1, 2, 1, 'uncategorised', 'com_content', 'Без категории', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 445, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(3, 28, 1, 3, 4, 1, 'uncategorised', 'com_banners', 'Без категории', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 445, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(4, 29, 1, 5, 6, 1, 'uncategorised', 'com_contact', 'Без категории', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 445, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(5, 30, 1, 7, 8, 1, 'uncategorised', 'com_newsfeeds', 'Без категории', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 445, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(6, 31, 1, 9, 10, 1, 'uncategorised', 'com_weblinks', 'Без категории', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 445, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(7, 32, 1, 11, 12, 1, 'uncategorised', 'com_users', 'Без категории', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 445, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(8, 59, 1, 13, 14, 1, 'uncategorised', 'com_djimageslider', 'Без категории', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 445, '2014-03-09 20:37:14', 0, '0000-00-00 00:00:00', 0, '*', 1),
(9, 60, 1, 15, 40, 1, 'about-joomla', 'com_content', 'Информация о Joomla!', 'about-joomla', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 445, '2014-03-16 18:16:32', 0, '0000-00-00 00:00:00', 0, '*', 1),
(10, 61, 9, 16, 39, 2, 'about-joomla/extensions', 'com_content', 'Расширения', 'extensions', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 445, '2014-03-16 18:17:18', 0, '0000-00-00 00:00:00', 0, '*', 1),
(11, 62, 10, 17, 18, 3, 'about-joomla/extensions/components', 'com_content', 'Компоненты', 'components', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 445, '2014-03-16 18:17:43', 0, '0000-00-00 00:00:00', 0, '*', 1),
(12, 63, 10, 19, 30, 3, 'about-joomla/extensions/modules', 'com_content', 'Модули', 'modules', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 445, '2014-03-16 18:18:30', 0, '0000-00-00 00:00:00', 0, '*', 1),
(13, 64, 12, 20, 21, 4, 'about-joomla/extensions/modules/articles-modules', 'com_content', 'Модули отображения Контента', 'articles-modules', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 445, '2014-03-16 18:19:06', 0, '0000-00-00 00:00:00', 0, '*', 1),
(14, 65, 12, 22, 23, 4, 'about-joomla/extensions/modules/user-modules', 'com_content', 'Модули информации о пользователях', 'user-modules', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 445, '2014-03-16 18:19:22', 0, '0000-00-00 00:00:00', 0, '*', 1),
(15, 66, 12, 24, 25, 4, 'about-joomla/extensions/modules/display-modules', 'com_content', 'Модули отображения информации', 'display-modules', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 445, '2014-03-16 18:19:37', 0, '0000-00-00 00:00:00', 0, '*', 1),
(16, 67, 12, 26, 27, 4, 'about-joomla/extensions/modules/utility-modules', 'com_content', 'Вспомогательные модули', 'utility-modules', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 445, '2014-03-16 18:19:56', 0, '0000-00-00 00:00:00', 0, '*', 1),
(17, 68, 12, 28, 29, 4, 'about-joomla/extensions/modules/navigation-modules', 'com_content', 'Модули навигации', 'navigation-modules', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 445, '2014-03-16 18:20:24', 0, '0000-00-00 00:00:00', 0, '*', 1),
(18, 69, 10, 31, 32, 3, 'about-joomla/extensions/typography', 'com_content', 'Типографика', 'typography', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 445, '2014-03-16 18:20:59', 0, '0000-00-00 00:00:00', 0, '*', 1),
(19, 70, 10, 33, 34, 3, 'about-joomla/extensions/templates', 'com_content', 'Шаблоны', 'templates', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 445, '2014-03-16 18:21:13', 0, '0000-00-00 00:00:00', 0, '*', 1),
(20, 71, 10, 35, 36, 3, 'about-joomla/extensions/languages', 'com_content', 'Языки', 'languages', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 445, '2014-03-16 18:21:29', 0, '0000-00-00 00:00:00', 0, '*', 1),
(21, 72, 10, 37, 38, 3, 'about-joomla/extensions/plugins', 'com_content', 'Плагины', 'plugins', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 445, '2014-03-16 18:22:00', 0, '0000-00-00 00:00:00', 0, '*', 1),
(22, 73, 1, 41, 42, 1, 'sites', 'com_content', 'Сайты', 'sites', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 445, '2014-03-16 18:22:37', 0, '0000-00-00 00:00:00', 0, '*', 1),
(23, 74, 1, 43, 44, 1, 'services', 'com_content', 'Услуги', 'services', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 445, '2014-03-16 18:22:50', 0, '0000-00-00 00:00:00', 0, '*', 1),
(24, 75, 1, 45, 46, 1, 'articles', 'com_content', 'Статьи', 'articles', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 445, '2014-03-16 18:23:00', 0, '0000-00-00 00:00:00', 0, '*', 1),
(25, 76, 1, 47, 48, 1, 'books', 'com_content', 'Книги', 'books', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 445, '2014-03-16 18:23:10', 0, '0000-00-00 00:00:00', 0, '*', 1),
(26, 77, 1, 49, 50, 1, 'docs', 'com_content', 'Руководства', 'docs', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 445, '2014-03-16 18:23:21', 0, '0000-00-00 00:00:00', 0, '*', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `f8ad7_contact_details`
--

CREATE TABLE IF NOT EXISTS `f8ad7_contact_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `con_position` varchar(255) DEFAULT NULL,
  `address` text,
  `suburb` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `postcode` varchar(100) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `misc` mediumtext,
  `image` varchar(255) DEFAULT NULL,
  `email_to` varchar(255) DEFAULT NULL,
  `default_con` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `mobile` varchar(255) NOT NULL DEFAULT '',
  `webpage` varchar(255) NOT NULL DEFAULT '',
  `sortname1` varchar(255) NOT NULL,
  `sortname2` varchar(255) NOT NULL,
  `sortname3` varchar(255) NOT NULL,
  `language` char(7) NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `f8ad7_content`
--

CREATE TABLE IF NOT EXISTS `f8ad7_content` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `introtext` mediumtext NOT NULL,
  `fulltext` mediumtext NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `attribs` varchar(5120) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `language` char(7) NOT NULL COMMENT 'The language code for the article.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=108 ;

--
-- Дамп данных таблицы `f8ad7_content`
--

INSERT INTO `f8ad7_content` (`id`, `asset_id`, `title`, `alias`, `introtext`, `fulltext`, `state`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`) VALUES
(1, 78, 'Сообщество пользователей Joomla!', 'the-joomla-community', '<p>Joomla! значит "Все вместе"+и это содружество людей+работающих и веселящихся вместе+что делает Joomla! возможной. Тысячи людей каждый год принимают участие в содружестве Joomla!+и мы надеемся+вы станете одним из них.</p>\r\n<p>Мы приглашаем присоединиться людей с любыми разнообразными способностями+со всего мира. Примите участие в семействе веб-сайтов Joomla.org (форум joomlaforum.ru — отличное место для начала). Приходите на Joomla! event — встречу единомышленников. Вступайте или создавайте группу пользователей Joomla! . Если вы разработчик+администратор сайта+дизайнер+пользователь или фанат+вы всегда можете принять участие и принести пользу.</p>', '', 1, 9, '2014-03-16 20:40:01', 445, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2014-03-16 20:40:01', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 11, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(2, 79, 'Сайты-примеры', 'sample-sites', '<p>В установленной у вас системе имеются примеры контента различного рода для демонстрации основных возможностей системы. Помимо этого+для более наглядной демонстрации возможностей+в систему включено два "сайта в сайте".</p>\r\n<p>Для создания индивидуального стиля и дизайна сайта вам+возможно+понадобится установить сторонние расширения и создать или приобрести собственный "шаблон" оформления. Многие пользователи Joomla! для начала изменяют стандартный шаблон +который имеется в системе изначально. Они добавляют необходимые изображения и прочие элементы дизайна в соответствии с назначением сайта.</p>', '', 1, 9, '2014-03-16 20:41:13', 445, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2014-03-16 20:41:13', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 10, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(3, 80, 'С чего начать', 'getting-started', '<p>Легко начать строить свой сайт. Вам поможет знание основных принципов.</p>\r\n<h4>Что такое "Система управления контентом"?</h4>\r\n<p>Система управления контентом+это программное обеспечение+которое позволяет легко создавать и управлять веб-страницами+разделяя создание контента от механики+необходимой для представления сайта в сети.</p>\r\n<p>На этом сайте весь контент хранится в <em>базе данных</em>. Внешний вид задается <em>шаблоном</em>. Joomla! объединяет шаблон и контент+создавая веб-страницу.</p>\r\n', '\r\n<h4>Сайт и Административная панель</h4>\r\n<p>Ваш сайт на самом деле состоит из 2-х отдельных сайтов. Сам сайт (также называемый внешним интерфейсом)+это то+что видят посетители. Административная панель (также называемая серверной частью) используется только людьми+администрирующими ваш сайт. Вы можете войти в административную панель+нажав на "Административная панель" в меню "Сайт" или добавив "/administrator" после вашего доменного имени в адресной строке.</p>\r\n<p>Войдите в административную панель+используя имя и пароль+созданные при установке Joomla!</p>\r\n<h4>Войти</h4>\r\n<p>Чтобы войти на сайт через внешний интерфейс+используйте ссылку или форму входа в меню "Сайт". Используйте имя и пароль+созданные при установке Joomla!. После процесса авторизации вы сможете создавать и редактировать статьи.</p>\r\n<p>Администрируя свой сайт+вы сможете создавать контент+видимый только зарегистрированным пользователям.</p>\r\n<h4>Создание статьи</h4>\r\n<p>После процесса авторизации вы сможете увидеть новое меню. Чтобы создать новую статью+нажмите "Добавить статью" в этом меню.</p>\r\n<p>Интерфейс создания новой статьи дает множество возможностей+но все+что вам нужно+это добавить название и написать что-нибудь в области контента. Чтобы проще было найти вашу статью+поставьте ей статус "Опубликована" и выберите нужную категорию.</p>\r\n<p>Вы можете редактировать существующую статью+нажав на иконку "Редактировать" (которая отображается только для пользователей+обладающих правами редактирования).</p>\r\n<h4>Узнать больше</h4>\r\n<p>Есть многое+что вы можете узнать о использовании Joomla! для создания сайта+который вообразили. Вы можете найти больше информации на <a href="http://joomla.ru">joomla.ru</a> + <a href="http://joomlaportal.ru">joomlaportal.ru</a> или на форуме <a href="http://joomlaforum.ru">joomlaforum.ru</a>.</p>', 1, 9, '2014-03-16 20:41:57', 445, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2014-03-16 20:41:57', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 8, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(4, 81, 'Проект Joomla!', 'the-joomla-project', '<p>Проект Joomla! существует благодаря работе множества людей, участвующих в её создании и поддержке.</p>\r\n<p>Наша цель - создать гибкую платформу для публикаций электронной информации.</p>\r\n', '\r\n<p>Наши приоритеты:</p>\r\n<ul>\r\n<li>свобода;</li>\r\n<li>равноправие;</li>\r\n<li>доверие;</li>\r\n<li>сплочённость;</li>\r\n<li>сотрудничество;</li>\r\n<li>удобство применения.</li>\r\n</ul>\r\n<p>Наши ориентиры:</p>\r\n<ul>\r\n<li>люди, ведущие собственные интернет-сообщества с охватом аудитории по всему миру;</li>\r\n<li>свободное программное обеспечение, учитывающее аспекты безопасности и отвечающее требованиям качества;</li>\r\n<li>сообщества, участвовать в которых полезно и приятно;</li>\r\n<li>люди по всему миру, говорящие на собственных языках;</li>\r\n<li>обеспечение независимости проекта от единственных личностей или обстоятельств;</li>\r\n<li>обеспечение социальной ответственности;</li>\r\n<li>обеспечение сохранения доверия пользователей.</li>\r\n</ul>\r\n<p>Joomla! применяется миллионами пользователей по всему миру, тысячи человек принимают участие в её разработке и поддержке. Они работают в трёх основных группах:</p>\r\n<ul>\r\n<li><strong>группа разработчиков</strong> (Production Working Group), в задачи которой входит всё, что касается разработки программного обеспечения и документации;</li>\r\n<li><strong>группа поддержки сообщества</strong> (Community Working Group), ответственная за организацию взаимной поддержки пользователей сообщества;</li>\r\n<li><strong>Open Source Matters</strong> - юридическое лицо, некоммерческая организация, отвечающая за правовые, финансовые и организационные вопросы.</li>\r\n</ul>\r\n<p>Joomla! - бесплатное программное обеспечение с открытым исходным кодом, распространяемое по лицензии <strong>GNU General Public License </strong>версии 2 или более поздней.</p>', 1, 9, '2014-03-16 20:44:08', 445, '', '2014-03-16 20:45:32', 869, 0, '0000-00-00 00:00:00', '2014-03-16 20:44:08', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 6, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(5, 82, 'Помощь', 'professionals', '<p>В разделе <a href="index.php?option=com_content&amp;view=article&amp;id=6:getting-help&amp;catid=8:about-joomla&amp;Itemid=112">Помощь</a> мы собрали ответы на наиболее распространенные вопросы+касающиеся управления сайтом.</p>', '', 1, 9, '2014-03-16 20:44:41', 445, '', '2014-03-16 20:45:39', 869, 0, '0000-00-00 00:00:00', '2014-03-16 20:44:41', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 9, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 1, '*', ''),
(6, 83, 'Получить помощь', 'getting-help', '<p><img style="float: left;" src="images/sampledata/header/icon-48-help_header.png" alt="" /></p>\r\n<p>Существует множество мест, где вы можете получить помощь по Joomla!. Во многих местах административной панели своего сайта вы видите кнопку помощи. Нажмите на нее для более подробной информации о свойствах и функциях пунктов на вашем экране. Другие места, где вы можете получить помощь:</p>\r\n<ul>\r\n<li><a href="http://joomla.ru/docs">Документация Joomla!</a></li>\r\n<li><a href="http://joomlaforum.ru">Форум поддержки</a></li>\r\n<li><a href="http://redsoft.ru">Профессиональная разработка сайтов</a></li>\r\n<li><a href="http://jsupport.ru">Профессиональная поддержка</a></li>\r\n<li><a href="http://hostingjoomla.ru">Хостинг</a></li>\r\n<li><a href="http://joomla.ru/docs/books">Книги по Joomla!</a></li>\r\n</ul>', '', 1, 9, '2014-03-16 20:45:10', 445, '', '2014-03-16 20:45:48', 869, 0, '0000-00-00 00:00:00', '2014-03-16 20:45:10', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 7, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(7, 84, 'Опции', 'options', '<p>По мере наполнения сайта различными расширениями, вы непременно столкнетесь с необходимостью их настройки. Это делается путём изменения их "опций", так же называемых "параметрами". Опции контролируют абсолютно всё, от таких нюансов, как показывать или нет имя пользователя возле заголовка статьи, и до определения прав доступа на тот или иной материал сайта.</p>\r\n<p>Опции "по умолчанию" для каждого компонента настраиваются в диалоге, вызываемом по нажатию кнопки "Опции" на его инструментальной панели. Также опции могут быть назначены индивидуально для каждого объекта, будь то материал или веб-ссылка.</p>\r\n<p>Если вы ничего не хотите изменять в отображении материалов на сайте, то нет необходимости изменять какие-либо опции, заданные по умолчанию. По мере приобретения опыта работы с Joomla! вы научитесь применять те или иные значения опций там, где это необходимо.</p>', '', 1, 9, '2014-03-16 20:46:29', 445, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2014-03-16 20:46:29', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 5, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(8, 85, 'О проекте', 'joomla', '<p>На сайте используется русская сборка системы управления Joomla!, созданная командами <a href="http://joomla.ru">joomla.ru</a>, <a href="http://joom.ru">joom.ru</a> и разработчиками&nbsp;<a href="http://redsoft.ru/">Редсофт</a>. За основу взята оригинальная англоязычная версия CMS Joomla! и расширения, учитывающие особенности работы российских пользователей: пакет локализации, удобный визуальный редактор JCE и другие.</p>\r\n<p>Joomla (Джумла) — это самая известная в мире система управления контентом (CMS), которая позволит вам создать сайт практически любой сложности. Простая в управлении, легко расширяемая, эта система с каждым днем становится все более популярной — по данным Яндекса, количество запросов Joomla за полгода выросло почти вдвое — с 300 до 550 тысяч запросов в месяц. Почти 3% всех сайтов в интернете работают на Joomla! Но главное преимущество системы — она бесплатна и легко доступна - <a href="http://joomla.ru/downloads">скачать Joomla</a> можно на сайте&nbsp;joomla.ru.</p>', '', 1, 9, '2014-03-16 20:46:56', 445, '', '2014-03-16 20:47:41', 869, 0, '0000-00-00 00:00:00', '2014-03-16 20:46:56', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 3, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 1, '*', ''),
(9, 86, 'Для новичков', 'beginners', '<p>Даже если вы не в мире веб-технологий, Joomla! поможет вам легко и быстро создать современный сайт.</p>\r\n<p>Для начала войдите в панель управления под учётной записью администратора, которую вы создали в ходе инсталляции системы.</p>\r\n<p>Ознакомьтесь с демонстрационными материалами, представленными здесь, на сайте. Это позволит вам понять основные принципы работы системы Joomla! (закончив изучение, вы можете их удалить или отправить в архив). Также будет полезно ознакомиться с информацией для начинающих, размещенной на сайте документации по Joomla и на&nbsp; официальном либо русскоязычном форумах поддержки.</p>\r\n<p>Кроме этого настоятельно рекомендуем вам подписаться на Рассылку Новостей о Безопасности и на Рассылку Объявлений официального сайта. Чтобы оценить возможности системы наиболее полно, посетите Сайт Примеров Проектов на Joomla! - там собраны ссылки на различные реальные разработки пользователей.</p>\r\n<p>Даже в стандартном инсталляторе Joomla! достаточно функций для реализации многих видов типовых сайтов, но если их будет мало, к вашим услугам огромная коллекция "расширений", создаваемых разработчиками во всем мире. Ознакомьтесь с Каталогом Расширений - это позволит вам оценить ширину спектра задач, которые, в принципе, может решать Joomla! с помощью сторонних расширений. Если все же вы не найдете на сайтах поддержки необходимой информации или готового расширения для вашей задачи, к вашим услугам специалисты, которых вы можете найти на сайте Каталога Ресурсов Joomla!.</p>\r\n<p>Хотите узнать больше? Примите участие в одном из "Дней Joomla!" или другом мероприятии. Также вы можете присоединиться к одной из Локальных Групп Поддержки Joomla!. Если в вашей стране ещё нет такой группы - создайте её сами!</p>', '', 1, 9, '2014-03-16 20:47:33', 445, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2014-03-16 20:47:33', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 4, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(10, 87, 'Выбор домена и хостинга', 'upgraders', '<p>Выбрать и зарегистрировать домен, а также выбрать <a href="http://www.hostingjoomla.ru/">хостинг</a> не менее важно для функционирования вашего сайта. Именно от качества хостинга зависит+насколько работоспособным и доступен пользователям будет сайт.</p>', '', 1, 9, '2014-03-16 20:48:25', 445, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2014-03-16 20:48:25', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 2, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 1, '*', ''),
(11, 88, 'Joomla! в действии', 'using-joomla', '<p>При помощи Joomla! вы можете создать сайт практически любого назначения - от простой персональной страницы до мощной торговой системы или социальной сети с миллионами посетителей.</p>\r\n<p>В разделе примеров содержимого показаны основные принципы организации контента в Joomla! и даны ссылки на справочные материалы, которые помогут вам понять, как работает эта система.<br /><br /><em>Если вам более не нужны примеры содержимого, вы можете просто снять с публикации </em><em>содержащую их </em><em>категорию. Категория с примерами содержимого имеется в каждом расширении, установленном в Joomla! по умолчанию. При желании вы можете даже удалить все материалы с примерами содержимого.</em></p>', '', 1, 9, '2014-03-16 20:49:13', 445, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2014-03-16 20:49:13', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 1, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(12, 89, 'Joomla! - система управления сайтом', 'korotko-o-joomla', '<p>30 000 000 владельцев сайтов в мире выбирают Joomla!, это успешный выбор владельцев 5% сайтов в мире.</p>\r\n<p>Присоединяетесь и используйте самую популярную в мире систему управления сайтом, которая открывает вам безграничные возможности для комфортного управления сайтом и размещения любой информации - текстов, изображений и видео</p>\r\n<h3>Сегодня Joomla! – это:</h3>\r\n<ul>\r\n<li>\r\nневероятная доступность.&nbsp;Скачать систему можно абсолютно бесплатно: англоязычная версия есть на сайте joomla.org, русскоязычная – на joomla.ru. <a href="http://joomla.ru/downloads/joomla" target="_blank">Скачайте Joomla!</a> на нашем сайте\r\n</li>\r\n<li>более 9400 расширений для различных задач</li>\r\n<li>потрясающий комфорт в управлении. Чтобы легко и удобно размещать информацию на сайте, загружать и обновлять фотографии, добавлять музыкальные или видеофайлы, использовать базы данных и многое другое, вам не потребуются ни специальные знания, ни какой-либо опыт. Система интуитивно понятна. И для полноценного управления контентом сайта на Joomla! абсолютно не нужно быть ни программистом, ни верстальщиком.</li>\r\n</ul>\r\n', '\r\n<h3>Хочу попробовать joomla!</h3>\r\n<p><img style="margin: 0px 10px 5px 0px; float: left;" src="images/sampledata/joomla/admin_joomla30.gif" alt="admin joomla30" width="200" height="114" /></p>\r\n<p>Испытать систему Joomla! в действии можно очень просто! Воспользуйтесь демосайтом demo.joomla.ru, который мы создали специально для вашего удобства. Чтобы зайти в административную панель,</p>\r\n<p>1. наберите <a href="http://demo.joomla.ru/administrator" target="_blank">demo.joomla.ru/administrator</a></p>\r\n<p>2. Введите логин <em>demo&nbsp;</em>и пароль <em>demo</em></p>\r\n<p>3. Вы попадаете в панель управления Joomla!</p>\r\n<p><a href="http://joomla.ru/images/stories/about/joomla_infographic.jpg" target="_blank"><img src="images/sampledata/joomla/stat.gif" alt="stat" width="170" height="486" /></a></p>\r\n</li>\r\n</ul>', 1, 9, '2014-03-16 20:49:56', 445, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2014-03-16 20:49:56', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 0, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 1, '*', ''),
(13, 90, 'Ссылки', 'weblinks', '<p>"Веб-ссылки" (com_weblinks) - компонент, позволяющий организовать структурированный каталог веб-ссылок на сторонние сайты.</p>', '', 1, 11, '2014-03-16 20:50:49', 445, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2014-03-16 20:50:49', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 10, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(14, 92, 'Пользователи', 'users-component', '<p>Расширение "Пользователи" позволяет пользователям сайта выполнять регистрацию, авторизацию, смену пароля и редактирование информации о себе. В панели управления это расширение позволяет администратору создавать, блокировать и управлять учётными записями пользователей, группами пользователе и уровнями доступа.</p>\r\n<p>Пожалуйста, помните, что некоторые из страниц управления пользователями не видны, пока не выполнена авторизация на сайте.</p>', '', 1, 11, '2014-03-16 20:52:16', 445, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2014-03-16 20:52:16', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 9, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(15, 94, 'Поиск', 'search-component', '<p>Поиск информации на сайте под управлением Joomla! 3.0 можно организовать двумя способами:</p>\r\n<p>Компонент <em>Базового поиска</em> позволяет выполнять привычный поиск по информации, содержащейся в том или ином компоненте.</p>\r\n<p>Компонент <em>Умный поиск</em> позволяет искать информацию на сайте через современный мощный поисковый механизм. По умолчанию этот компонент выключен. Если вы захотите его включить, понадобится выполнить ряд действий: Первое – включите плагин <em>Умный поиск</em> с помощью менеджера плагинов. Второе – отключите модуль обычного поиска и вместо него опубликуйте специальный модуль умного поиска. Третье – если у вас на сайте уже есть какой-либо контент, перейдите в компонент умного поиска и нажмите кнопку запуска процесса индексации. После завершения процесса индексации Умный поиск сразу же будет готов к работе.</p>', '', 1, 11, '2014-03-16 20:52:51', 445, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2014-03-16 20:52:51', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 8, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(16, 96, 'Ленты новостей', 'news-feeds', '<p>Компонент "Ленты новостей" (com_newsfeeds) позволяет отображать на вашем сайте ленты новостей, публикуемые на других сайтах. Например, сайт joomla.org позволяет считывать сразу несколько различных лент новостей. Используя соответствующие типы пунктов меню можно реализовать отображение какой-либо одной ленты, нескольких лент из одной категории или сразу из всех лент, всех категорий новостей.</p>', '', 1, 11, '2014-03-16 20:53:28', 445, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2014-03-16 20:53:28', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 7, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(17, 98, 'Контент', 'content', '<p>Компонент "Контент" (com_content) работает в тот момент когда вы пишете материалы. Он очень гибкий и позволяет отображать информацию в нескольких разных вариантах. Материалы могут быть созданы не только из Панели управления, но и с Лицевой панели сайта при помощи специального пункта меню.</p>', '', 1, 11, '2014-03-16 20:54:12', 445, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2014-03-16 20:54:12', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 6, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(18, 100, 'Контакт', 'contact', '<p>Компонент "Контакт" позволяет каждому пользователю сайта разместить более подробную информацию о себе. Также с помощью этого компонента можно организовывать каталоги для представления информации о людях, например, о штате компании.</p>', '', 1, 11, '2014-03-16 20:55:10', 445, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2014-03-16 20:55:10', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 5, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', '');
INSERT INTO `f8ad7_content` (`id`, `asset_id`, `title`, `alias`, `introtext`, `fulltext`, `state`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`) VALUES
(19, 102, 'Компоненты панели управления', 'administrator-components', '<p>Все компоненты также используются в администртивной панели вашего сайта. В дополнение к перечисленным здесь, существуют компоненты в административной панели, которые не выводятся на внешний интерфейс, но помогают обслуживать ваш сайт. Самые важные из них:</p>\r\n<ul>\r\n<li>Медиа-менеджер</li>\r\n<li>Менеджер расширений</li>\r\n<li>Менеджер меню</li>\r\n<li>Общие настройки</li>\r\n<li>Баннеры</li>\r\n<li>Перенаправление </li>\r\n</ul>\r\n', '<hr title="Media Manager" class="system-pagebreak" />\r\n<p> </p>\r\n<h4>Медиа-менеджер</h4>\r\n<p><img class="image-left" src="images/sampledata/joomla/icon-48-media.png" alt="Медиа-менеджер" /></p>\r\n<p>Компонент медиа-менеджера позволяет вам загружать и вставлять изображения в контент всего вашего сайта. Опционально вы можете можете подключить flash-загрузчик, который поможет вам загрузить несколько изображений. Помощь на английском.</p>\r\n<hr title="Extensions Manager" class="system-pagebreak" />\r\n<h4>Менеджер расширений</h4>\r\n<p><img class="image-left" src="images/sampledata/joomla/icon-48-extension.png" alt="Менеджер расширений" /></p>\r\n<p>Менеджер расширений позволяет вам устанавливать, обновлять, удалять и управлять всеми вашими расширениями. Менеджер расширений был полностью изменен для Joomla! 3.0, хотя функционал установки и удаления остался таким же как в Joomla 1.5.</p>\r\n<hr title="Menu Manager" class="system-pagebreak" />\r\n<h4>Менеджер меню</h4>\r\n<p><img class="image-left" src="images/sampledata/joomla/icon-48-menumgr.png" alt="Менеджер меню" /></p>\r\n<p>Менеджер меню позволяет вам создавать меню, отображаемые на вашем сайте. Он также позволяет вам задавать модули и стили шаблонов для особых ссылок меню.</p>\r\n<hr title="Global Configuration" class="system-pagebreak" />\r\n<h4>Общие настройки</h4>\r\n<p><img class="image-left" src="images/sampledata/joomla/icon-48-config.png" alt="Общие настройки" /></p>\r\n<p>Общие настройки позволяют администратору сайта изменять такие вещи как включены ли SEF-ссылки, мета-данные сайта (описательный текст, используемый поисковыми движками и индексаторами) и другие функции. Для многих начинающих пользователей имеет смысл оставить эти настройки по-умолчанию, хотя когда ваш сайт будет готов для публичного показа, вы обязательно захотите изменить мета-данные для сопоставления контенту сайта. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Site_Global_Configuration"><br /></a></p>\r\n<hr title="Banners" class="system-pagebreak" />\r\n<h4>Баннеры</h4>\r\n<p><img class="image-left" src="images/sampledata/joomla/icon-48-banner.png" alt="Баннеры" /></p>\r\n<p>Компонент баннеров позволяет легко разместить чередующиеся изображения в модуле, и если вам нужна реклама, отследить количество показов и кликов на этих изображениях.</p>\r\n<hr title="Redirect" class="system-pagebreak" />\r\n<h4>Перенаправление</h4>\r\n<p><img class="image-left" src="images/sampledata/joomla/icon-48-redirect.png" alt="Редирект" /></p>\r\n<p>Компонент перенаправления используется для управления неисправными ссылками, которые выдают ошибку "Страница не найдена (404)". Если он включен, он позволяет вам перенаправить неисправную ссылку на определенную страницу. Он также может быть использован для управления, сязанного с изменениями при перемещении URL.</p>', 1, 11, '2014-03-16 20:55:48', 445, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2014-03-16 20:55:48', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 4, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(20, 104, 'Самое популярное', 'most-read-content', '<p>Модуль показывает перечень материалов, которые чаще всего просматриваются пользователями.</p>\r\n<div class="sample-module">{loadmodule articles_popular,Articles Most Read}</div>', '', 1, 13, '2014-03-16 20:56:29', 445, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2014-03-16 20:56:29', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 6, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(21, 106, 'Новости', 'news-flash', '<p>Отображает заданное количество материалов из выбранной категории, сортируя по дате, либо в случайном порядке.</p>\r\n<div class="sample-module">{loadmodule articles_news,News Flash}</div>', '', 1, 13, '2014-03-16 20:58:19', 445, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2014-03-16 20:58:19', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 5, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(22, 108, 'Модуль - Связанные Материалы', 'related-items-module', '<p>Этот модуль показывает ссылки на другие материалы сайта, связанные с тем, который просматривает пользователь в данный момент. Связи определяются через "ключевые слова", указанные для каждого материала его автором. Все материалы, у которых имеются такие же ключевые слова, что и у текущего материала, считаются связанными.</p>\r\n<div class="sample-module">{loadmodule related_items,Articles Related Items}</div>', '', 1, 13, '2014-03-16 20:58:56', 445, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2014-03-16 20:58:56', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 4, '', '', 1, 1, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(23, 110, 'Модуль - Новые статьи', 'latest-articles-module', '<p>Этот модуль показывает перечень статей, созданных на сайте самыми последними. В число показываемых материалов могут попасть и те, срок публикации которых "истёк", если они созданы недавно.</p>\r\n<div class="sample-module">{loadmodule articles_latest,Latest News}</div>', '', 1, 13, '2014-03-15 21:52:11', 445, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2014-03-15 21:52:11', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 3, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(24, 112, 'Модуль - Материалы в категории', 'articles-category-module', '<p>Этот модуль позволяет отображать материалы, размещенные в указанной категории.</p>\r\n<p>{loadposition articlescategoryload}</p>', '', 1, 13, '2014-03-15 21:52:46', 445, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2014-03-15 21:52:46', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 2, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(25, 114, 'Модуль - Категории Материалов', 'article-categories-module', '<p>Этот модуль отображает перечень категорий, вложенных в одну указанную директорию.</p>\r\n<p>{loadposition articlescategoriesload}</p>', '', 1, 13, '2014-03-15 21:53:16', 445, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2014-03-15 21:53:16', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 1, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(26, 116, 'Модуль - Архив', 'archive-module', '<p>Этот модуль отображает перечень материалов сайта, отправленных в архив. Материалы группируются по месяцам календаря.</p>\r\n<p>{loadposition archiveload}</p>', '', 1, 13, '2014-03-15 21:53:53', 445, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2014-03-15 21:53:53', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 0, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(27, 118, 'Модуль - Новые Пользователи', 'latest-users-module', '<p>Этот модуль показывает пользователей, которые зарегистрировались самыми последними.</p>\r\n<div class="sample-module">{loadmodule users_latest,Users Latest}</div>', '', 1, 14, '2014-03-15 21:55:10', 445, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2014-03-15 21:55:10', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 2, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(28, 120, 'Модуль - Вход на сайт', 'login-module', '<p>Этот модуль отображает поле для ввода логина и пароля пользователя. Так же он показывает ссылки на страницы восстановления забытого пароля. Если регистрация пользователей на сайте включена (это определяется в "общих настройках"), то в данном модуле так же отображается ссылка на страницу создания новой учётной записи.</p>\r\n<div class="sample-module">{loadmodule login,login}</div>', '', 1, 14, '2014-03-15 21:55:43', 445, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2014-03-15 21:55:43', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 1, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(29, 122, 'Кто на сайте', 'whos-online', '<p>Модуль "Кто на сайте" показывает количество пользователей, просматривающих сайт в настоящее время (отдельно неавторизованных (Гостей) и авторизованных).</p>\r\n<div class="sample-module">{loadmodule whosonline,Who''''s Online}</div>', '', 1, 14, '2014-03-15 21:56:13', 445, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2014-03-15 21:56:13', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 0, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(30, 124, 'Ссылка на ленту новостей', 'feed-display', '<p>Этот модуль отображает ссылку на ленту новостей.</p>\r\n<p>{loadposition feeddisplayload}</p>', '', 1, 15, '2014-03-15 21:56:45', 445, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2014-03-15 21:56:45', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 5, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(31, 126, 'Модуль - Ссылки', 'weblinks-module', '<p>Этот модуль показывает перечень ссылок в категории.</p>\r\n<div class="sample-module">{loadmodule weblinks,Weblinks}</div>', '', 1, 15, '2014-03-15 21:57:25', 445, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2014-03-15 21:57:25', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 4, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(32, 128, 'Модуль - Случайное изображение', 'random-image-module', '<p>Этот модуль отображает изображение, случайно выбранное из указанной в параметрах модуля директории.</p>\r\n<div class="sample-module">{loadmodule random_image,Random Image}</div>', '', 1, 15, '2014-03-15 21:58:02', 445, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2014-03-15 21:58:02', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 3, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(33, 130, 'Модуль - Сторонний HTML-код', 'custom-html-module', '<p>Этот модуль позволяет вам вставить любой HTML-код, используя визуальный редактор.</p>\r\n<div class="sample-module">{loadmodule custom,Custom HTML}</div>', '', 1, 15, '2014-03-15 21:58:36', 445, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2014-03-15 21:58:36', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 2, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(34, 132, 'Модуль - Нижний блок', 'footer-module', '<p>Этот модуль показывает информацию об авторских правах Joomla!.</p>\r\n<div class="sample-module">{loadmodule footer,Footer}</div>', '', 1, 15, '2014-03-15 21:59:10', 445, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2014-03-15 21:59:10', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 1, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(35, 134, 'Модуль - Баннер', 'banner-module', '<p>Модуль "Баннер" позволяет отображать на сайте баннеры, которые создаются в одноимённом компоненте в панели управления.</p>\r\n<p>{loadposition bannersload}</p>', '', 1, 15, '2014-03-15 22:00:04', 445, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2014-03-15 22:00:04', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 0, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(36, 136, 'Умный поиск', 'smart-search', '<p>Этот модуль позволяет выполнять поиск по сайту с помощью компонента <strong>Умный поиск</strong>. Его следует применять если контент сайта проиндексирован. При этом должен быть включен плагин контента <strong>Умный поиск</strong> либо вам следует обновлять индексацию контента вручную.</p>\r\n<div class="sample-module">{loadmodule finder,Smart Search}</div>', '', 1, 16, '2014-03-15 22:00:39', 445, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2014-03-15 22:00:39', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 5, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(37, 138, 'Переключение языков', 'language-switcher', '<p>Модуль "Переключение языков" позволяет задействовать языковой тег, который указывается автором при написании статей, создании пунктов меню или подключении нового модуля.</p>\r\n<p>Этот модуль отображает перечень доступных для переключения между ними "Языков Контента".</p>\r\n<p>При переключении языка модуль перенаправляет пользователя на Главную страницу, или связанный пункт меню, назначенный для выбранного языка. После этого вся навигация на сайте будет учитывать язык, выбранный пользователем.</p>\r\n<p><strong>Чтобы этот модуль работал правильно, должен быть включен плагин "Фильтр языка".</strong></p>\r\n<p>Пример работы модуля переключения языка можно увидеть, включив в панели управления плагин "Фильтр языка" и модуль "Переключение языков" и зайдя на один из внутренних сайтов: Фруктовый Магазин или Парки Австралии.</p>', '', 1, 16, '2014-03-15 22:01:10', 445, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2014-03-15 22:01:10', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 4, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(38, 140, 'Модуль - Статистика', 'statistics', '<p>Модуль "Статистика" показывает информацию о параметрах сервера, а так же о количестве пользователей, материалов и веб-ссылок в базе данных.</p>\r\n<div class="sample-module">{loadmodule mod_stats,Statistics}</div>', '', 1, 16, '2014-03-15 22:01:45', 445, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2014-03-15 22:01:45', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 3, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(39, 142, 'Модуль - Рассылки', 'syndicate-module', '<p>Модуль "Рассылки" позволяет отображать ссылку на ленты рассылок. Такие ссылки будут отображаться только на страницах, на которых возможна рассылка материалов. К примеру, они не будут отображаться на страницах отдельных статей, на странице конкретного "контакта" или "веб-ссылки".</p>\r\n<div class="sample-module">{loadposition syndicate,Syndicate}</div>', '', 1, 16, '2014-03-15 22:02:20', 445, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2014-03-15 22:02:20', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 2, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(40, 144, 'Модуль - Поиск', 'search-module', '<p>Этот модуль отображает строку ввода данных для поиска.</p>\r\n<div style="float: left;">{loadmodule search,Search}</div>', '', 1, 16, '2014-03-15 22:02:53', 445, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2014-03-15 22:02:53', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 1, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(41, 146, 'Модуль - Обёртка (Wrapper)', 'wrapper-module', '<p>Это модуль показывает окно фрейма (iFrame) в указанной позиции.</p>\r\n<div class="sample-module">{loadmodule wrapper,Wrapper}</div>', '', 1, 16, '2014-03-15 22:14:36', 445, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2014-03-15 22:14:36', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 0, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(42, 148, 'Модуль - Меню', 'menu-module', '<p>Этот модуль отображает на сайте "меню". Меню могут быть отображены самыми разными способами, в зависимости от настройки параметров и css-стиля.</p>\r\n<div class="sample-module">{loadmodule mod_menu,Menu Example}</div>', '', 1, 17, '2014-03-15 22:15:11', 445, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2014-03-15 22:15:11', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 1, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(43, 150, 'Модуль "Хлебные крошки"', 'breadcrumbs-module', '<p>Модуль "Путь на сайте", так же называемый "хлебные крошки", позволяет отобразить на сайте путь от главной страницы к текущей, который прошёл пользователь.</p>\r\n<div class="sample-module">{loadmodule breadcrumbs,breadcrumbs}</div>', '', 1, 17, '2014-03-15 22:15:40', 445, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2014-03-15 22:15:40', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 0, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', '');
INSERT INTO `f8ad7_content` (`id`, `asset_id`, `title`, `alias`, `introtext`, `fulltext`, `state`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`) VALUES
(44, 152, 'Типографика', 'typography', '<h1>H1 ABCDEFGHIJKLMNOPQRSTUVWXYZ abcdefghijklmonpqrstuvwzyz</h1>\r\n<h1>H1 АБВГДЕЁЖЗИКЛМНОПРСТУФХЦЧШЩЪЫЬЭЮЯ абвгдеёжзиклмнопрстуфхцчшщъыьэюя</h1>\r\n<h2>H2 ABCDEFGHIJKLMNOPQRSTUVWXYZ abcdefghijklmonpqrstuvwzyz</h2>\r\n<h2>H2 АБВГДЕЁЖЗИКЛМНОПРСТУФХЦЧШЩЪЫЬЭЮЯ абвгдеёжзиклмнопрстуфхцчшщъыьэюя</h2>\r\n<h3>H3 ABCDEFGHIJKLMNOPQRSTUVWXYZ abcdefghijklmonpqrstuvwzyz</h3>\r\n<h3>H3 АБВГДЕЁЖЗИКЛМНОПРСТУФХЦЧШЩЪЫЬЭЮЯ абвгдеёжзиклмнопрстуфхцчшщъыьэюя</h3>\r\n<h4>H4 ABCDEFGHIJKLMNOPQRSTUVWXYZ abcdefghijklmonpqrstuvwzyz</h4>\r\n<h4>H4 АБВГДЕЁЖЗИКЛМНОПРСТУФХЦЧШЩЪЫЬЭЮЯ абвгдеёжзиклмнопрстуфхцчшщъыьэюя</h4>\r\n<h5>H5 ABCDEFGHIJKLMNOPQRSTUVWXYZ abcdefghijklmonpqrstuvwzyz</h5>\r\n<h5>H5 АБВГДЕЁЖЗИКЛМНОПРСТУФХЦЧШЩЪЫЬЭЮЯ абвгдеёжзиклмнопрстуфхцчшщъыьэюя</h5>\r\n<h6>H6 ABCDEFGHIJKLMNOPQRSTUVWXYZ abcdefghijklmonpqrstuvwzyz</h6>\r\n<h6>H6 АБВГДЕЁЖЗИКЛМНОПРСТУФХЦЧШЩЪЫЬЭЮЯ абвгдеёжзиклмнопрстуфхцчшщъыьэюя</h6>\r\n<p><em>P The quick brown fox ran over the lazy dog. THE QUICK BROWN FOX RAN OVER THE LAZY DOG.</em></p>\r\n<p>P Съешь же ещё этих мягких французских булок, да выпей чаю. СЪЕШЬ ЖЕ ЕЩЁ ЭТИХ МЯГКИХ ФРАНЦУЗСКИХ БУЛОК, ДА ВЫПЕЙ ЧАЮ.</p>\r\n<ul>\r\n<li>Объект</li>\r\n<li>Объект</li>\r\n<li>Объект</li>\r\n</ul>\r\n<ol>\r\n<li>Объект</li>\r\n<li>Объект</li>\r\n<li>Объект</li>\r\n</ol>\r\n<p>&nbsp;</p>\r\n<h4>Цвет фона модулей</h4>\r\n<div class="moduletable a_icon green" style="padding: 0 15px; float: left; width: 458px;">\r\n<h3>Joomla! 3 - Совершенно новая!</h3>\r\n</div>\r\n<p style="float: left; width: 437px; padding: 24px;">Суффикс класса меню <strong>green</strong> <em>( добавляется через пробел )</em></p>\r\n<div class="moduletable b_icon blue" style="padding: 0 15px; float: left; width: 458px;">\r\n<h3>Joomla! 3 - Совершенно новая!</h3>\r\n</div>\r\n<p style="float: left; width: 437px; padding: 24px;">Суффикс класса меню <strong>blue</strong> <em>( добавляется через пробел )</em></p>\r\n<div class="moduletable c_icon red" style="padding: 0 15px; float: left; width: 458px;">\r\n<h3>Joomla! 3 - Совершенно новая!</h3>\r\n</div>\r\n<p style="float: left; width: 437px; padding: 24px;">Суффикс класса меню <strong>red</strong> <em>( добавляется через пробел )</em></p>\r\n<div class="clr">&nbsp;</div>\r\n<p>&nbsp;</p>\r\n<h4>Иконки заголовков модулей</h4>\r\n<div class="moduletable a_icon blue" style="padding: 0 15px; float: left; width: 458px;">\r\n<h3>Joomla! 3 - Совершенно новая!</h3>\r\n</div>\r\n<p style="float: left; width: 437px; padding: 24px;">Суффикс класса меню <strong>a_icon</strong> <em>( добавляется через пробел )</em></p>\r\n<div class="moduletable b_icon blue" style="padding: 0 15px; float: left; width: 458px;">\r\n<h3>Joomla! 3 - Совершенно новая!</h3>\r\n</div>\r\n<p style="float: left; width: 437px; padding: 24px;">Суффикс класса меню <strong>b_icon</strong> <em>( добавляется через пробел )</em></p>\r\n<div class="moduletable c_icon blue" style="padding: 0 15px; float: left; width: 458px;">\r\n<h3>Joomla! 3 - Совершенно новая!</h3>\r\n</div>\r\n<p style="float: left; width: 437px; padding: 24px;">Суффикс класса меню <strong>c_icon</strong> <em>( добавляется через пробел )</em></p>\r\n<div class="moduletable d_icon blue" style="padding: 0 15px; float: left; width: 458px;">\r\n<h3>Joomla! 3 - Совершенно новая!</h3>\r\n</div>\r\n<p style="float: left; width: 437px; padding: 24px;">Суффикс класса меню <strong>d_icon</strong> <em>( добавляется через пробел )</em></p>\r\n<div class="moduletable e_icon blue" style="padding: 0 15px; float: left; width: 458px;">\r\n<h3>Joomla! 3 - Совершенно новая!</h3>\r\n</div>\r\n<p style="float: left; width: 437px; padding: 24px;">Суффикс класса меню <strong>e_icon</strong> <em>( добавляется через пробел )</em></p>', '', 1, 18, '2014-03-15 22:16:26', 445, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2014-03-15 22:16:26', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 0, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(45, 153, 'Шаблон RSMetro', 'templates', '<p>Вы можете использовать различные шаблоны на вашем сайте. Шаблоны могут использоваться как в одиночном варианте так и отдельные шаблоны для определенных страниц. Для демонстрации различных стилевых решений в сборке предоставлены три шаблона. Шаблоны&nbsp;beez3,&nbsp;protostar и&nbsp;RSMetro. Шаблон&nbsp;RSMetro специально разработан для русского сообщества компанией&nbsp;<a href="http://redsoft.ru/" target="_blank">Redsoft</a>. Шаблон оформлен в стилевом решении Windows 8, называемом Метро. Имеет плиточную структуру и стилевое оформление. Пример позиций модулей и вариантов размещения продемонстрирован на скриншотах ниже. Примеры оформления <a href="index.php?option=com_content&amp;view=article&amp;id=44&amp;Itemid=131">типографики</a>.</p>\r\n<p>Так же вы можете использовать другие шаблоны совместимые с Joomla! 3 - как клубные, так и собственного производства.</p>\r\n<h2>Шаблон RSMetro</h2>\r\n<h4>Расположение модулей в шаблоне RSMetro</h4>\r\n<p><img src="images/sampledata/joomla/module_position.gif" alt="module position" width="978" height="1420" /></p>\r\n<h4>Вариации расположений модулей в шаблоне RSMetro</h4>\r\n<p><img src="images/sampledata/joomla/module_options.gif" alt="module options" width="978" height="664" /></p>', '', 1, 19, '2014-03-15 22:17:34', 445, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2014-03-15 22:17:34', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 0, '', '', 1, 1, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(46, 154, 'Система', 'system', '<p>Плагины, входящие в группу "Система", работают при каждом отображении страницы. Они контролируют самые важные вещи, от простых до сложных, будь то URL-адреса, разрешение или запрет на использование опции "запомнить меня" в модуле авторизации или задействовать ли кэширование при работе сайта. В 1.6 появился новый плагин, позволяющий автоматически перенаправлять пользователей или поисковые машины на новые адреса, в случае изменения URL тех или иных страниц сайта.</p>\r\n<p>По умолчанию включены:</p>\r\n<ul>\r\n<li>Запомнить меня</li>\r\n<li>SEF</li>\r\n<li>Отладка</li>\r\n</ul>\r\n<p>По умолчанию выключены:</p>\r\n<ul>\r\n<li>Кеширование</li>\r\n<li>Логи</li>\r\n<li>Перенаправление</li>\r\n</ul>', '', 1, 21, '2014-03-15 22:18:13', 445, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2014-03-15 22:18:13', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 8, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(47, 156, 'Редакторы', 'editors', '<p>Редакторы используются для редактирования текста в различных разделах Joomla!. TinyMCE - редактор по умолчанию для редактирования текста статей. В менеджере шаблонов так же используется редактор CodeMirror. Редактор "No Editor" - специальное текстовое поле, которое не содержит никаких визуальных элементов управления, оно предназначено для редактирования контента, содержащего html-теги.</p>\r\n<p>По умолчанию включено:</p>\r\n<ul>\r\n<li>CodeMirror</li>\r\n<li>TinyMCE<a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help17:Extensions_Plugin_Manager_Edit#Editor_-_TinyMCE"><br /></a></li>\r\n<li>No Editor</li>\r\n</ul>\r\n<p>По умолчанию выключено:</p>\r\n<ul>\r\n<li>Ничего</li>\r\n</ul>', '', 1, 21, '2014-03-15 22:18:43', 445, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2014-03-15 22:18:43', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 7, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(48, 158, 'Пользователь', 'user-plugins', '<p>По умолчанию включено:</p>\r\n<ul>\r\n<li>Joomla</li>\r\n</ul>\r\n<p>По умолчанию выключено:</p>\r\n<p>В версии 1.6 добавлено два новых плагина, но по умолчанию они выключены:</p>\r\n<ul>\r\n<li>Создание Контакта<br />В момент создания нового пользователя создаёт новый "контакт" и связывает его с созданной учётной записью.</li>\r\n<li>Профиль<br />Это пример плагина, позволяющего добавлять в профиль пользователя и в форму регистрации дополнительные поля. При необходимости, на базе данного плагина можно создать собственный, с необходимыми для конкретной задачи полями.</li>\r\n</ul>', '', 1, 21, '2014-03-15 22:19:08', 445, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2014-03-15 22:19:08', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 6, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(49, 160, 'Поиск', 'search-plugin', '<p>Компонент "Поиск" использует плагины для поиска информации в той или иной части сайта. Вы можете заблокировать возможность поиска по тем или иным частям сайта по вашему усмотрению. Многие разработчики предоставляют свои плагины для поиска информации по создаваемым ими расширениям.</p>\r\n<p>По умолчанию включено:</p>\r\n<ul>\r\n<li>Контент</li>\r\n<li>Контакты</li>\r\n<li>Веб-ссылки</li>\r\n<li>Ленты новостей</li>\r\n<li>Категории</li>\r\n</ul>', '', 1, 21, '2014-03-15 22:19:51', 445, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2014-03-15 22:19:51', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 5, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(50, 162, 'Контент', 'content-plugins', '<p>Плагины группы "Контент" работают в момент загрузки определённых страниц. Они выполняют такие задачи, как защита адресов электронной почты от спамерских роботов.</p>\r\n<p>По умолчанию включено:</p>\r\n<ul>\r\n<li>Защита E-mail</li>\r\n<li>Вставка модуля</li>\r\n<li>Разрыв страницы</li>\r\n<li>Навигация по страницам</li>\r\n<li>Рейтинг</li>\r\n</ul>\r\n<p>По умолчанию выключено:</p>\r\n<ul>\r\n<li>Подсветка кода (Geshi)</li>\r\n</ul>', '', 1, 21, '2014-03-15 22:20:14', 445, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2014-03-15 22:20:14', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 4, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(51, 164, 'Капча', 'captcha', '<p>Плагины группы <strong>Капча</strong> позволяют предотвратить публикацию на сайте спама и выполнение нежелательных действий. Капча защищает различные формы ввода данных, в том числе форму регистрации, форму отправки сообщений администрации, а так же форму входа на сайт. В дистрибутив Joomla! Включен плагин капчи от системы ReCaptchaВ®, но, при желании вы можете установить плагин любой другой системы.</p>\r\n<p>По умолчанию включено:</p>\r\n<ul>\r\n<li>ReCaptcha</li>\r\n</ul>\r\n<p>Внимание: ReCaptcha – торговая марка компании Google Inc. Работа данного сервиса никак не зависит от сообщества Joomla!. Для применения данного сервиса вы должны принять условия лицензии на сайте Recaptcha.net. Более подробные инструкции по настройке вы найдёте в панели управления плагинами, на странице плагина ReCaptcha.</p>', '', 1, 21, '2014-03-15 22:20:38', 445, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2014-03-15 22:20:38', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 3, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(52, 166, 'Дополнения к редакторам', 'editors-xtd', '<p>Эти плагины отображают специальные кнопки под текстовым полем визуального редактора.</p>\r\n<p>По умолчанию включено:</p>\r\n<ul>\r\n<li>Кнопка редактора: Изображение</li>\r\n<li>Кнопка редактора: Подробнее</li>\r\n<li>Кнопка редактора: Разрыв страницы</li>\r\n<li>Кнопка редактора: Материал</li>\r\n</ul>\r\n<p>По умолчанию выключено:</p>\r\n<ul>\r\n<li>Ничего</li>\r\n</ul>', '', 1, 21, '2014-03-15 22:21:06', 445, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2014-03-15 22:21:06', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 2, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(53, 168, 'Быстрый доступ', 'quick-icons', '<p>Плагины группы <strong>Быстрый доступ</strong> позволяют своевременно получать оповещения о выходе новых версий самой Joomla! Или установленных в ней расширений. Оповещения выводятся на главной странице панели управления.</p>\r\n<p>По умолчанию включено:</p>\r\n<ul>\r\n<li>Быстрый доступ – уведомления о новых версиях расширений Joomla!</li>\r\n<li>Быстрый доступ - уведомления о новых версиях Joomla!</li>\r\n</ul>', '', 1, 21, '2014-03-15 22:21:42', 445, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2014-03-15 22:21:42', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 1, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(54, 170, 'Аутентификация', 'authentication', '<p>Плагин аутентификации работает в тот момент, когда пользователи вводят логин и пароль в панели управления или на сайте. По умолчанию работает плагин, проверяющий наличие учётной записи данного пользователя в собственной базе данных Joomla!, но при желании вы можете задействовать вместо него плагин идентификации через Gmail или LDAP, либо даже установить некий сторонний плагин. Создать собственный плагин аутентификации, используя в качестве примера уже имеющиеся, не сложно.</p>\r\n<p>По умолчанию включены:</p>\r\n<ul>\r\n<li>Joomla</li>\r\n</ul>\r\n<p>По умолчанию выключены:</p>\r\n<ul>\r\n<li>Gmail</li>\r\n<li>LDAP</li>\r\n</ul>', '', 1, 21, '2014-03-15 22:22:05', 445, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2014-03-15 22:22:05', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 0, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(55, 172, 'Сообщество Joomla.org', 'joomla-org', '', '\r\n<table class="tb_portf" border="0" cellspacing="0" cellpadding="0">\r\n<tbody>\r\n<tr>\r\n<td style="width: 646px;" valign="top">\r\n<p><img src="images/sampledata/folio/joomla_org.gif" alt="joomla org" width="646" height="979" /></p>\r\n<p>&nbsp;</p>\r\n</td>\r\n<td style="width: 312px;" valign="top">\r\n<p>Joomla.org&nbsp;является официальным сайтом &nbsp;Joomla!, а также самым известным веб-сайтом в Joomla сообществе, со средним месячным посещением в 2,6 миллиона пользователей и 61 миллионом просмотров страниц в месяц.&nbsp;Любой пользователь <span lang="EN-US">Joomla</span>не раз посещал этот сайт, не так ли?</p>\r\n<p>На сайте используются расширения: К2, Joomla!Magazine, JomSocial и многие другие.</p>\r\n<p>Сайт работает на <strong>Joomla 1.5</strong>.</p>\r\n<h4><span style="display: inline !important;">Адрес сайта</span></h4>\r\n<p><a href="http://www.joomla.org/" target="_blank">www.joomla.org</a></p>\r\n<p>&nbsp;</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>', 1, 22, '2014-03-15 22:25:11', 445, '', '2014-03-15 22:32:44', 869, 0, '0000-00-00 00:00:00', '2014-03-15 22:25:11', '0000-00-00 00:00:00', '{"image_intro":"images\\/sampledata\\/folio\\/joomla_org_small.gif","float_intro":"none","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 3, 8, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(56, 174, 'Сайт компании Scarlett', 'scarlett', '', '\r\n<table class="tb_portf" border="0" cellspacing="0" cellpadding="0">\r\n<tbody>\r\n<tr>\r\n<td style="width: 646px;" valign="top">\r\n<p><img src="images/sampledata/folio/scarlett.gif" alt="Сайт компании Scarlett" width="646" height="434" /></p>\r\n</td>\r\n<td style="width: 312px;" valign="top">\r\n<p>Сайт современной бытовой техники международного класса. Один из наиболее интересных сайтов, сделанных в Redsoft. Основа сайта Joomla и расширение sCatalog - гибко конфигурируемый каталог под Joomla. Заслуживает внимания еще тот факт, что русская версия сайта и английская управляются из одной админ-панели, что позволяет переводить посетителя на перевод статьи на другом языке без необходимости дополнительного поиска статьи на сайте.</p>\r\n<p> </p>\r\n<h4>Выполненные работы</h4>\r\n<p> </p>\r\n<ul>\r\n<li>Разработка концепции</li>\r\n<li>Дизайн</li>\r\n<li>Верстка, программирование</li>\r\n<li>Перенос товара со старого сайта</li>\r\n<li>Создание иллюстраций</li>\r\n<li>Техническая поддержка</li>\r\n</ul>\r\n<p> </p>\r\n<h4>Дата запуска сайта</h4>\r\n<p>02.2011</p>\r\n<h4>Адрес сайта</h4>\r\n<p><a href="http://scarlett.ru/" target="_blank" rel="nofollow">scarlett.ru</a></p>\r\n<p> </p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>', 1, 22, '2014-03-15 22:26:37', 445, '', '2014-03-15 22:32:49', 869, 0, '0000-00-00 00:00:00', '2014-03-15 22:26:37', '0000-00-00 00:00:00', '{"image_intro":"images\\/sampledata\\/folio\\/scarlett_small.gif","float_intro":"none","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 7, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(57, 176, 'Сайт компании Danone', 'danone', '', '\r\n<table class="tb_portf" border="0" cellspacing="0" cellpadding="0">\r\n<tbody>\r\n<tr>\r\n<td style="width: 646px;" valign="top">\r\n<p><img src="images/sampledata/folio/danone.gif" alt="danone" width="646" height="1552" /></p>\r\n</td>\r\n<td style="width: 312px;" valign="top">\r\n<p>Еще один сайт известной на весь мир компании, сделанный на Joomla — Danonegroup.com.</p>\r\n<p>Groupe Danone — французская компания, производитель молочных продуктов и других продуктов питания, основанная в 1919 году. Основные направления деятельности — молочные продукты, детское питание и минеральная вода. Продукция выпускается под такими известными марками как Danone, Активия, Fantasia, Волшебный, Danissimo, Evian и многими другими.</p>\r\n<p> </p>\r\n<h4>Дата запуска сайта</h4>\r\n<p>2012</p>\r\n<h4>Адрес сайта</h4>\r\n<a href="http://brembo-brakes.com/" target="_blank" rel="nofollow">www.danone.com</a><br />\r\n<p> </p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>', 1, 22, '2014-03-15 22:27:20', 445, '', '2014-03-15 22:32:53', 869, 0, '0000-00-00 00:00:00', '2014-03-15 22:27:20', '0000-00-00 00:00:00', '{"image_intro":"images\\/sampledata\\/folio\\/danone_small.gif","float_intro":"none","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 6, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(58, 178, 'Сайт компании Cigar Clan', 'cigarclan', '', '\r\n<table class="tb_portf" border="0" cellspacing="0" cellpadding="0">\r\n<tbody>\r\n<tr>\r\n<td style="width: 646px;" valign="top">\r\n<p><img src="images/sampledata/folio/cigar_clan.gif" alt="cigar clan" width="646" height="1438" /></p>\r\n</td>\r\n<td style="width: 312px;" valign="top">\r\n<p>Cigar Clan — сигарный журнал №1 в мире.<br />Информационный сайт для журнала SigarClan создан с необычным подходом. Пренебрегая всеми правилами, для проектирования интерфейса разработчики рискнули привлечь специалиста из области типографии. В сотрудничестве с ним, дизайнеры адаптировали сетку, используемую в журналах, к веб-сайту. Благодаря многолетнему опыту использования журнальных и газетных сеток в типографии, в результате получился запоминающийся, необычный, но удобный интерфейс.<br />Интересной частью проекта стал каталог сигар. В разработанную сетку удачно вписана сложная система классификации в сочетании с большим количеством информации по каждому товару.</p>\r\n<p>&nbsp;</p>\r\n<h4>Выполненные работы</h4>\r\n<ul>\r\n<li>программирование</li>\r\n<li>шаблон Joomla</li>\r\n<li>интеграция Joomla</li>\r\n<li>разработка компонентов</li>\r\n<li>поддержка</li>\r\n</ul>\r\n<h4>Дата запуска сайта</h4>\r\n<p>01.2010</p>\r\n<h4>Адрес сайта</h4>\r\n<p><a href="http://www.cigarclan.ru/" rel="nofollow" target="_blank">www.cigarclan.ru/</a></p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>', 1, 22, '2014-03-15 22:28:30', 445, '', '2014-03-15 22:33:02', 869, 0, '0000-00-00 00:00:00', '2014-03-15 22:28:30', '0000-00-00 00:00:00', '{"image_intro":"images\\/sampledata\\/folio\\/cigar_clan_small.gif","float_intro":"none","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 5, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(59, 180, 'Сайт компании Транспаренси', 'transparensi', '', '\r\n<table class="tb_portf" border="0" cellspacing="0" cellpadding="0">\r\n<tbody>\r\n<tr>\r\n<td style="width: 646px;" valign="top">\r\n<p><img src="images/sampledata/folio/transparensi.gif" alt="transparensi" width="646" height="1159" /></p>\r\n</td>\r\n<td style="width: 312px;" valign="top">\r\n<p>Дизайн любого сайта – это представление имиджа компании, одна из важнейших деталей пиара, где даже незначительная ошибка чревата серьезными последствиями. ТИ-Р – крупная организация, позиционирующая себя как стабильную и серьезную команду, состоящую из специалистов высокой категории. Именно поэтому в разработке дизайнерского решения уделялось особое внимание даже незначительным деталям, скрупулёзно и критично реализовывалась идея с каждым шагом.<br />Если произвести оценку дизайна сайтов одних из самых именитых компаний, то незамедлительно можно сделать вывод – он всегда прост, лаконичен и выдержан в спокойных тонах. Сайт компании Трансперенси Интернешнл Россия – один из примеров предельной простаты, легкости и доступности в сочетании высокой конкурентоспособностью в идее позиционирования. <br /> На главной странице располагаются самые «горящие» новости из последних событий в области антикоррупционных действий, нет обязательного представления на лицевой странице информации «О нас», которая, зачастую, не является для пользователей значимой. Она располагается в главном меню. Новостной раздел, помимо стандартного текстового наполнения, включает в себя тематическое видео.</p>\r\n<p>&nbsp;</p>\r\n<h4>Выполненные работы</h4>\r\n<ul>\r\n<li>Разработка концепции</li>\r\n<li>Дизайн</li>\r\n<li>Верстка, программирование</li>\r\n<li>Создание иллюстраций</li>\r\n<li>Создание иконок</li>\r\n<li>Техническая поддержка</li>\r\n</ul>\r\n<h4>Дата запуска сайта</h4>\r\n<p>01.2012</p>\r\n<h4>Адрес сайта</h4>\r\n<p><a href="http://www.askjournal.ru/" rel="nofollow" target="_blank">www.askjournal.ru</a></p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>', 1, 24, '2014-03-15 22:29:19', 445, '', '2014-03-15 22:33:06', 869, 0, '0000-00-00 00:00:00', '2014-03-15 22:29:19', '0000-00-00 00:00:00', '{"image_intro":"images\\/sampledata\\/folio\\/transparensi_small.gif","float_intro":"none","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 4, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(60, 182, 'Сайт компании Joomla.ru', 'joomla-ru', '', '\r\n<table class="tb_portf" border="0" cellspacing="0" cellpadding="0">\r\n<tbody>\r\n<tr>\r\n<td style="width: 646px;" valign="top">\r\n<p><img src="images/sampledata/folio/joomlaru.jpg" alt="joomlaru" width="646" height="2172" /></p>\r\n</td>\r\n<td style="width: 312px;" valign="top">\r\n<p class="descr">Joomla.ru создан для сообщества пользователей CMS Joomla в России, и преследует цель адаптации и популяризации системы. На обновленном сайте собрана всевозможная информация о Joomla! - это версии, их описания и дистрибутивы, доступные для скачивания, история проекта, руководства, полезные ссылки, популярные расширения и многое другое.<br />Отдельное внимание было уделено Joomla 3.0 – последней версии Joomla, собравшей все современные тренды - мобильность, юзабилити и легкость работы! В «Новостях» вы найдете перевод книги «10 легких шагов к освоению Joomla! 3». Это простое и понятное руководство, которое рассказывает, как установить эту систему управления содержимым, как ее настроить и как с ее помощью публиковать информацию.В разделе «Сайты» вы найдете проекты известных компаний, выполненные на Joomla - как российских, так и всемирно известных, в том числе сайты Scarlett, Peugeot, Ikea . Раздел «Партнеры» содержит список лучших студий и&nbsp; фрилансеров, работающих с CMS Joomla! И главное - теперь появились группы в социальных сетях, посвященные Joomla - Facebook, Вконтакте, Twitter.</p>\r\n<p>&nbsp;</p>\r\n<h4>Выполненные работы</h4>\r\n<ul>\r\n<li>программирование</li>\r\n<li>шаблон Joomla</li>\r\n<li>интеграция Joomla</li>\r\n<li>разработка компонентов</li>\r\n<li>поддержка</li>\r\n</ul>\r\n<h4>Дата запуска сайта</h4>\r\n<p>11.2012</p>\r\n<h4>Адрес сайта</h4>\r\n<p><a href="http://www.joomla.ru/" rel="nofollow" target="_blank">joomla.ru</a></p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>', 1, 22, '2014-03-15 22:30:05', 445, '', '2014-03-15 22:33:11', 869, 0, '0000-00-00 00:00:00', '2014-03-15 22:30:05', '0000-00-00 00:00:00', '{"image_intro":"images\\/sampledata\\/folio\\/joomlaru_small.gif","float_intro":"none","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 4, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', '');
INSERT INTO `f8ad7_content` (`id`, `asset_id`, `title`, `alias`, `introtext`, `fulltext`, `state`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`) VALUES
(61, 184, 'Сайт компании Art-mania', 'art-mania', '', '\r\n<table class="tb_portf" border="0" cellspacing="0" cellpadding="0">\r\n<tbody>\r\n<tr>\r\n<td style="width: 646px;" valign="top">\r\n<p><img src="images/sampledata/folio/art_mania.gif" alt="art-mania" width="646" height="525" /></p>\r\n</td>\r\n<td style="width: 312px;" valign="top">\r\n<p>АртМания образовалась в 2004 году и начала свою деятельность с активного сотрудничества с ведущими кинопродюсерами и известных российских полнометражных фильмах. Затем директор агентства АртМания Мария Сёмушкина выступила продюсером первого джазового фестиваля в Усадьбе Архангельское, который назывался «Русский стиль. Усадьба. Джаз». С года Арт-Мания проводит профессиональные праздники, конференции, корпоративные, клиентские и insentive-мероприятия для широкого круга клиентов.</p>\r\n<p>Для сайта был разработан индивидуальный дизайн. Сайт построен на CMS Joomla, при разработке использовались стандартные расширения Joomla компоненты и модули, разработана флеш-анимация шапки сайта и разработан программируемый mp3 flash-плеер.</p>\r\n<p> </p>\r\n<h4>Выполненные работы</h4>\r\n<ul>\r\n<li>программирование</li>\r\n<li>верстка шаблона</li>\r\n<li>интеграция Joomla</li>\r\n<li>разработка flash-анимации</li>\r\n<li>разработка flash-mp3-плеера</li>\r\n<li>хостинг</li>\r\n<li>поддержка</li>\r\n</ul>\r\n<h4>Дата запуска сайта</h4>\r\n<p>08.2005</p>\r\n<h4>Адрес сайта</h4>\r\n<p><a href="http://www.art-mania.ru/" target="_blank" rel="nofollow">www.art-mania.ru</a></p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>', 1, 22, '2014-03-15 22:31:18', 445, '', '2014-03-15 22:32:21', 869, 0, '0000-00-00 00:00:00', '2014-03-15 22:31:18', '0000-00-00 00:00:00', '{"image_intro":"images\\/sampledata\\/folio\\/art_mania_small.gif","float_intro":"none","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 3, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(62, 186, 'Сайт компании Portal-HR', 'portal-hr', '', '\r\n<table class="tb_portf" border="0" cellspacing="0" cellpadding="0">\r\n<tbody>\r\n<tr>\r\n<td style="width: 646px;" valign="top">\r\n<p><img src="images/sampledata/folio/portal_hr.jpg" alt="portal hr" width="646" height="945" /></p>\r\n</td>\r\n<td style="width: 312px;" valign="top">\r\n<p> </p>\r\n<p> </p>\r\n<h4>Выполненные работы</h4>\r\n<ul>\r\n<li>программирование</li>\r\n<li>шаблон Joomla</li>\r\n<li>интеграция Joomla</li>\r\n<li>разработка компонентов</li>\r\n<li>поддержка</li>\r\n</ul>\r\n<h4>Дата запуска сайта</h4>\r\n<p>01.2012</p>\r\n<h4>Адрес сайта</h4>\r\n<p><a href="http://www.portal-hr.ru/" target="_blank" rel="nofollow">ww.portal-hr.ru</a></p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>', 1, 22, '2014-03-15 22:32:08', 445, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2014-03-15 22:32:08', '0000-00-00 00:00:00', '{"image_intro":"images\\/sampledata\\/folio\\/portal-hr_small.jpg","float_intro":"none","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 2, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(63, 188, 'Промо-сайт MTV', 'mtv', '', '\r\n<table class="tb_portf" border="0" cellspacing="0" cellpadding="0">\r\n<tbody>\r\n<tr>\r\n<td style="width: 646px;" valign="top">\r\n<p><img src="images/sampledata/folio/mtv.gif" alt="Промо-сайт MTV" width="646" height="2123" /></p>\r\n</td>\r\n<td style="width: 312px;" valign="top">\r\n<p>MTV Греции является греческой версией MTV, самого известного телевизионного музыкального канала во всем мире, он был запущен 1 сентября 2008 года. </p>\r\n<p> </p>\r\n<p>Сайт хорошо организован, так что вы можете без труда найти необходимую информацию.</p>\r\n<p>Для отображения новостей на главной странице используется слайд-шоу, а также показано большое количество различных модулей.</p>\r\n<p> </p>\r\n<h4><span style="display: inline !important;">Адрес сайта</span></h4>\r\n<p><a href="http://www.mtvgreece.gr" target="_blank" rel="nofollow">www.mtvgreece.gr</a></p>\r\n<p> </p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>', 1, 22, '2014-03-15 22:34:07', 445, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2014-03-15 22:34:07', '0000-00-00 00:00:00', '{"image_intro":"images\\/sampledata\\/folio\\/mtv_small.gif","float_intro":"none","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 1, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(64, 190, 'Промо-сайт Peugeot', 'peugeot-com', '', '\r\n<table class="tb_portf" border="0" cellspacing="0" cellpadding="0">\r\n<tbody>\r\n<tr>\r\n<td style="width: 646px;" valign="top">\r\n<p><img src="images/sampledata/folio/peugeot.gif" alt="peugeot" width="646" height="1547" /></p>\r\n</td>\r\n<td style="width: 312px;" valign="top">\r\n<p>Семья Пежо начала заниматься мануфактурным делом еще в 1700-х гг. В 1840-м они запустили производство дробилок для перца, соли и кофемолок с пожизненной гарантией. Но то было тогда. Сейчас у Пежо собственные шоу-румы в Париже, Берлине и… сайт на Joomla! Сеть дилеров а Европе насчитывает более 2800 автосалонов и 7249 сервисных станций. Компания Peugeot оперирует в 150 странах мира, а в 2007 году дилерам мира удалось реализовать 3 428 400 млн автомобилей.<br />Сайт Peugeot содержит информацию об истории компании, фотографии и описание всего модельного ряда, включая скутеры и велосипеды. Вся возможная информация о Peugeot собрана в одном месте.</p>\r\n<p> </p>\r\n<h4>Дата запуска сайта</h4>\r\n<p>2012</p>\r\n<p> </p>\r\n<h4>Адрес сайта</h4>\r\n<p><a href="http://www.peugeot.com" target="_blank" rel="nofollow">peugeot.com</a></p>\r\n<p> </p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>', 1, 22, '2014-03-15 22:34:52', 445, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2014-03-15 22:34:52', '0000-00-00 00:00:00', '{"image_intro":"images\\/sampledata\\/folio\\/peugeot_small.gif","float_intro":"none","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 0, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(65, 192, 'Хостинг', 'khosting', '<p><strong>Что такое хостинг?</strong></p>\r\n<p>Что такое хостинг, вопрос, который волнует скорее начинающих веб мастеров. <strong>Хостинг</strong> – это услуга, по предоставлению части своего серверного пространства различными компаниями, так называемыми хостинг-провайдерами. Проще говоря, хостинг – это ни что иное как размещение Вашего сайта в сети интернет.</p>\r\n', '\r\n<p><strong>Задачи хостинга</strong></p>\r\n<p>Созданный сайт в своей структуре имеет множество файлов различного формата. Но при открытии страницы сайта, мы видим не эти файлы, а страницу с графическим изображением, текстом, ссылками и др. Каждый хостинг имеет необходимый набор программ для обеспечения правильного отображения сайта и это только одна из обширного спектра задач, которые выполняет хостинг.</p>\r\n<p>Мы рекомендуем 2 хостинг-компании:</p>\r\n<p><a href="http://HostingJoomla.ru">HostingJoomla.ru</a>&nbsp;</p>\r\n<p><a href="http://hosting.reg.ru/hosting/joomla">Hosting.Reg.ru</a></p>\r\n<p>Важной задачей хостинга является физическое размещение файлов сайта на сервере хостинг-провайдера.</p>\r\n<p>Специальные технические средства, установленные хостинг-провайдером, позволяют организовать связь между сайтом и доменным именем. Благодаря им, при вводе в строку браузера адреса сайта www.сайт.ru мы попадаем именно на этот сайт, независимо в какой точке мира мы находимся.</p>\r\n<p>Каждый хостинг-провайдер обеспечивает стабильную работу всех серверов, на которых размещаются файловые каталоги сайтов. Важно, чтобы сбои в работе были очень редкими, т.к это может выбить сайт из поисковых систем и сильно повлиять на его посещаемость.</p>\r\n<p><strong>Выбор хостинга</strong></p>\r\n<p>Проблема выбора хостинга начинает беспокоить веб мастеров еще на самой ранней стадии создания сайта. От того насколько качественным окажется хостинг напрямую зависит работоспособность и доступность сайта посетителям.</p>\r\n<p>Наша веб-студия предлагает качественный и не дорогой хостинг. Для наших клиентов работает круглосуточная служба технической поддержки, которая оперативно разрешит проблемы связанные с хостингом. Мы предлагаем гибкие и разнообразные тарифы, изучив которые Вы обязательно найдете устраивающий именно Вас вариант.</p>\r\n<p><strong>Параметры хостинга</strong></p>\r\n<p>Выбрав подходящий тариф и подобрав доменное имя, Вы оперативно можете проверить его на занятость и в случае если оно свободно сразу же зарегистрировать его во множестве популярных зонах. На домены, купленные у нас, наша веб-студия предоставляет бесплатную ДНС - поддержку, а управление ДНС - записями осуществляется через удобный и понятный интерфейс.</p>\r\n<p>Благодаря простой и удобной панели управления хостингом ISP Manager, Вы легко освоите все аспекты управления хостингом. На сервере хостинга &nbsp;сразу установлены <strong>CMS </strong><strong>Joomla&nbsp;</strong></p>\r\n<p>Базы данных хостинга сохраняются каждый день, неделю и месяц. 7 копий ежедневного сохранения хранятся неделю. 4 копии еженедельного сохранения хранятся месяц. 3 копии ежемесячного сохранения хранятся 6 месяцев. Такая система сохранения базы данных позволяет значительно повысить стабильность и устойчивость работы размещенных ресурсов.</p>\r\n<p>На всех тарифных планах присутствует:</p>\r\n<ul>\r\n<li>Apache</li>\r\n<li>PHP 5</li>\r\n<li>PHP MyAdmin</li>\r\n<li>FTP доступ к каждому домену/субдомену</li>\r\n<li>Perl 5</li>\r\n<li>CMS Joomla!</li>\r\n<li>FrontPage Server Extensions</li>\r\n<li>Ваша cgi-bin директория</li>\r\n<li>Поддержка SSI</li>\r\n<li>.htaccess</li>\r\n<li>Cron</li>\r\n<li>Web-интерфейс для почты</li>\r\n<li>Почтовый Спам-фильтр</li>\r\n<li>Courier-imap</li>\r\n<li>Управление DNS</li>\r\n</ul>', 1, 23, '2014-03-15 22:35:31', 445, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2014-03-15 22:35:31', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 7, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(66, 193, 'Создание сайтов', 'create-site', '<p>Разработка собственного веб сайта компании, это важный и верный шаг на пути развития и достижения поставленных целей и задач. Создание сайта способствует увеличению уровня продаж товаров и услуг, предлагаемых компанией, а так же повышению узнаваемости компании среди потребителей и партнеров. Если Ваша компания хочет выйти на качественно новый уровень ведения бизнеса, то создание сайта – это то, что позволит Вашей компании сделать это.</p>\r\n', '\r\n<p><strong>Создание сайта компании</strong></p>\r\n<p>Сделав заказ в нашей веб-студии на разработку сайта компании, Вы можете быть уверены в качестве выполненной работы.</p>\r\n<p>В нашей веб-студии весь процесс по созданию сайта компании начинается с анализа сферы деятельности организации. Наши специалисты учтут все нюансы сферы бизнеса Вашей компании, что позволит создать сайт, который будет соответствовать Вашим требованиям.</p>\r\n<p>Сайт компании должен быть простым и функциональным, в тоже время его дизайн должен соответствовать фирменному стилю компании. Посетитель, зашедший на сайт, должен с легкостью разобраться, где ему взять необходимую информацию о товарах и услугах, о контактах и новостях компании.</p>\r\n<p>Наша веб-студия, разрабатывает сайты с использованием популярной системы управления сайтом (CMS) &nbsp;Joomla! Это позволяет нам создавать, как не сложные сайты-визитки, так и многофункциональные интернет-магазины и порталы. Возможность написания дополнительных компонентов для данной CMS, позволяет создать сайт, который будет привлекателен для Ваших клиентов и партнеров.</p>\r\n<p>Разработка сайта на базе систем управления сайтом, позволяет значительно ускорить весь процесс по созданию сайта компании. Также упрощается дальнейшая его оптимизация и продвижение в поисковых системах, что необходимо для привлечения на сайт целевой аудитории.</p>\r\n<p>Специалисты веб-студии разработают грамотную структуру и навигацию сайта Вашей компании. Качественное юзабилити сайта компании значительно повышает удобство пользования сайтом.</p>\r\n<p>Разработка дизайн сайта является важным этапом в создании сайта. Дабы ускорить этот процесс, мы изготавливаем сразу несколько макетов будущего дизайна сайта компании. Заказчик может выбрать тот вариант, который наиболее полно удовлетворяет всем его пожеланиям и представлениям о дизайне сайта компании. Выбранный вариант дизайна доводится до совершенства и окончательно утверждается.</p>\r\n<p>Созданный сайт тестируется на правильное отображение во всех популярных браузерах. Ведь если посетитель использует браузер, в котором сайт компании отображается не корректно, то вряд ли он задержится на этом сайте.</p>\r\n<p>После проведенных всех тестов и настроек, сайт наполняется уникальным оптимизированным контентом. Это необходимо для продвижения сайта в поисковых системах и его раскрутки. Выполнение этого этапа в создании сайта позволяет привлечь целевого посетителя на сайт, что повышает уровень продаж Вашей компании. А грамотная раскрутка сайта создает узнаваемый имидж компании.</p>\r\n<p><strong>Стоимость создания сайта</strong></p>\r\n<p>Наша веб-студия уже на протяжении 5 лет занимается разработкой и созданием сайтов любой сложности. Мы работает с организациями по всей стране, и цена на создание сайта не зависит от географического местоположения компании. Поэтому стоимость создания сайта в среднем ниже, чем у других московских веб-студий.</p>\r\n<p>Разработка сайта компании, стало необходимым условием для успешного бизнеса. Наша веб-студия готова предложить Вам профессиональную разработку сайта любой сложности. Тесное взаимодействие с клиентом позволяет нам учесть все пожелания и нюансы при разработке сайта заказчика. Для нас очень важно, что бы клиент ушел от нас довольным и на 100% уверенным, что его поняли.</p>', 1, 23, '2014-03-15 22:35:53', 445, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2014-03-15 22:35:53', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 6, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(67, 194, 'Создание интернет магазина', 'create-internet-shop', '<p>Стремительное развитие Интернета все сильнее отражается на нашей жизни. Еще каких-то 10 лет назад никто и представить не мог, что покупать товары и услуги можно не вставая с кресла, просто зайдя на интернет-магазин, торгующий интересующим Вас ассортиментом. В тоже время растет спрос на создание интернет-магазинов. Достаточно низкая стоимость создания интернет-магазина позволяет организовать прибыльный бизнес.</p>\r\n<p>Создание интернет-магазина, впрочем, как и реального магазина кропотливый и трудоемкий процесс. Поэтому созданием интернет-магазина должны заниматься профессионалы. В нашей веб-студии собранны лучшие специалисты по созданию интернет-магазинов.</p>\r\n', '\r\n<p><strong>Создание интернет-магазина с использованием </strong><strong>Virtuemart</strong></p>\r\n<p>Наша веб-студия занимается созданием интернет-магазинов на базе системы управления сайтом (CMS) Joomla! с использованием компонента интернет-магазина Virtuemart. Использование данного компонента позволяет создать многофункциональный и удобный в использовании интернет-магазин.</p>\r\n<p>Разработка интернет-магазина в нашей студии начинается с обсуждения с клиентом его тематики. От того какой ассортимент товаров будет представлен на страницах будущего интернет-магазина зависит набор дополнительных модулей и сервисов, а так же дизайн интернет-магазина. Специалисты нашей веб-студии разработают качественный дизайн, который будет представлять товар в наилучшем свете.</p>\r\n<p>После создания интернет-магазина мы регистрируем на Вас доменное имя. Т.е Вы изначально являетесь владельцем проекта. После размещения интеренет-магазина на хостинге, наши специалисты ознакомят Вас с основными аспектами администрирования интернет-магазина. Если у Вас нет времени заниматься размещением и редактированием каталога товаров и цен, то Вы всегда можете на нас положиться.</p>\r\n<p>Удобная и интуитивно понятная административная панель компонента Virtuemart позволяет с легкостью добавлять дополнительные товары в каталог интернет-магазина. А удобная система ведения статистики заказа позволяет отслеживать, на какой стадии выполнения находится заказ. Эта функция доступна и для пользователя в его личном кабинете, где он так же может просмотреть список товаров, которые он выбрал для оформления. Интернет-магазин созданный на базе компонента Virtuemart позволяет пользователю сравнить несколько аналогичных товаров и выбрать лучший вариант.</p>\r\n<p>Создание интернет-магазина на базе CMS Joomla! с использованием компонента Virtuemart позволяет значительно сократить сроки его разработки. Также это помогает грамотно оптимизировать интернет-магазин, что необходимо для его дальнейшего продвижения и раскрутки. В течение нескольких недель специалисты нашей веб-студии создадут интернет-магазин, который сразу сможет приносить прибыль своему владельцу.</p>\r\n<p>Если Вы все еще сомневаетесь, кому доверить создание интрнет-магазина, посмотрите наше <strong>портфолио</strong>. Мы занимаемся созданием интернет-магазинов уже на протяжении 5 лет, и нам есть чем гордиться. Заключая с нами договор, Вы можете быть уверены, что наши специалисты создадут интернет-ммагазин соответствующий всем Вашим требованиям, который сразу начнет приносить прибыль.</p>', 1, 23, '2014-03-15 22:36:13', 445, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2014-03-15 22:36:13', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 5, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', '');
INSERT INTO `f8ad7_content` (`id`, `asset_id`, `title`, `alias`, `introtext`, `fulltext`, `state`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`) VALUES
(68, 195, 'Разработка компонентов Joomla', 'development-joomla-component', '<p>Часто при разработке сайта для клиента, встает необходимость разработки дополнительных компонентов для сайта. Наши специалисты имеют огромный опыт разработки и создания сайтов на базе системы управления сайтом Joomla!, что позволяет им разрабатывать дополнительные и уникальные компоненты любой сложности.</p>\r\n<p>Если Вы хотите заказать у нас разработку компонентов, то наша веб-студия готова предложить &nbsp;огромный выбор как уже созданных, так и разработку уникальных компонентов не зависимо от того какую версию системы Joomla! Вы используете.</p>\r\n', '\r\n<p>В арсенале нашей веб-студии есть такие дополнительные компоненты к сайту на CMS Joomla! как:</p>\r\n<ul>\r\n<li><a href="http://redsoft.ru/we-do/programming/joomla-extensions/hotel-managment">УПРАВЛЕНИЕ ОТЕЛЕМ</a> - Управляйте вашей гостиницей с помощью сайта и будьте в курсе последних данных! Количество свободных номеров, обработка заказов, статистика за установленный отрезок времени – все это будет доступно вам в едином удобном интерфейсе. Сделайте свой сайт более удобным для клиентов! Ведь расширение позволяет осуществлять бронь номеров в режиме онлайн в удобное для пользователей время.</li>\r\n<li><a href="http://redsoft.ru/we-do/programming/joomla-extensions/scatalog">КАТАЛОГ ТОВАРОВ SCATALOG</a> - Сделайте свой интернет-магазин максимально удобным для пользователей и наполняйте его легко и комфортно! Благодаря высокой скорости работы компонента и интуитивно понятному интерфейсу размещение товаров будет занимать все меньше времени. А ваши посетители получат полную информацию о товарах из каталога и смогут быстро оформить заказ. На сегодняшний день каталог товаров sCatalog – по праву лучшее решение для организации каталога и интернет - магазина на сайте под управлением Joomla 1.5 и Joomla 1.6.</li>\r\n<li><a href="http://redsoft.ru/we-do/programming/joomla-extensions/rabota">РАБОТА</a> - Выбирайте расширение «Работа» для Joomla! и используйте полностью готовый и прошедший тестирование компонент, который уже применяется на 6 специализированных порталах по трудоустройству. Решение позволяет сделать работу администратора портала максимально удобной и эффективной, поддерживает базу вакансий и резюме практически любого размера, обеспечивает быстрый поиск, возможность свободного управления тарифами и статусами пользователей. Разработаны также удобные возможности для пользователей.</li>\r\n<li><a href="http://redsoft.ru/we-do/programming/joomla-extensions/events">АФИША СОБЫТИЙ</a> - Обеспечьте пользователям удобный поиск по каталогу событий! Оптимальное расширение «Афиша событий» сделает самый плотный и насыщенный мероприятиями график понятным и информативным. Компонент позволяет вывести множество событий с разделением на категории, с привязкой к календарю и месту проведения. При этом для каждого мероприятия могут быть указаны даты начала и окончания.</li>\r\n<li><a href="hhttp://redsoft.ru/we-do/programming/joomla-extensions/trainers">ТРЕНЕРЫ</a> - Планируйте расписание занятий просто на сайте, и позвольте клиентам самим определить удобное для них время! Расширение «Тренеры» открывает вам возможности универсальной системы управления периодичными занятиями, где расписание выстраивается автоматически в онлайн режиме с учетом пожеланий клиента и текущего расписания преподавателя. Расширение станет оптимальным выбором для репетиторов, администраторов автошкол, фитнес-центров, а также может применяться в других сферах, где предоставляются индивидуальные услуги клиентам – салонах красоты, стоматологических клиниках и др.</li>\r\n<li><a href="http://redsoft.ru/we-do/programming/joomla-extensions/translate">ПЕРЕВОДЧИК САЙТА</a> - Говорите с пользователями сайта на их языке и используйте дополнительные возможности сверхбыстрого перевода! Расширение «Переводчик сайта» позволяет переводить создаваемые тексты на все языки, установленные на сайте с помощью Google Translate API, а потом корректировать материалы в единой базе данных. Моментальный перевод не снижает скорость загрузки страниц! Расширение разработано для сайтов под управлением Joomla 1.5 и требует установки JoomFish.</li>\r\n<li><a href="http://redsoft.ru/we-do/programming/joomla-extensions/consult">ВОПРОС-ОТВЕТ</a> - Создайте быстрый диалог с пользователями сайта и сделайте это общение максимально комфортным! Расширение «Вопрос-ответ» позволяет пользователям задавать вопросы и получать ответы экспертов (также из числа пользователей) или администраторов сайта в режиме реального времени.</li>\r\n<li><a href="http://redsoft.ru/we-do/programming/joomla-extensions/ondate">ВЫВОД НОВОСТЕЙ ПО ДАТАМ</a> - Сделайте поиск необходимых материалов на сайте быстрым и удобным! удобным! Расширение позволяет выводить статьи за определенную дату и задавать дополнительные параметры поиска, например, ограничить выборку заданной категорией или разделом. В комплекте есть модуль календарь для выбора нужной даты, а внутри самого компонента можно последовательно переходить от выбранной даты к соседним.</li>\r\n<li><a href="http://redsoft.ru/we-do/programming/joomla-extensions/import-word">ИМПОРТ ИЗ WORD</a> - Пользуйтесь удобным расширением для быстрой загрузки *.doc файлов на сайт! Компонент «Импорт из Word» позволяет создавать тексты и загружать их с полной очисткой форматирования (оставляя только абзацы) в указанную категорию. Разбивать тексты можно постранично через определенное количество символов.</li>\r\n<li><a href="http://redsoft.ru/we-do/programming/joomla-extensions/163-authors">АВТОРЫ</a> - Сделайте работу с авторами вашего сайта более удобной и продуктивной! Компонент позволяет администратору легко контролировать работу авторов на сайте, предоставляет статистику знаков по выполненным текстам за выбранный период. При необходимости можно посмотреть количество знаков в анонсах и полных версиях текста, общее количество знаков и изображений в текстах.</li>\r\n<li><a href="http://redsoft.ru/we-do/programming/joomla-extensions/rent-component">НОМЕРНОЙ ФОНД И БРОНИРОВАНИЕ</a> - Предоставьте клиентам своей гостиницы, дома отдыха или отеля удобный сервис бронирования номеров на сайте! Расширение позволяет пользователю выбирать любой свободный номер из предложенных на сайте и бронировать размещение в нем на определенное время. Информация поступает в единую базу данных и доступна администратору в режиме онлайн.</li>\r\n<li><a href="http://redsoft.ru/we-do/programming/joomla-extensions/payonline-system-integration">ИНТЕГРАЦИЯ VIRTUEMART И PAYONLINESYSTEM</a> - Предложите своим клиентам быстрый сервис оплаты покупок с помощью кредитной карты через Pay Online System. И пользуйтесь дополнительными преимуществами сотрудничества с популярной системой без абонентской платы при условии соблюдения минимального ежемесячного оборота через платежный шлюз. Интеграция представляет собой стандартно устанавливаемый модуль оплаты компонента Virtuemart.</li>\r\n<li><a href="http://redsoft.ru/we-do/programming/joomla-extensions/platron">ИНТЕГРАЦИЯ VIRTUEMART И PLATRON</a> - Сделайте процесс оплаты товаров вашего интернет-магазина еще более удобным для покупателей! С помощью расширения «Platron» вы сможете обеспечить лучшее взаимодействие по приему платежей между интернет-магазином, клиентом и платежными системами. Плата при подключении к системе не взимается, нет абонентской платы.</li>\r\n<li><a href="http://redsoft.ru/we-do/programming/joomla-extensions/virtuemart-1c-integration">ИНТЕГРАЦИЯ VIRTUEMART И 1С</a> - Обеспечьте мгновенное обновление информации в каталоге вашего интернет-магазина, интегрированного с программой 1С! Компонент позволяет поддерживать актуальной информацию на сайте и автоматически вносит изменения в случае обновления базы данных в 1С. Без ручного труда, без ошибок, без жалоб со стороны клиентов!</li>\r\n<li><a href="http://redsoft.ru/we-do/programming/joomla-extensions/order-status">СТАТУС ЗАКАЗА</a> - Предоставьте вашим клиентам актуальную информацию о статусе их заказа на вашем сайте! Расширение позволяет удобно вводить сведения по выполняемым заказам в общую базу данных с помощью файла Excel, обеспечивает быстрый поиск заказов.</li>\r\n<li><a href="http://redsoft.ru/we-do/programming/joomla-extensions/courses">КУРСЫ</a> - Сделайте запись на ваши курсы, семинары, разовые акции и лекции удобной и быстрой! Расширение «Курсы» предоставляет пользователям сайта перечень событий, расписание (программу) каждого мероприятия и позволяет записаться в режиме онлайн через специальную форму.</li>\r\n<li><a href="http://redsoft.ru/we-do/programming/joomla-extensions/places">МЕСТА</a> - Предоставляйте пользователям сайта информацию об объектах и их местонахождению на картах Google Maps, обеспечьте удобный поиск по своей базе. Расширение «Места» невероятно удобно для агентств недвижимости с обширной базой предложений.</li>\r\n</ul>\r\n<p>Это далеко не полный список всех компонентов, которые мы можем Вам предложить. Так же специалисты нашей веб-студии занимаются интеграцией различных сервисов и модулей в систему управления сайтом Joomla!. В частности мы специализируемся на интеграции CMS Joomla! и системы PayOnline System, компонента Virtuemart и программы 1С.</p>\r\n<p>Хотите значительно расширить функциональность своего сайта? Тогда разработка дополнительных компонентов, это то, что Вам нужно. Профессионализм наших специалистов позволяет разработать компонент любой сложности, в короткие сроки. Вы будете довольны результатом нашей работы.</p>', 1, 23, '2014-03-15 22:36:41', 445, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2014-03-15 22:36:41', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 4, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(69, 196, 'Разработка сайтов', 'development-site', '<p>Часто клиент, пришедший в нашу веб-студию, чтобы заключить договор на разработку сайта, даже не представляет, из каких этапов складывается вся работа по разработке сайта и насколько сложен данный процесс.</p>\r\n<p>Начальным этапом разработки сайта является знакомство с компанией клиента в устной форме. В процессе этого общения мы выясняем основные задачи и требования, которые ставит перед сайтом заказчик. Для того чтобы иметь полное представление о разрабатываемом сайте и составления коммерческого предложения, наша веб-студия высылает клиенту опросный лист.</p>\r\n', '\r\n<p>После получения заполненного клиентом опросного листа и его изучения, составляется коммерческое предложение, которое согласуется с заказчиком. После его утверждения, мы приступаем к детальному изучению сферы деятельности компании клиента. В результате этого анализа мы получаем полную картину о положении компании на рынке, её конкурентах, и всех нюансов &nbsp;сферы деятельности. Данный анализ помогает нам составить четкое представление о том, каким должен быть разрабатываемый сайт, на какие аспекты по его разработке мы должны уделить особое внимание. Грамотно проведенный аудит компании клиента позволит разработать эффективный сайт, который будет приносить стабильную прибыль.</p>\r\n<p>Следующим этапом разработки сайта является составление технического задания на основе проведенного анализа. Клиент ознакомляется с техническим заданием и если есть какие-то пожелания, то они обговариваются и включаются в ТЗ.</p>\r\n<p>После утверждения технического задания, начинается непосредственная разработка сайта. Этот процесс в нашей веб-студии делится на три этапа.</p>\r\n<p><strong>Первый этап разработки сайта</strong> – это создание дизайн макетов. Мы создаем сразу несколько вариантов дизайна сайта. Все они предоставляются на оценку клиенту. Клиент выбирает наиболее подходящий под его требования и пожелания вариант. Выбранный вариант доводится до совершенства и окончательно согласуется с заказчиком. Подобный подход веб-студии к созданию дизайна сайта, позволяет значительно сократить сроки разработки сайта.</p>\r\n<p><strong>Второй этап разработки сайта</strong> – это разработка программной части сайта. Наша веб-студия занимается разработкой сайтов на системе управления сайтом (CMS) Joomla!. Это позволяет нам в кратчайшие сроки разработать программную часть сайта, удовлетворяющую всем техническим требованиям. Использование CMS Joomla! позволяет создавать как простые сайты-визитки, так и сложные и многофункциональные интернет-порталы и интернет-магазины.</p>\r\n<p><strong>Третий этап разработки сайта</strong> – тестирование и доработка. На этом этапе производится тестирование разработанного сайта на правильное отображение его во всех популярных браузерах. Изменение настроек во время этого тестирования, позволяет сделать сайт удобно читаемым и правильно отображаемым, даже если у посетителя сайта установлены другие настройки, будь то размер шрифта, или отсутствие флеш-плеера. В процессе выявления недочетов производится последняя их доработка, после чего разработанный и протестированный сайт размещается на хостинге интернет-провайдера.</p>\r\n<p>Разработка сайтов сложный, но увлекательный процесс, которым специалисты нашей веб-студии владеют в совершенстве. Заключая договор с нами, Вы можете быть уверены, что на выходе Вы получите ожидаемый результат. &nbsp;Тесное сотрудничество с клиентом, позволяет полностью удовлетворить все его требования. Довольный проделанной работой клиент – это главная награда для нас. Начните путь к успеху, заключив с нами договор на разработку сайта.</p>', 1, 23, '2014-03-15 22:37:03', 445, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2014-03-15 22:37:03', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 3, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(70, 197, 'Продвижение сайтов', 'develop-site', '<p>Наша веб-студия рада предложить Вам услуги по продвижению Вашего сайта в поисковых системах. Мы занимаемся продвижением сайтов уже более 5 лет, и накопленный опыт и знания позволяют нам гарантировать, что в самые кратчайшие сроки Ваш сайт окажется в первой десятке в популярных поисковых системах. Поисковое продвижение, пожалуй, самый эффективный метод рекламы на сегодняшний день.</p>\r\n', '\r\n<p>Продвижение сайта позволяет привлечь целевых посетителей, которые впоследствии могут стать клиентами Вашей компании. Чтобы Ваш бизнес был успешным и эффективным необходимо комплексное <a href="http://prodvijenie.su">продвижение</a> сайта, которое готова предложить наша веб-студия.</p>\r\n<p>Мы предлагаем&nbsp; гибкую систему тарифов, изучив их, Вы всегда сможете выбрать подходящий для Вас вариант продвижения сайта. С каждым клиентом мы заключаем договор на продвижение сайта, в котором подробно оговариваются условия, сроки продвижения и предполагаемые результаты. Заключив договор с нами, продвижением Вашего сайта займется целая команда профессионалов в этом деле.</p>\r\n<p>Оптимизация сайта является начальным этапом в продвижении. Необходимость данного процесса заключается в том, что без грамотной оптимизации сайта, поисковым система будет сложнее найти Ваш сайт. В оптимизацию входит: создание уникальных текстов, которые будут удовлетворять требованиям поисковых алгоритмов, настройка панели навигации, и многое другое. Всем этим будут заниматься наши высококлассные специалисты в области продвижения и оптимизации сайтов.</p>\r\n<p>Число конкурирующих сайтов в глобальной сети постоянно растет, поэтому переоценить значение продвижения сайтов на рынке рекламы невероятно сложно. Компания, приоритетами которой является достижение поставленных целей и задач, не станет скупиться на качестве продвижения своего корпоративного сайта, ведь от этого зависит, успех в бизнесе. Каким бы идеальным в плане дизайна и уникальности контента сайт не был, без его продвижения и раскрутки, он не сможет принести Вам ожидаемую прибыль, поток клиентов и партнеров.</p>\r\n<p>Сделав заказ на продвижение сайта в нашей студии, уже завтра Вы получите своего первого клиента!</p>\r\n<p><strong>Продвижение сайтов нашими специалистами</strong></p>\r\n<p>Профессионализм специалистов нашей веб-студии по раскрутке и продвижению сайтов, позволяет нам гарантировать, что Вы будете удовлетворены полученными результатами.</p>\r\n<p>Благодаря огромному опыту работы в области продвижения сайтов, мы имеем собственные уникальные разработки, применяя которые Ваш сайт поднимется на самые высокие позиции в поисковых системах. Наша студия занимается продвижением сайтов только с использованием «белых» методов, которые не противоречат правилам поисковых систем. Грамотная оптимизация сайта при дальнейшем его продвижении, позволит добиться лучших результатов и заставит обратить на себя внимание Ваших потенциальных клиентов и партнеров.</p>\r\n<p>Главная цель продвижения сайта – это новые клиенты, постоянный приток которых способен поднять уровень продаж, а значит увеличить доход&nbsp; от сайта. Целый комплекс мер по продвижению Вашего сайта, сделает его узнаваемым и популярным. Специалисты нашей студии помогут поднять Ваш сайт до первых позиций и сделают его посещаемым.</p>\r\n<p>Наши специалисты оптимизируют сайт, под те запросы, которые задают пользователи, чтобы найти интересующий их товар или услугу, которые есть на Вашем сайте. Это позволяет привлечь на Ваш сайт целенаправленную аудиторию, которая с большой вероятностью сделает заказ на приобретение товара или услуги на Вашем сайте.</p>\r\n<p>По результатам статистики большинство пользователей, пользуясь поисковыми системами, не просматривают результаты поиска дальше второй страницы. Поэтому так важно, чтобы Ваш сайт всегда находился на первых позициях в поисковых системах. Это значительно повысит отдачу и эффективность ресурса.</p>\r\n<p>Важную роль в продвижении сайта на отечественном рынке играет его позиция в поисковой системе Яндекс. Сотрудничество с нашей веб-студией гарантирует Вам продвижение сайта во всех популярных поисковых системах Google.ru, Yandex.ru, Rambler.ru, Mail.ru.</p>\r\n<p>Стремительное развитие Интернета не позволяет специалистам нашей студии не на миг прекратить работу по исследованию и разработке новых методов и приемов продвижения и раскрутки сайтов, а так же изучению поисковых алгоритмов.</p>\r\n<p>Постоянное изменение и совершенствование поисковых алгоритмов, усложняет правила, по которым производится легальное продвижение сайта в поисковых системах. Поэтому так важно выбирать именно профессионалов по продвижению сайтов, которые всегда гарантируют качественный итоговый результат.</p>\r\n<p>Поисковая система Яндекс является наиболее популярной среди отечественных пользователей. Поэтому так важна оптимизация и продвижение сайта системой продвижения сайтов Яндекс.</p>\r\n<p>Наша веб-студия готова заняться продвижением Вашего сайта включая полный спектр работ, начиная с самого создания сайта. Наши специалисты готовы сделать качественный проект и заняться его оптимизацией и продвижением в поисковых системах. Вы также можете заключить договор на продвижение и раскрутку уже существующего и функционирующего сайта. В любом случае, Вы останетесь довольны результатами нашей работы.</p>', 1, 23, '2014-03-15 22:37:24', 445, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2014-03-15 22:37:24', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 2, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(71, 198, 'Корпоративный сайт', 'corporate-site', '<p>Создание корпоративного сайта компании является отличным маркетинговым ходом. Представительство компании в глобальной сети посредством корпоративного сайта, значительно увеличивает её доступность для клиентов и партнеров. Размещенная на корпоративном сайте информацию о компании, предоставляемых услугах и товарах, акциях и новинках позволяет клиентам и партнерам компании убедиться в профессионализме и серьезности организации.&nbsp; Часто корпоративные сайты дают возможность посетителям задать вопрос специалисту, что помогает установить не маловажный контакт с клиентами. Кроме того корпоративный сайт является отличной площадкой для размещения различных новостей компании и пресс-релизов.</p>\r\n', '\r\n<p>Разработку и создание корпоративного сайта следует доверять профессионалам, которые знают все тонкости этого процесса и уже не раз доказали это в предыдущих проектах. Стоимость создания корпоративного сайта может отличаться &nbsp;в завиимости от уровня компании разработчика - в <a href="http://www.redsoft.ru/we-do/sites/price/corporate">Redsoft</a>, например стоимость разработки значительно дороже, чем в <a href="http://Joomla-Dev.ru">Joomla-Dev</a>.&nbsp;Корпоративный сайт является лицом компании, которое изучают ваши потенциальные клиенты и партнеры, перед обращением в компанию. И от того на сколько качественно и профессионально будет сделан корпоративный сайт будет зависеть, какое мнение о Вашей компании сложится у потенциальных партнеров и клиентов, а следовательно и успех компании. Стоимость разработки корпоративного сайта в профессиональной веб-студии будет конечно значительно выше, чем у какого-нибудь студента, который только начинает разбираться во всех особенностях разработки корпоративного сайта. Но стоит понимать, что только качественно выполненный и эффективный корпоративный сайт способен привлечь новых клиентов и партнеров, а также создать имидж надежной и сильной компании.</p>\r\n<p>Часто люди, не понимающие разницы между корпоративным сайтом и сатом-визиткой, очень удивляются в том, насколько велика разница цен по созданию корпоративного сайта и сайта-визитки. Стоит понимать, что сайт-визитка это небольшой сайт, с ограниченным количеством разделов и функций. Разработка такого рода сайтов является для компании лишь начальным этапом, в создании представительства компании в сети Интернет. На сайте-визитке размещается краткая информация о компании, портфолио и контакты компании. Цель сайта-визитки – представление компании в глобальной сети с информацией, с помощью которой можно связаться с компанией. Возможности же корпоративного сайта значительно шире. Посетитель, попавший на корпоративный сайт, уже имеет возможность связаться с компанией посредством различных форм обратной связи.&nbsp; Огромное количество разнообразных функций и сервисов, позволяют корпоративному сайту приносить доход компании.</p>\r\n<p>Разработка и создание корпоративного сайта, процесс, требующий куда больше умений и навыков, чем создание все того же сайта-визитки. Обращаясь в веб-студию, которая занимается разработкой и созданием сайтов, убедитесь, есть ли у неё опыт по созданию именно корпоративных сайтов.&nbsp; Если веб-студия имеет достаточный опыт в этой области, и способна выполнить задачи по продвижению корпоративного сайта и привлечению большого количества клиентов, то можете смело положиться на профессионализм специалистов. При этом Вас не должна смущать высокая цена создания корпоративного сайта, ведь все затраты на разработку и создание качественного корпоративного сайта окупятся в кратчайшие сроки, и корпоративный сайт будет приносить Вашей компании ощутимую прибыль.</p>\r\n<p>Разработка корпоративного сайта включает в себя выполнение следующих работ:</p>\r\n<ul>\r\n<li>подбор и регистрация доменного имени (важно, чтобы доменное имя было простым и запоминающимся, и включало в себя название компании);</li>\r\n<li>анализ сферы деятельности компании и особенностей самой компании;</li>\r\n<li>разработка структуры и навигации корпоративного сайта, на основе проведенного анализа;</li>\r\n<li>разработка дизайна корпоративного сайта, который должен быть выполнен в фирменном стиле компании и учитывающий пожелания заказчика;</li>\r\n<li>наполнение сайта уникальным оптимизированным контентом, который необходим для продвижения корпоративного сайта в поисковых системах.</li>\r\n<li>создание для корпоративного сайта необходимых почтовых e-mail адресов.</li>\r\n<li>ведение статистики и установка для этого необходимых счетчиков</li>\r\n</ul>\r\n<p>При составлении технического задания на разработку корпоративного сайта, какие-то услуги могут быть исключены, а какие-то добавлены. Все зависит от того какие требования и пожелания выдвинет заказчик. Тесное сотрудничество с клиентом позволяет более точно понять его пожелания и более полно удовлетворить все его требования.</p>\r\n<p>Наша веб-студия занимается созданием корпоративных сайтов на системе управления сайтом (CMS) Joomla!. Это позволяет значительно сократить сроки выполнения проекта. Использование&nbsp; CMS позволяет создать многофункциональный корпоративный сайт с возможностью связи с клиентами и партнерами, и другими интересными функциями и сервисами. Заключение договора с нашей веб-студией на разработку и создание корпоративного сайта Вашей компании это первый и важный шаг на пути к успеху!</p>', 1, 23, '2014-03-15 22:37:43', 445, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2014-03-15 22:37:43', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 1, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', '');
INSERT INTO `f8ad7_content` (`id`, `asset_id`, `title`, `alias`, `introtext`, `fulltext`, `state`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`) VALUES
(72, 199, 'Дизайн сайтов', 'site-disign', '<p>Когда при общении с заказчиком разговор заходит о дизайне сайта, то все представление заказчика о том «что такое дизайн» сводится к тому, что дизайн сайта это набор разнообразных картинок, фотографий и общей цветовой гаммы. Конечно, это верно, и все это присутствует в дизайне сайта, но само понятие web дизайн сайта гораздо шире.</p>\r\n', '\r\n<p>Тесная взаимосвязь создания дизайна и собственно разработки сайта, дает понять, что дизайн сайта это не только картинки. При разработке сайта, и его продвижению и раскрутке, дизайн сайта занимает основное место. &nbsp;&nbsp;Создание пользовательских интерфейсов в различных приложениях возможно благодаря именно web дизайну. Создание оригинальных решений и способов подачи информации пользователям, которым занимаются многочисленные дизайн студии и есть ни что иное как web дизайн. Хорошо написано что такое веб-дизайн на сайте <a href="http://redsoft.ru/we-do/design/webdesign">Redsoft</a></p>\r\n<p>Современные &nbsp;технологии по созданию сайтов ушли далеко вперед и web дизайн уже не рассматривается как отдельная часть проекта. При создании сайта, его дизайн, последующее продвижение и раскрутка рассматриваются как единое целое. Дизайн студии имеют целый штат специалистов, которые занимаются всеми аспектами разработки сайтов и создания дизайна.</p>\r\n<p>Фрилансеры-одиночки, которые занимают созданием дизайна, не могут конкурировать с дизайн студиями именно потому, что к созданию дизайна для сайта необходимо подходить комплексно. Не умение создать полноценный ресурс, и отсутствие знаний и опыта в этом деле и становится камнем преткновения, притом, что фрилансер создает действительно качественные дизайны.</p>\r\n<p>Создание дизайна, это не просто красиво нарисованный дизайн сайта, это грамотная разработка всей структуры ресурса. Удобство общения для пользователя является главным элементом в создании web дизайна, который должен соответствовать стандартам W3C.</p>\r\n<p>Создание дизайна в соответствии с требованиями W3C позволяет гарантировать, что он будет удобен для людей с ограниченными возможностями. Пользователи смогут комфортно работать с сайтом, заходя на него с портативных устройств. Наверно самое главное, что дает соблюдение стандартов W3C при создании дизайна, это кроссплатформенность верстки. Комплексное рассмотрение процесса создания дизайна, и учитывание требований по seo оптимизации, интернет-маркетинга и др. позволяет значительно поднять уровень продаж и решить имиджевые задачи.</p>\r\n<p>Этапы создания web дизайна и разработки сайта</p>\r\n<p>Если &nbsp;Вы спросите в различных дизайн студиях, что является самым сложным в разработке web дизайна, то большинство ответит, что подчас самым сложным моментом в создании web дизайна, это понять, что от тебя хотят. Ведь чаще всего весь заказ клиента сводится к тому, что он просит сделать ему красивый дизайн сайта, не осознавая всю сложность этого процесса и не понимая о неразрывности создания сайта и его раскрутки.</p>\r\n<p>Первым этапом в создании веб дизайна является диалог дизайн студии и заказчика. В процессе этого диалога заказчик излагает свое представление о красивом дизайне сайта. Часто бывает, что заказчику чем-то не нравится старый дизайн сайта, и он хочет просто получить новый web дизайн.</p>\r\n<p>По окончанию обсуждения всевозможных красивых дизайнов, начинается обсуждение дизайна сайта и его функциональных особенностей. На этом этапе проводится анализ сайтов конкурентов, целью которого является выявление возможных ошибок, допущенных конкурентами при создании дизайна, а также заимствование оригинальных решений для собственного проекта.</p>\r\n<p>Результатом собеседования является техническое задание на разработку и создание web дизайна сайта, его продвижение и раскрутку. В техническом задании учитываются такие параметры, как объем работ и функциональность. &nbsp;&nbsp;&nbsp;Но главным в техническом задании на создание web дизайна сайта является цель ресурса, которая определяет основные приоритеты по созданию дизайна.</p>\r\n<p>После того как все нюансы обсуждены, дизайн студия изготавливает макет дизайна, обычно не один. В результате чего заказчик может выбирать наиболее подходящий и учитывающий его требования. После того как заказчиком выбран макет и он доведен дизайн студией до совершенства, в дело вступает пожалуй ключевая фигура в команде специалистов дизайн студии – верстальщик.</p>\r\n<p>Работа верстальщика заключается в том, чтобы цельную картинку макета сделать понятной для браузеров операционных систем. Для этого он нарезает макет на отдельные фрагменты и верстает их с использованием html. &nbsp;В результате получается законченный web дизайн, который описан в специальном коде.</p>\r\n<p>Дальше в дело вступает программист. Он привязывает закодированный web дизайн к системе управления сайтом (CMS). Большинство дизайн студий используют готовые системы управления сайтом. Однако если того требует ситуация или заказчик, то под конкретный проект разрабатывают уникальную систему управления. Но в большинстве случаев дизайн студии обходятся готовыми CMS. В результате работа программиста заключается в замене стандартного шаблона на оригинальный разработанный дизайн. И в конце данного этапа производится тестирование всей системы.</p>\r\n<p>Возможно, главной проблемой в разработке сайта и его раскрутке становится то, что дизайн сайта должен быть кроссбраузерным. &nbsp;Другими словами, важно, чтобы все популярные браузеры хорошо отображали разработанный дизайн сайта. &nbsp;И подчас сделать это сложнее, чем создать дизайн, так как многие интернет браузеры, такие как IE, в погоне за лидерством доставляют огромное количество хлопот дизайн студиям всего мира. Но его нельзя не учитывать, потому что все прекрасно понимают, что IE присутствует в каждой стандартной сборке Windows. Поэтому это значительно повышает цену на разработку и создание дизайна.</p>\r\n<p>Когда дизайн сайта после всех настроек стал хорошо читаться всеми браузерами, начинается создание сайта с изменением параметров. Веб дизайн должен быть адаптирован ко всем изменениям различных параметров. Это может быть и изменение величины шрифта, и отсутствие флеш плеера и многое другое. Все необходимые настройки и корректировки проводятся до тех пор, пока даже малейшие погрешности не будут устранены. Этот, пожалуй, самый важный этап в разработке сайта контролирует главный менеджер дизайн студии.</p>\r\n<p>И наконец, когда произведены все необходимые этапы тестирования веб дизайна, готовый проект размещается в сети. Для этого выбирается хостинг-провайдер на сервере, которого будет размещаться готовый сайт. Нередко сами дизайн студии выступают в роли хостинг-провайдера. Если на данном этапе обнаружились незначительные неточности, то пока сайт закрыт для доступа пользователей, все неточности и недоработки устраняются. Если все настройки сделанный и все готово к работе, то сайт наполняется контентом.</p>\r\n<p>Можно с уверенностью сказать, что создание дизайна это достаточно сложный, но в тоже время очень увлекательный процесс. Весь процесс создания веб дизайна это целая наука, но в ней всегда есть место искусству и творчеству. Создание дизайна это конечно задача профессионалов. Ведь только профессиональная команда разработчиков, способна разработать сайт и дизайн, который не только удовлетворит пожелания заказчика, но и принесет ему ощутимый доход.</p>', 1, 23, '2014-03-15 22:38:02', 445, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2014-03-15 22:38:02', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 0, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(73, 200, 'Разработка корпоративного сайта', 'create-corporate-site', '<p>Если молодая компания, ставящая перед собой высокие цели и задачи, хочет динамично развиваться и быть как можно доступнее клиентам и партнерам, то рано или поздно, она задумывается о своем представительстве в сети Интернет. Которое невозможно без разработки корпоративного сайта, где будет представлена вся необходимая информация о компании, оказываемых ею услугах и предлагаемом товаре.</p>\r\n<p>Разработка корпоративного сайта это отличный способ рекламы Вашей компании. Созданный в соответствующем компании стиле, корпоративный сайт является лицом Вашей компании в глобальной сети. И чтобы это лицо всегда улыбалось посетителям, необходимо доверить разработку корпоративного сайта опытной и профессиональной веб-студии.</p>\r\n', '\r\n<p><strong>Этапы разработки корпоративного сайта</strong></p>\r\n<p>В любой профессиональной веб-студии начальным этапом разработки корпоративного сайта является анализ сферы деятельности компании и её особенностей. Грамотный анализ всех нюансов сферы бизнеса компании позволит создать корпоративный сайт, который впоследствии принесет его обладателю ощутимый доход.</p>\r\n<p><strong>Разработка структуры и навигации корпоративного сайта</strong></p>\r\n<p>После анализа сферы деятельности компании прорабатывается структура корпоративного сайта. Важно, чтобы только что пришедший посетитель не потерялся во множестве ссылок, а смог сразу понять, что предлагает компания.</p>\r\n<p>Основными разделами структуры корпоративного сайта являются:</p>\r\n<ul>\r\n<li>«Новости» - раздел, в котором сообщаются последние новости компании.</li>\r\n<li>«О компании» - раздел, содержащий историю и информацию о компании.</li>\r\n<li>«Продукция и услуги» - раздел, который предлагает посетителю сайта ознакомиться с предоставляемыми товарами и услугами компании.</li>\r\n<li>«Цены» - раздел с информацией о ценах на конкретные услуги и товары компании.</li>\r\n<li>«Контакты» - раздел с информацией о контактах с компанией.</li>\r\n</ul>\r\n<p>В зависимости от сферы деятельности компании количество разделов может быть расширено.</p>\r\n<p>Большинство веб-студий разрабатывают корпоративный сайт на системах управления сайтом (CMS). Это позволяет легко создавать и редактировать структуру и разделы сайта. Более того, с помощью системы управления сайтом можно распределить полномочия редакторов сайта. Например, пресс-служба компании будет иметь доступ только к разделу новостей, а коммерческий отдел к разделу цен и т.п. Создание корпоративного сайта с помощью готовой системы управления сайтом позволяет сделать его многофункциональным.</p>\r\n<p>Корпоративный сайт с грамотно разработанной структурой и навигацией, позволит пользователю без труда найти интересующую его информацию о предлагаемых услугах, товарах и контактах с компанией.</p>\r\n<p><strong>Разработка дизайна корпоративного сайта</strong></p>\r\n<p>Во всех веб-студиях при разработке корпоративного сайта особое внимание уделяют созданию дизайна. Дизайн корпоративного сайта должен «зацепить» посетителя, чтобы он не прошел мимо. Разрабатываемый дизайн корпоративного сайта должен быть выполнен в фирменном стиле компании. Если у компании все еще нет фирменного стиля, то дизайн корпоративного сайта, может стать отправной точкой в его создании.</p>\r\n<p>В профессиональных веб-студиях разрабатывают сразу несколько макетов дизайна корпоративного сайта. Заказчик имеет право выбора наиболее подходящего и удовлетворяющего его условиям дизайна. Выбранный макет дизайна доводится до совершенства и окончательно согласуется с заказчиком. Такой подход к созданию дизайна для корпоративного сайта позволяет значительно ускорить процесс разработки корпоративного сайта.</p>\r\n<p><strong>Продвижение корпоративного сайта</strong></p>\r\n<p>Разработка корпоративного сайта – это хороший рекламный ход, позволяющий привлечь клиентов и партнеров. Но чтобы корпоративный сайт был посещаем, и желательно, чтобы это был целевой посетитель, необходимо продвижение корпоративного сайта в поисковых системах.</p>\r\n<p>Этим так же занимаются многочисленные веб-студии. В достаточно короткое время специалисты веб-студии смогут поднять Ваш корпоративный сайт на первые позиции по конкретному запросу в поисковых системах.</p>\r\n<p>Однако это не единственный метод раскрутки корпоративного сайта. Существует также <strong>контекстная реклама</strong>, направленная на рекламирование конкретного товара и услуги, которые актуальны в настоящее время. Контекстная реклама позволяет оперативно регулировать уровень продаж.</p>\r\n<p>Еще один метод рекламы корпоративного сайта – <strong>баннерная реклама</strong>. Данный вид рекламы направлен на раскрутку самого бренда и позволяет увеличить узнаваемость компании.</p>\r\n<p>Грамотное сочетание всех видов раскрутки и продвижения корпоративного сайта позволит создать узнаваемый и запоминающийся бренд на рынке товаров и услуг.</p>\r\n<p><strong>Стоимость разработки корпоративного сайта</strong></p>\r\n<p>Стоимость разработки корпоративного сайта в разных веб-студиях может быть различной. Цена зависит и от объема необходимых работ и пожеланий заказчика по созданию корпоративного сайта. Но в среднем, цена на разработку корпоративного сайта колеблется в переделах 50-70 тысяч рублей. Нужно понимать, что компания, которая не сэкономит &nbsp;на разработке корпоративного сайта и его продвижении, в будущем может рассчитывать на существенное увеличение доходов.</p>', 1, 24, '2014-03-15 22:38:27', 445, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2014-03-15 22:38:27', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 3, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(74, 201, 'Как составить резюме', 'create-resume', '<p><strong>Среднестатистический менеджер по персоналу тратит на каждое <a href="http://www.openjob.ru/content/view/53/71/" target="_blank">резюме </a>не более 15-20 секунд. Ваша задача заключается в том, чтобы за этот кратчайший отрезок времени заинтересовать будущего, как мы надеемся, работодателя. Для этого необходимо написать резюме по правильному шаблону.</strong></p>\r\n<p>Внешно резюме должно восприниматься легко и быть четким по структуре. Старайтесь быть кратким, чтобы резюме заняло не больше страницы А4. На собеседовании у вас будет возможность рассказать о себе подробнее. Используйте стандартный шрифт — Times New Roman, размер— 12-14-й кегль. Для выделения лучше использовать жирность, а не курсив или подчеркивание.</p>\r\n<p>Чтобы резюме не сливалось в один сплошной текст, разбейте его на короткие абзацы. Никогда не используйте рамочек и экзотических символов, они могут оказать негативное воздействие и показать вас как несерьезного работника.</p>\r\n', '\r\n<p>Обычно резюме состоит из 5 тематических блоков: «Личные данные соискателя», «Цель», «Опыт работы», «Образование», «Дополнительные сведения». Что в них писать — смотрите ниже.</p>\r\n<p><strong>1. Личные данные соискателя</strong></p>\r\n<p>Всегда обязательны для заполнения - Фамилия, имя, отчество, контактная информация (адрес, телефон, электронная почта), дата рождения. Дату рождения указывайте, если считаете возраст своим преимуществом. Иначе ее лучше опустить.</p>\r\n<p>Иногородним соискателям необязательно писать, по какому адресу они зарегистрированы, а где проживают фактически. В резюме это лишняя информация может неблагоприятно повлиять на работодателя. В случае необходимости расскажете эти подробности на собеседовании.</p>\r\n<table style="float: left;" border="1">\r\n<tbody>\r\n<tr><th>Неправильно <br /><small>Здесь и в примерах ниже цитаты из подлинных резюме.</small></th><th>Правильно<br /><small>Это и ниже шаблонные примеры. Главное помните: вы — не Петр Алексеевич Романов.</small></th></tr>\r\n<tr>\r\n<td>ПЕТРОВА Светлана Ивановна<br /> Адрес постоянной регистрации: г. Самара, ул. Кирова, д. 2, кв. 8.<br /> Адрес временной регистрации: Москва, Тополиная аллея, д. 12/2, кв. 90.<br /> Фактически проживаю: Москва, Сормовский пр., д. 45. (общежитие).<br /> Контактный телефон:ХХХ-ХХ-ХХ (спросить Полину Евгеньевну и оставить сообщение для Светланы Ивановны).<br /> Дата рождения: 18 августа 1952 года, но чувствую себя 35-летним человеком!</td>\r\n<td>РОМАНОВ Петр Алексеевич<br /> Москва, ул. Зеленая, д. 1, кв. 11.<br />Телефон: 8 ХХХ ХХХ-ХХ-ХХ (моб.), ХХХ-ХХ-ХХ (дом.).<br />E-mail: <a href="mailto:peter.romanov@mail.ru">peter.romanov@mail.ru</a> .<br />Дата рождения: 24.07.1980.</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p><strong>2. Цель</strong></p>\r\n<p>Это название должности, на которую вы претендуете. Оно должно звучать так, как заявлено у работодателя.</p>\r\n<p>Не указывайте сразу несколько вакансий, если они не из смежных областей. Пишите для каждой отдельное резюме.</p>\r\n<p>&nbsp;</p>\r\n<table style="float: left;">\r\n<tbody>\r\n<tr><th>Неправильно</th><th>Правильно</th></tr>\r\n<tr>\r\n<td>Должность: предлагайте!<br /> Ищу: любую высокооплачиваемую работу.<br /> Специализация: писательница ужасов, администратор, обзор современных направлений в жизни тинейджеров, переводчик, аналитик,<br />продвинутый пользователь французский, интернет, пользователь ПК, выполнение несложных работ, расшифровка звуковых файлов.</td>\r\n<td>Цель:<br /> Соискание должности начальника отдела маркетинга.</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p><strong>3. Опыт работы</strong></p>\r\n<p>Описывайте только тот опыт работы, который соответствует заявленной цели. Перечислите не больше 5 мест работы в обратном хронологическом порядке, то есть начиная с последнего или текущего. В каждом абзаце необходимо указать: период работы, название компании или предприятия, сферу деятельности, должность, которую вы занимали, и ваши обязанности.</p>\r\n<p>Главная ошибка: блок «Опыт работы» напоминает сухую выписку из трудовой книжки. Из него невидно, какие ваши навыки могут пригодиться на новой должности.</p>\r\n<table style="float: left;">\r\n<tbody>\r\n<tr><th>Неправильно</th><th>Правильно</th></tr>\r\n<tr>\r\n<td>\r\n<p>Опыт работы:<br />2 месяца программист-монтажник, 6 месяцев в МОСЭНЕРГО в должности<br />слесаря-механика, 4 месяца торговал на рынке.</p>\r\n<p>Опыт работы:<br />Работал с кучей разных издательств… Характер уравновешенный, немного алчный (в меру). Работать люблю. Работать хочу. Работать умею. Имею представление (разбираюсь) о работе бухгалтерии, PR-акциях, оформление первичной документации, в общем, за 5 лет кое-чему научиться успел.</p>\r\n<p>Должностные обязанности: «делать что скажут».</p>\r\n</td>\r\n<td>\r\n<p>Опыт работы: Сентябрь 2005 — настоящее время.<br />ООО «XXX» (последняя)<br />Должность: МАРКЕТОЛОГ.</p>\r\n<p>Должностные обязанности: планирование, подготовка и проведение маркетинговых мероприятий, контроль выполнения; работа с рекламными агентствами.<br />Апрель 2003 — август 2005.<br />ЗАО «ЧССМЧСМ» (предпоследняя)<br />Должность: МЕНЕДЖЕР ПО РЕКЛАМЕ.<br />Должностные обязанности: участие в реализации плана рекламных мероприятий компании; работа с рекламными агентствами, издательствами.</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p><strong>4. Образование</strong></p>\r\n<p>Сначала необходимо назвать основное образование, которое позволяет вам претендовать на данную должность. Укажите учебное заведение, годы учебы и присвоенную квалификацию. Упомяните дополнительное образование (курсы, тренинги, повышение квалификации ит.д.), если оно связано с вакансией.</p>\r\n<p>О компьютерных и языковых курсах лучше написать в разделе «Дополнительные сведения».</p>\r\n<table style="float: left;">\r\n<tbody>\r\n<tr><th>Неправильно</th><th>Правильно</th></tr>\r\n<tr>\r\n<td>Образование: 1980 — 1990 средняя школа 67 г. Торжок, Владимирской области,<br />1990 — 1992 ПТУ 5 г. Вышнего Волочка — присвоена специальность «мастер прядильного оборудования»,<br />1995 — курсы кройки и шитья,<br />1997 — водительские курсы,<br />1998 — парикмахерские курсы,<br />2000 — курсы секретарей (этот соискатель претендовал на должность администратора гостиницы)</td>\r\n<td>Образование: 1997-2002<br />Московский Государственный университет им. М. В. Ломоносова, факультет психологии, специальность «социальный психолог». Дополнительное образование: Апрель — май 2003<br />Стажировка в Германии в центральном офисе компании BMW в отделе маркетинговых коммуникаций.</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p><strong>5. Дополнительные сведения</strong></p>\r\n<p>В этом разделе указывают степень владения компьютером, иностранными языками или иные навыки, необходимые для профдеятельности. Если вы готовы к ненормированному рабочему дню или командировкам, напишите это.</p>\r\n<p>А вот о хобби или семье лучше не распространяться. Также странно смотрится сообщение о наличии автомобиля, если к работе это не имеет никакого отношения. И абсолютно неуместно перечисление личных качеств, какими бы замечательными они ни были.</p>\r\n<table style="float: left;">\r\n<tbody>\r\n<tr><th>Неправильно</th><th>Правильно</th></tr>\r\n<tr>\r\n<td>Дополнительные сведения: Систематичен. Умею молчать. <br />Хобби — футбол, легкая атлетика. <br />Врачами не обижен. <br />Женат, имею дочь, внука, зятя. <br />Иностранные языки: украинский — понимаю, читаю, пишу, но не разговариваю. <br />Английский — неразговорный. <br />Смелый пользователь ПК. <br />Интеллект в наличии, лоялен, корпоративен. <br />Готова работать с полной отдачей, но интим не предлагать.</td>\r\n<td>Дополнительные сведения: Знание ПК: Word, Excel, PowerPoint, CorelDraw, PhotoShop. Немецкий — свободно, английский — разговорный.</td>\r\n</tr>\r\n</tbody>\r\n</table>', 1, 24, '2014-03-15 22:38:47', 445, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2014-03-15 22:38:47', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 2, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', '');
INSERT INTO `f8ad7_content` (`id`, `asset_id`, `title`, `alias`, `introtext`, `fulltext`, `state`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`) VALUES
(75, 202, 'Как создать свой сайт?', 'create-site', '<p>Каждый день армия интернет пользователей пополняется новобранцами. И после пары месяцев бессмысленного скитания по сайтам всемирной паутины, у большинства возникает твердое желание создать свой сайт, который будет популярен, и приносить стабильный заработок.</p>\r\n<p><strong>Определение целей создания своего сайта</strong></p>\r\n<p>Прежде чем кидаться в омут с головой и пытаться создать свой сайт, необходимо определить идею сайта, цели и задачи, которые Вы ставите перед ним. Возьмите чистый листок бумаги и напишите, какой тематики будет Ваш будущий сайт. Когда Вы хорошо задумаетесь над этим вопросом, то Ваш пыл и желание немного поугаснут. Ведь это не так просто создать действительно стоящий проект, которого еще нет в глобальной сети.</p>\r\n<p>Когда вы определились с идеей своего сайта, необходимо определить конкретные цели, которые будет выполнять Ваш проект. Размытые цели и задачи, на подобие: стать популярным и крутым сайтом, сразу отметаются. Цель должна быть конкретная и понятная, например: добиться привлечения 100 уникальных посетителей в сутки, или получать доход с сайта в размере 100$ в месяц. Думаю, Вы уловили смысл. Всегда лучше воспринимается задача, которая поставлена понятно и четко.</p>\r\n<p>С определением целей и задач по созданию сайта, неплохо попутно будет составить и план их выполнения. Ставьте перед собой реальные задачи, но даже если вы перед собой ставите архисложные цели, то обязательно приложите максимум усилии для их выполнения. Ведь ничто так не поднимает «боевой» дух и желание продолжать заниматься созданием своего сайта, как достигнутая цель, к которой Вы так стремились. А опыт, полученный при достижении этой цели, поможет Вам работать более продуктивно в будущем.</p>\r\n', '\r\n<p><strong>Как корабль назовешь, так он и поплывет!</strong></p>\r\n<p>Следующий этап в эпопее под названием «Как создать свой сайт», это присвоение сайту имени, по которому его будут узнавать, и которое будут вводить в адресную строку браузера. Т.е поговорим о доменном имени. Правильно подобранное доменное имя сайта значительно повышает шансы на то, что Ваш сайт будет иметь высокую посещаемость, а, следовательно, будет популярен. Посмотрите в ТОП 10, в нем Вы не найдете практически ни один сайт со сложным доменным именем. Поэтому к выбору имени для будущего сайта необходимо подойти со всей серьезностью. Напишите все возможные варианты в блокноте. Важно, чтобы доменное имя было легко запоминающимся, в котором будут отражаться идея и тематика сайта. Не забывайте проверять свободно ли удачно придуманное имя.</p>\r\n<p><strong>Выбираем «движок» для сайта</strong></p>\r\n<p>И так теперь после всех подготовительных работ, можно приступать к непосредственному созданию сайта. Если вы хотите создать сайт с парой статичных страниц, и не большим набором не часто обновляемой информации, то Вам вполне подойдет создание сайта на «чистом» HTML. С помощью разнообразных html-редакторов, например: Macromedia Dreamweaver, Microsoft FrontPage, Вы без труда создадите простенький сайт с небольшим количеством страниц.</p>\r\n<p>Но насколько мы понимаем, сайт с 2-3 статичными страницами это цель не для нас. Мы стремимся к созданию сайта с высокой посещаемостью, который будет приносить доход. Для создания сайта такого рода лучше всего взять за основу систему управления сайтом (CMS) или по простому «движок».</p>\r\n<p>Существует огромное количество движков, как платных, так и бесплатных. Так как мы изначально ограничены в бюджете, то приобретение дорогостоящих платных движков даже не будет рассматриваться.</p>\r\n<p>Поговорим о системах управления сайтом, которые распространяются бесплатно. А поговорить есть о чем. В сети Интернет существует множество бесплатных и условно бесплатных движков. Это и PHP-NUKE и NetCat, Drupal и e107, и многие другие. Но наиболее популярной системой управления сайтом в глобальной сети является <strong>Joomla!</strong>. Она абсолютно бесплатна. На официальном русскоязычном сайте <a href="http://www.joomla.ru/">www.joomla.ru</a> Вы сможете скачать последнюю сборку этой системы, а также подробные мануалы по её установке, которая отличается простотой и затратой малого количества времени. В интернете есть огромное количество дополнительных модулей и компонентов, с помощью которых Вы сможете расширить функциональность своего сайта до крупного портала со своей фото и видео галереей, форумом и даже чатом. Если описывать каждую CMS отдельно, то на это уйдет не одна статья и даже не один цикл статей. Так что выбор, на каком движке поедет Ваш сайт, только за Вами.</p>\r\n<p><strong>Создание дизайна</strong></p>\r\n<p>Создание дизайна сайта является ключевым этапов в создании своего сайта. От того насколько грамотно разработан дизайн зависит, задержится ли только что пришедший на Ваш сайт пользователь.</p>\r\n<p>Вариантов как создать дизайн для собственного сайта несколько. Один из них, это заказ на разработку и создание дизайна в дизайн студиях. Этот вариант для тех, у кого в кармане есть пара сот, а то и тысяч лишних долларов. В таких дизайн студиях Вам в течение недели создадут дизайн в соответствии с Вашими желаниями и требованиями. Но как говорится, любой каприз за Ваши деньги.</p>\r\n<p>Другой, более дешевый, а главное более быстрый, вариант, это найти шаблон дизайна в интернете. Если Вы создаете свой сайт на каком-либо движке, то Вы без труда сможете найти огромное количество бесплатных и не очень дорогих шаблонов для выбранной CMS. Стоимость готового шаблона для сайта варьируется в переделах от 20$ до 500$. Если вы нашли бесплатный шаблон, то будьте готовы, что на другом сайте может оказаться точно такой же дизайн.</p>\r\n<p>Есть еще один вариант, но это кому как повезет. Часто молодые дизайнеры, которые еще не создали свое портфолио, готовы бесплатно создать Вам дизайн сайта. Единственным условием такого сотрудничества является размещение ссылки на Вашем сайте на портфолио этого дизайнера. И если Вы нашли такого дизайнера, то считайте, что Вам сказочно повезло!</p>\r\n<p>Ну и, пожалуй, последний и самый трудоемкий вариант создания дизайна, это взять свой флаг в свои руки и самостоятельно заняться разработкой и созданием дизайна для своего сайта. Затраты по времени здесь неограниченны. Все зависит от Ваших знаний и умений. Как говориться, дерзайте!</p>\r\n<p><strong>Выбор хостинга</strong></p>\r\n<p>Когда трудоемкий процесс по созданию сайта окончен, встает вопрос его размещения в глобальной сети Интернет. Для этого необходимо выбрать хостинг-провайдера, на сервер которого будет «залит» Ваш сайт. И надо сказать, что к этому выбору нужно подойти весьма основательно. Необходимо учесть все плюсы и минусы того или иного хостинг-провайдера.</p>\r\n<p>Сразу лучше откинуть варианты с бесплатными хостингами. Они хоть и бесплатные, но не дают никакой гарантии, что завтра Ваш сайт не канет в лету.</p>\r\n<p>Здесь лучше раскошелиться и выбрать хостинг-провайдера, который предлагает качественный хостинг с поддержкой всех необходимых технических требований, без которых Ваш сайт, созданный на движке, не сможет существовать. Огромное разнообразие тарифных планов позволит Вам выбрать подходящий именно для Вас вариант, по приемлемой цене.</p>\r\n<p>Мы прошли длинный путь создания сайта, от формирования идеи до размещения готового проекта на хостинге. Но не стоит останавливаться. Что бы Ваш сайт стал популярным необходима его раскрутка и продвижение в поисковых системах. Так что впереди еще много интересной работы.</p>', 1, 24, '2014-03-15 22:39:04', 445, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2014-03-15 22:39:04', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 1, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(76, 203, 'Бесплатный интернет магазин', 'free-internet-shop', '<p>Когда речь заходит о чем-нибудь бесплатном, русский человек посмотрит на это с львиной долей скептицизма, зная, что бесплатный сыр может быть только в мышеловке. Однако это не относится к бесплатно распространяемому скрипту интернет-магазина VirtueMart, который работает в связке с системой управления сайтом (CMS) Joomla!. Если Вы имеете интересную идею и товар, который может понравиться людям, то создание интернет-магазина, практически не затратив на это никаких средств, звучит весьма заманчиво.</p>\r\n<p>Часто в интернете можно встретить нелестные высказывания о VirtueMart, когда его сравнивают с платными аналогами. Стоит признать, что он действительно в каких-то областях уступает платным скриптам интернет-магазинов, но если грамотно подойти к установке и использованию компонента, то можно получить очень хороший и симпатичный интернет-магазин. Созданный на связке VirtueMart и Joomla интернет-магазин, конечно, не рассчитан &nbsp;на большой приток посетителей. Это и понятно, для крупных компаний желающих занять свое место в интернет торговле, скрипты для интернет-магазина пишутся индивидуально и за солидные деньги.</p>\r\n', '\r\n<p><strong>Появление </strong><strong>CMS Joomla и </strong><strong>VirtueMart</strong></p>\r\n<p>История появления компонента VirtueMart насчитывает не один год, и берет свое начало еще с тех времен, когда система Joomla называлась Mambo. И была эта система платной и стоила не одну тысячу долларов. Стоит понимать, что для простых пользователей она была не доступна. &nbsp;Однако в один прекрасный день владельцы компании Mambo решили выложить на общее обозрение часть исходного кода системы, который значительно уступал платной версии.</p>\r\n<p>Никто из руководства компании и не предполагал, что проект обзаведется огромным количеством разработчиков. Вся эта армия стала каждый день улучшать и совершенствовать бесплатную версию. И, в конце концов, бесплатная версия Mambo стала значительно лучше своего платного собрата. Что естественно не понравилось владельцам, которые запретили использовать бренд Mambo для бесплатной версии. Тогда группа разработчиков объявила конкурс на создание имени для бесплатной версии, в результате которого победило, как Вы понимаете, имя Joomla.</p>\r\n<p>Что же о компоненте VirtueMart, то изначально он носил имя MambaShop, но после переименования самой системы, был переименован и он.</p>\r\n<p><strong>Где взять?</strong></p>\r\n<p>Актуальную версию VirtueMart Вы сможете найти на сайте поддержки www.virtuemart.net. Там же вы найдете необходимый для русификации языковой пакет и множество дополнительных плагинов для увеличения функциональности интернет-магазина. Будьте внимательны, для каждой версии CMS Joomla предоставляется различные версии VirtueMart. Различные патчи позволяют обновить компонент VirtueMart c более ранних версий.</p>\r\n<p>Разработчики Joomla разработали версию CMS Joomla с уже установленным на неё компонентом VirtueMart. Это удобно если Вы еще не установили систему Joomla, и, выбирая эту версию, Вы убиваете сразу двух зайцев.</p>\r\n<p><strong>Установка</strong></p>\r\n<p>Процесс установки компонента VirtueMart &nbsp;производится стандартным для всех установок компонентов CMS Joomla способом и не должен доставить Вам какие-либо трудности. Тем более что займет он у Вас всего несколько минут.</p>\r\n<p>После установки компонента VirtueMart необходимо русифицировать его с помощью заранее скаченных языковых пакетов.</p>\r\n<p>В результате несложных манипуляций, Вы получаете полностью русифицированный и готовый к работе интернет-магазин. Конечно, его еще необходимо дорабатывать, устанавливая дополнительные плагины и патчи, но это уже дело каждого.</p>\r\n<p>Специалисты нашей веб-студии готовы заняться созданием интерент-магазина на базе связки CMS Joomla и VirtueMart. Имея большой опыт в создании интернет-магазинов, мы гарантируем, что Вы получите многофункциональный и полностью готовый к работе интернет-магазин, который будет приносить стабильный доход.</p>', 1, 24, '2014-03-15 22:39:22', 445, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2014-03-15 22:39:22', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 0, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(77, 204, 'Создание веб-сайтов с помощью Joomla! 1.5', 'web-joomla-15', '<p><img class="bookcover" style="margin-right: 5px; float: left;" alt="Создание веб-сайтов с помощью Joomla! 1.5" src="images/sampledata/books/graph.jpg" height="140" width="100" />Твердый переплет (2009)</p>\r\n<p>Книга посвящена основам использования новой версии популярной системы управления веб-сайтами Joomla! версии 1.5 с открытым исходным кодом. Подробно рассматриваются такие темы, как инсталляция Joomla! в разных средах, настройка языка и шаблонов, операции и конфигурирование административной области, настройка меню Site, Menus, Content, Components, Extensions и Tools, система расширений Joomla!.</p>\r\n', '\r\n<p><a href="http://www.ozon.ru/context/detail/id/4231970/?partner=joomla"><img style="margin-right: 5px; float: left;" alt="Joomla 1.5. Руководство" src="images/sampledata/books/graph.jpg" height="278" width="200" /></a><a href="http://www.ozon.ru/context/detail/id/4231970/?partner=joomla">Купить книгу Создание веб-сайтов с помощью Joomla! 1.5</a></p>\r\n<p>Твердый переплет (2009)</p>\r\n<p>Книга посвящена основам использования новой версии популярной системы управления веб-сайтами Joomla! версии 1.5 с открытым исходным кодом. Подробно рассматриваются такие темы, как инсталляция Joomla! в разных средах, настройка языка и шаблонов, операции и конфигурирование административной области, настройка меню Site, Menus, Content, Components, Extensions и Tools, система расширений Joomla!.</p>\r\n<p>Немалое внимание уделяется построению собственных шаблонов и расширений, а также концепции свободы от барьеров в отношении веб-сайтов. Представленный пример полного цикла разработки веб-сайта поможет лучше усвоить материал.<br />Книга "Создание веб-сайтов с помощью Joomla! 1.5" рассчитана на дизайнеров разной квалификации, а также будет полезна студентам и преподавателям дисциплин, связанных с разработкой веб-сайтов.</p>', 1, 25, '2014-03-15 22:39:44', 445, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2014-03-15 22:39:44', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 16, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(78, 205, 'Самоучитель Joomla!', 'samouchitel-joomla', '<p><img class="bookcover" style="margin-right: 5px; float: left;" src="images/sampledata/books/ramen.jpg" alt="Самоучитель Joomla!" width="100" height="140" />Мягкая обложка (2008)</p>\r\n<p>Описан простой и быстрый процесс разработки полнофункциональных сайтов с использованием бесплатной системы управления контентом Joomla!.</p>\r\n', '\r\n<p><a href="http://www.ozon.ru/context/detail/id/4030255/?partner=joomla"><img style="margin-right: 5px; float: left;" src="images/sampledata/books/ramen.jpg" alt="Joomla 1.5. Руководство" width="200" height="278" /></a><a href="http://www.ozon.ru/context/detail/id/4030255/?partner=joomla">Купить книгу Самоучитель Joomla!</a></p>\r\n<p>Мягкая обложка (2008)</p>\r\n<p>Описан простой и быстрый процесс разработки полнофункциональных сайтов с использованием бесплатной системы управления контентом Joomla!.</p>\r\n<p>В книге рассматривается:</p>\r\n<ul>\r\n<li>установка шаблона и настройка системы и сопутствующих приложений,</li>\r\n<li>планирование содержимого сайта, добавление статей, разработка меню,</li>\r\n<li>администрирование Joomla!, резервное копирование сайта, проблемы безопасности,</li>\r\n<li>создание собственных шаблонов, обзор расширений системы и примеры их разработки,</li>\r\n<li>поддержка функций Web-сообщества, сбор и анализ статистики сайта,</li>\r\n<li>создание фотогалереи, поддержка электронной коммерции, поисковая оптимизация и др.</li>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<p>Для интернет-разработчиков.</p>', 1, 25, '2014-03-15 22:40:01', 445, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2014-03-15 22:40:01', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 15, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(79, 206, 'Движок для вашего сайта. CMS Joomla!, Slaed, PHP-Nuke (+ CD-ROM)', 'dvizok-dly-joomla', '<p><img class="bookcover" style="margin-right: 5px; float: left;" alt="JДвижок для вашего сайта. CMS Joomla!, Slaed, PHP-Nuke (+ CD-ROM)" src="images/sampledata/books/kolisnichenko2.jpg" height="140" width="100" />Мягкая обложка (2008)</p>\r\n<p>Книга ориентирована как на обычных пользователей Интернета, которым нужно в кратчайшие сроки создать свой сайт, так и на разработчиков, которые заинтересованы в построении собственной системы управления сайтом. Рассмотрены три уже готовые системы управления сайтом - Joomla!, Slaed, PHP-Nuke</p>\r\n', '\r\n<p><a href="http://www.ozon.ru/context/detail/id/3907519/?partner=joomla"><img style="margin-right: 5px; float: left;" alt="Joomla 1.5. Руководство" src="images/sampledata/books/kolisnichenko2.jpg" height="278" width="200" /></a><a href="http://www.ozon.ru/context/detail/id/3907519/?partner=joomla">Купить книгу Движок для вашего сайта. CMS Joomla!, Slaed, PHP-Nuke (+ CD-ROM)</a></p>\r\n<p>Мягкая обложка (2008)</p>\r\n<p>Книга ориентирована как на обычных пользователей Интернета, которым нужно в кратчайшие сроки создать свой сайт, так и на разработчиков, которые заинтересованы в построении собственной системы управления сайтом. Рассмотрены три уже готовые системы управления сайтом - Joomla!, Slaed, PHP-Nuke</p>\r\n<p>С позиции пользователя описывается, как установить, настроить, разработать графическую тему и расширить возможности каждой системы.<br /> Для разработчиков описано программирование собственных расширений для рассмотренных движков, а также создание собственной системы управления сайтом. Отдельное внимание уделяется защите от взлома разрабатываемой системы, а также интеграции с популярным форумом phpBB из файла задания. <br /> На прилагаемом компакт-диске находятся последние версии CMS Joomla!, Slaed, PHP-Nuke, множество расширений, шаблонов, а также все значимые листинги книги.</p>', 1, 25, '2014-03-15 22:40:22', 445, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2014-03-15 22:40:22', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 14, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(80, 207, 'Выбираем лучший бесплатный движок для сайта. CMS Joomla! и Drupal (+ CD-ROM)', 'vybiraem-luchshij-besplatnyj-dvizhok-dlja-sajta-cms-joomla-i-drupal-cd-rom', '<p><img title="  Выбираем лучший бесплатный движок для сайта." style="margin-right: 5px; float: left;" alt="  Выбираем лучший бесплатный движок для сайта." src="images/sampledata/books/kolisnichenko_1.jpg" height="132" width="100" />Мягкая обложка (2010)</p>\r\n<p>Книга ориентирована как на обычных пользователей Интернета, которым нужно в кратчайшие сроки создать свой сайт, так и на разработчиков, которые заинтересованы в построении собственной системы управления сайтом.</p>\r\n', '\r\n<p><img title=" Выбираем лучший бесплатный движок для сайта." style="margin-right: 5px; float: left;" alt=" Выбираем лучший бесплатный движок для сайта." src="images/sampledata/books/kolisnichenko_1.jpg" height="200" width="151" /><a href="http://www.ozon.ru/context/detail/id/5744467/?partner=joomla"> </a><a href="http://www.ozon.ru/context/detail/id/5426171/?partner=joomla">Купить книгу PВыбираем лучший бесплатный движок для сайта. CMS Joomla! и Drupal (+ CD-ROM)</a></p>\r\n<p>&nbsp;</p>\r\n<p>Мягкая обложка (2010)</p>\r\n<p>Книга ориентирована как на обычных пользователей Интернета, которым нужно в кратчайшие сроки создать свой сайт, так и на разработчиков, которые заинтересованы в построении собственной системы управления сайтом. Представлены две самые популярные системы управления сайтом - Joomla! (версии 1.5 и 1.6 beta) и Drupal (версия 6.x). Рассмотрены: выбор движка, домена и хостинга, установка Joomla! и Drupal, управление материалами и пользователями сайта, расширения для систем управления контентом, изменение дизайна сайта, темы оформления, интеграция с форумом, создание блога и фотогалереи, поисковая оптимизация, безопасность сайта, программирование собственных расширений и тем и другие вопросы. На прилагаемом компакт-диске находятся последние версии CMS Joomla! и Drupal, множество расширений и шаблонов для них.</p>', 1, 25, '2014-03-15 22:40:54', 445, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2014-03-15 22:40:54', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 13, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(81, 208, 'Praktischer Vergleich der Open-Source CMS TYPO3 V.4 und Joomla! 1.5', 'praktischer-vergleich-der-open-source-cms-typo3-v4-und-joomla-15', '<p><img style="margin-right: 5px; float: left;" alt="robert_dominik" src="images/sampledata/books/robert_dominik.jpg" height="130" width="100" />Gegenuberstellung des Aufbaus, Funktionsumfangs, der Arbeitsweise und Einsatzgebiete<br />Мягкая обложка (2010)</p>\r\n<p>Dieses Buch richtet sich an alle, die sich ein Bild uber die beliebten Open-Source Content-Management-Systeme TYPO3 V.4 und Joomla! 1.5 machen wollen. Neben der Behandlung der Grundlagen wie Web 2.0, Content-Management und Open Source werden die wichtigsten Eigenschaften der Systeme verglichen und daraus die jeweiligen Einsatzgebiete abgeleitet.</p>\r\n', '\r\n<p><img title="Ein Content Management System fur Literaturdatenbanken" style="margin-right: 5px; float: left;" alt="robert_dominik" src="images/sampledata/books/robert_dominik.jpg" height="177" width="136" /><a href="http://www.ozon.ru/context/detail/id/5744467/?partner=joomla"> Купить книгу Praktischer Vergleich der Open-Source CMS TYPO3 V.4 und Joomla! 1.5 </a></p>\r\n<p>Gegenuberstellung des Aufbaus, Funktionsumfangs, der Arbeitsweise und Einsatzgebiete<br />Мягкая обложка (2010)</p>\r\n<p>Dieses Buch richtet sich an alle, die sich ein Bild uber die beliebten Open-Source Content-Management-Systeme TYPO3 V.4 und Joomla! 1.5 machen wollen. Neben der Behandlung der Grundlagen wie Web 2.0, Content-Management und Open Source werden die wichtigsten Eigenschaften der Systeme verglichen und daraus die jeweiligen Einsatzgebiete abgeleitet. Dabei wird auch auf Themen wie Template-Erstellung, Barrierefreiheit, Sicherheit und Suchmaschinen-Freundlichkeit eingegangen. Der zweite Teil des Buches behandelt die komplette Erstellung einer kommerziellen Webseite mit dem CMS Joomla! 1.5, wobei die Wahl zugunsten von Joomla ausfuhrlich begrundet wird. Weiterhin wird klar, in welchen Fallen die Wahl auf TYPO3 gefallen ware. Der Leser wird in das umfangreiche Thema der Content-Management-Systeme eingefuhrt und erhalt zugleich eine praxisnahe Sichtweise auf die professionelle Realisierung von CMS-Projekten.</p>\r\n', 1, 25, '2014-03-15 22:41:40', 445, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2014-03-15 22:41:40', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 12, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(82, 209, 'Joomla. Создание сайтов без программирования', 'joomla-sozdanie-sajtov-bez-programmirovaniya', '<p><img style="margin-right: 5px; float: left;" alt="severdiya" src="images/sampledata/books/severdiya.jpg" height="138" width="100" />Твердый переплет (2011)</p>\r\n<p>Описан простой и быстрый процесс разработки полнофункциональных сайтов с использованием бесплатной системы управления контентом Joomla!.</p>\r\n', '\r\n<p><img style="margin-right: 5px; float: left;" alt="severdiya" src="images/sampledata/books/severdiya.jpg" height="200" width="145" /><a href="http://www.ozon.ru/context/detail/id/5813513/?partner=joomla">Купить книгу Joomla. Создание сайтов без программирования</a></p>\r\n<p>Твердый переплет (2011)</p>\r\n<p>Почему Joomla стала такой популярной? Это легко объяснить. Благодаря данной системе можно создавать сайты и веб-приложения, не обладая ни квалификацией программиста, ни опытом веб-дизайна. Собираетесь ли вы создать свой первый сайт или же сразу взялись за сложный заказ, эта книга будет вам незаменимым помощником в освоении Joomla. <br /> Книга предельно технически точна и поможет не только в освоении азов, но и станет отличным справочником тогда, когда вы станете опытным пользователем Joomla. <br />Значительное внимание уделено и тому, как можно усовершенствовать существующие Joomla-сайты.</p>\r\n', 1, 25, '2014-03-15 22:42:01', 445, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2014-03-15 22:42:01', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 11, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', '');
INSERT INTO `f8ad7_content` (`id`, `asset_id`, `title`, `alias`, `introtext`, `fulltext`, `state`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`) VALUES
(83, 210, 'Joomla! Практическое руководство', 'joomla-practice', '<p><img class="bookcover" style="margin-right: 5px; float: left;" alt="Joomla! Практическое руководство" src="images/sampledata/books/nort2.jpg" height="140" width="100" />Мягкая обложка (2008)</p>\r\n<p>Joomla! представляет собой эффективную систему управления содержимым веб-сайтов, распространяемую бесплатно и обладающую особой гибкостью использования, что выгодно отличает ее от других подобных программных продуктов. В этой книге, написанной ведущим консультантом проекта Joomla!, Бэрри Нортом, раскрываются все особенности и преимущества новейшей версии.</p>\r\n<p>&nbsp;</p>\r\n', '\r\n<p><a href="http://www.ozon.ru/context/detail/id/3992706/?partner=joomla"><img style="margin-right: 5px; float: left;" alt="Joomla! Практическое руководство" src="images/sampledata/books/nort2.jpg" height="278" width="200" /></a><a href="http://www.ozon.ru/context/detail/id/3992706/?partner=joomla">Купить книгу Joomla! Практическое руководство</a><br />Мягкая обложка (2008)</p>\r\n<p>&nbsp;</p>\r\n<p>Joomla! представляет собой эффективную систему управления содержимым веб-сайтов, распространяемую бесплатно и обладающую особой гибкостью использования, что выгодно отличает ее от других подобных программных продуктов. В этой книге, написанной ведущим консультантом проекта Joomla!, Бэрри Нортом, раскрываются все особенности и преимущества новейшей версии.</p>\r\n<p>Вы ознакомитесь с техническими возможностями Joomla, ее модулями и компонентами, научитесь грамотно формировать содержимое и узнаете о способах управления им. Не будут обойдены вниманием такие важнейшие вопросы, как:</p>\r\n<ul>\r\n<li>разработка шаблонов,</li>\r\n<li>создание удобной системы навигации,</li>\r\n<li>оптимизация сайтов для поисковых систем и многое другое.</li>\r\n</ul>\r\n<p>Кроме того, вы найдете три примера создания веб-сайтов "с нуля". Книга написана простым и живым языком, содержит минимум технических терминов, не требует от читателя знания PHP, CSS и прочих терминов, обычных для веб-дизайна, и при этом в ней представлено множество практических приемов, советов и вариантов решения возможных проблем.</p>\r\n<p>Эта книга станет отличным учебным и справочным пособием для профессиональных веб-дизайнеров и для тех, кто только приобщается к современному искусству создания веб-сайтов.</p>', 1, 25, '2014-03-15 22:43:09', 445, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2014-03-15 22:43:09', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 10, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(84, 211, 'Joomla! Практическое руководство', 'joomla-practice60', '<p><img class="bookcover" style="margin-right: 5px; float: left;" alt="Joomla! Практическое руководство" src="images/sampledata/books/nort2.jpg" height="140" width="100" />Букинистическое издание (2008)</p>\r\n<p>Joomla! представляет собой эффективную систему управления содержимым веб-сайтов, распространяемую бесплатно и обладающую особой гибкостью использования, что выгодно отличает ее от других подобных программных продуктов. В этой книге, написанной ведущим консультантом проекта Joomla!, Бэрри Нортом, раскрываются все особенности и преимущества новейшей версии.</p>\r\n<p>&nbsp;</p>\r\n', '\r\n<p><a href="http://www.ozon.ru/context/detail/id/3992706/?partner=joomla"><img style="margin-right: 5px; float: left;" alt="Joomla! Практическое руководство" src="images/sampledata/books/nort2.jpg" height="278" width="200" /></a><a href="http://www.ozon.ru/context/detail/id/3992706/?partner=joomla">Купить книгу Joomla! Практическое руководство</a><br />Букинистическое издание (2008)</p>\r\n<p>&nbsp;</p>\r\n<p>Joomla! представляет собой эффективную систему управления содержимым веб-сайтов, распространяемую бесплатно и обладающую особой гибкостью использования, что выгодно отличает ее от других подобных программных продуктов. В этой книге, написанной ведущим консультантом проекта Joomla!, Бэрри Нортом, раскрываются все особенности и преимущества новейшей версии.</p>\r\n<p>Вы ознакомитесь с техническими возможностями Joomla, ее модулями и компонентами, научитесь грамотно формировать содержимое и узнаете о способах управления им. Не будут обойдены вниманием такие важнейшие вопросы, как:</p>\r\n<ul>\r\n<li>разработка шаблонов,</li>\r\n<li>создание удобной системы навигации,</li>\r\n<li>оптимизация сайтов для поисковых систем и многое другое.</li>\r\n</ul>\r\n<p>Кроме того, вы найдете три примера создания веб-сайтов "с нуля". Книга написана простым и живым языком, содержит минимум технических терминов, не требует от читателя знания PHP, CSS и прочих терминов, обычных для веб-дизайна, и при этом в ней представлено множество практических приемов, советов и вариантов решения возможных проблем.</p>\r\n<p>Эта книга станет отличным учебным и справочным пособием для профессиональных веб-дизайнеров и для тех, кто только приобщается к современному искусству создания веб-сайтов.</p>\r\n', 1, 25, '2014-03-15 22:43:33', 445, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2014-03-15 22:43:33', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 9, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(85, 212, 'Joomla! Как спланировать, создать и поддерживать ваш веб-сайт (+ CD-ROM)', 'joomla-kak-splanirovat-sozdat-i-podderzhivat-vash-veb-sajt-cd-rom', '<p><img title="Joomla! Как спланировать, создать и поддерживать ваш веб-сайт" style="margin-right: 5px; float: left;" alt="Joomla! Как спланировать, создать и поддерживать ваш веб-сайт" src="images/sampledata/books/kramer.jpg" height="144" width="100" />Мягкая обложка (2011)</p>\r\n<p>Система управления контентом Joomla! сочетает мощь и простоту настройки, что сделало ее невероятно популярной. Но для того, чтобы раскрыть этот потенциал, мало просто загрузить и установить Joomla!</p>\r\n', '\r\n<p><img title="Joomla! Как спланировать, создать и поддерживать ваш веб-сайт" style="margin-right: 5px; float: left;" alt="kramer" src="images/sampledata/books/kramer.jpg" height="200" width="139" /><a href="http://www.ozon.ru/context/detail/id/6305812/?partner=joomla"> Купить книгу Joomla! Как спланировать, создать и поддерживать ваш веб-сайт (+ CD-ROM) </a></p>\r\n<p>Мягкая обложка (2011)</p>\r\n<p>Система управления контентом Joomla! сочетает мощь и простоту настройки, что сделало ее невероятно популярной. Но для того, чтобы раскрыть этот потенциал, мало просто загрузить и установить Joomla! С помощью этой книги вы сможете успешно пройти все этапы создания современного веб-проекта, от замысла до отладки. Джен Крамер, известный эксперт в этой области, расскажет вам о том, как строить взаимоотношения с клиентом, опишет основные способы решения бизнес-проблем и даст ценные рекомендации о построении структуры сайта.</p>\r\n', 1, 25, '2014-03-15 22:43:57', 445, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2014-03-15 22:43:57', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 8, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(86, 213, 'Joomla! Bible', 'joomla-bible', '<p><img class="bookcover" style="margin-right: 5px; float: left;" alt="Joomla! Bible" src="images/sampledata/books/Shreves.jpg" height="140" width="100" />Мягкая обложка (2010)</p>\r\n<p>Comprehensive guide to creating Web sites with the open-source Joomla!1.5 Joomla! is an open-source content management system (CMS) for Web sites. While it is free and relatively easy to use, there are lots of tricks and functionality that may not be intuitive to new users or those switching from other systems. And the previous version is quite different from the new Joomla 1.5, for which documentation is sparse.</p>\r\n', '\r\n<p><a href="http://www.ozon.ru/context/detail/id/5036702/?partner=joomla"><img style="margin-right: 5px; float: left;" alt="Joomla 1.5. Руководство" src="images/sampledata/books/Shreves.jpg" height="278" width="200" /></a><a href="http://www.ozon.ru/context/detail/id/5036702/?partner=joomla">Купить книгу Joomla! Bible</a></p>\r\n<p>Мягкая обложка (2010)</p>\r\n<p>Comprehensive guide to creating Web sites with the open-source Joomla!1.5 Joomla! is an open-source content management system (CMS) for Web sites. While it is free and relatively easy to use, there are lots of tricks and functionality that may not be intuitive to new users or those switching from other systems. And the previous version is quite different from the new Joomla 1.5, for which documentation is sparse.</p>\r\n<p>Joomla! Bible is the complete, step-by-step guide you need to build and manage Web sites using the very newest version of this powerful and popular CMS. Walks you through obtaining the Joomla! 1.5 code and how to deploy it to a server, configure the site, create content, and manage content and user hierarchies Helps you get the most out of core modules that provide advanced functionality, including the Polls Module, the Banner Manager, the Media Manager, Galleries, Weblinks, Content Syndication, and Newsfeed Aggregation Vaults you into the world of Web 2.0 with extensive coverage of JomSocial, and shows you how to set up for e-commmerce with VirtueMart Get the most out of Joomla! 1.5 with this complete guide guide.</p>\r\n', 1, 25, '2014-03-15 22:44:17', 445, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2014-03-15 22:44:17', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 7, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(87, 214, 'Joomla! 1.5. Практическое руководство', 'joomla-1-5-rukovodstvo', '<p><img class="bookcover" style="margin-right: 5px; float: left;" alt="Joomla! 1.5. Практическое руководство" src="images/sampledata/books/nort.jpg" height="140" width="100" />Мягкая обложка (2010)</p>\r\n<p>Joomla! представляет собой эффективную систему управления содержимым веб-сайтов, распространяемую бесплатно и обладающую чрезвычайной гибкостью, что выгодно отличает ее от других подобных программных продуктов. В этой книге, написанной ведущим консультантом проекта Joomla!, Бэрри Нортом, раскрываются все особенности и преимущества новейшей версии 1.5.</p>\r\n', '\r\n<p><a href="http://www.ozon.ru/context/detail/id/5129129/?partner=joomla"><img style="margin-right: 5px; float: left;" alt="Joomla 1.5. Руководство" src="images/sampledata/books/nort.jpg" height="278" width="200" /></a><a href="http://www.ozon.ru/context/detail/id/5129129/?partner=joomla">Купить книгу Joomla! 1.5. Практическое руководство</a></p>\r\n<p>Мягкая обложка (2010)</p>\r\n<p>Joomla! представляет собой эффективную систему управления содержимым веб-сайтов, распространяемую бесплатно и обладающую чрезвычайной гибкостью, что выгодно отличает ее от других подобных программных продуктов. В этой книге, написанной ведущим консультантом проекта Joomla!, Бэрри Нортом, раскрываются все особенности и преимущества новейшей версии 1.5.</p>\r\n<p>Книга познакомит читателя с техническими возможностями Joomla, ее модулями и компонентами, научит грамотно формировать содержимое и управлять им, откроет секреты установки, администрирования, организации сайта, разработки шаблонов и обновления содержимого. Здесь представлены советы по созданию удобной системы навигации, рекомендации по оптимизации сайтов для поисковых систем, способы решения типичных проблем. Кроме того, автор предлагает несколько пошаговых примеров создания веб-сайтов "с нуля". <br />Книга написана простым и живым языком, не требует от читателя знания РНР, CSS и специальной технической подготовки. Она станет отличным учебным и справочным пособием как для профессиональных веб-дизайнеров, так и для тех, кто только приобщается к искусству создания современных веб-сайтов.</p>', 1, 25, '2014-03-15 22:44:36', 445, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2014-03-15 22:44:36', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 6, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(88, 215, 'Joomla 2.5. Руководство пользователя', 'joomla-2-5-rukovodstvo-polzovatelya', '<p><img src="/images/sampledata/books/kolesnichenko.jpg" width="89" height="130" alt="kolesnichenko" title="kolesnichenko" style="margin-right: 5px; float: left;" />Мягкая обложка (2012)</p>\r\n<p>Эта книга - простое и эффективное учебное пособие по освоению и использованию системы управления контентом веб-сайта Joomla 2.5.</p>\r\n', '\r\n<p><img src="/images/sampledata/books/kolesnichenko.jpg" width="136" height="200" alt="kolesnichenko" title="kolesnichenko" style="margin-right: 5px; float: left;" /><a href="http://www.ozon.ru/context/detail/id/17920629/?partner=joomla">Купить книгу Joomla 2.5. Руководство пользователя</a></p>\r\n<p>Мягкий переплёт (2012)</p>\r\n<p>Эта книга - простое и эффективное учебное пособие по освоению и использованию системы управления контентом веб-сайта Joomla 2.5. Система очень популярна в Сети, поскольку обладает открытым кодом, проста в развертывании, управлении и очень надежна. В книге рассматриваются все основные аспекты использования Joomla версии 2.5:</p>\r\n<ul style="list-style-position: inside;">\r\n<li>установка и настройка системы.</li>\r\n<li>конфигурирование интерфейса управления.</li>\r\n<li>структуризация и размещение контента сайта.</li>\r\n<li>расширение системы новыми компонентами, модулями и плагинами.</li>\r\n<li>создание собственных шаблонов.</li>\r\n<li>защита и раскрутка сайта.</li>\r\n</ul>\r\n<p>Книга рассчитана на пользователей любой квалификации и будет полезна как начинающим, так и достаточно опытным разработчикам веб-сайтов.</p>', 1, 25, '2014-03-15 22:44:55', 445, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2014-03-15 22:44:55', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 5, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(89, 216, 'Joomla 1.5.15/1.6.0. Руководство пользователя (+ CD-ROM)', 'joomla-1515160-rukovodstvo-polzovatelja-cd-rom', '<p><img class="bookcover" style="margin-right: 5px; float: left;" alt="Joomla 1.5.15/1.6.0. Руководство пользователя" src="images/sampledata/books/kolisnichenko1.jpg" height="140" width="100" />Букинистическое издание (2010)</p>\r\n<p>Эта книга - простое и эффективное учебное пособие по освоению и использованию системы управления контентом вебсайта Joomla версий 1.5.15 и 1.6.0. Система обладает открытым кодом, проста в инсталляции, управлении и очень надежна.</p>\r\n', '\r\n<p><a href="http://www.ozon.ru/context/detail/id/5601922/?partner=joomla"><img style="margin-right: 5px; float: left;" alt="Joomla 1.5. Руководство" src="images/sampledata/books/kolisnichenko1.jpg" height="278" width="200" /></a><a href="http://www.ozon.ru/context/detail/id/5601922/?partner=joomla">Купить книгу Joomla 1.5.15/1.6.0. Руководство пользователя (+ CD-ROM)</a></p>\r\n<p>Букинистическое издание (2010)</p>\r\n<p>Эта книга - простое и эффективное учебное пособие по освоению и использованию системы управления контентом вебсайта Joomla версий 1.5.15 и 1.6.0. Система обладает открытым кодом, проста в инсталляции, управлении и очень надежна. <br /> Она широко используется в Сети для управления объектами самого разного назначения - от личных домашних страничек школьников и до сложнейших корпоративных веб-сайтов. <br /> В книге рассматриваются все основные аспекты использования Joomla 1.5 и 1.6: установка и настройка системы, конфигурирование интерфейса управления, структуризация и размещение контента сайта, расширение системы новыми компонентами, модулями и плагинами, создание собственных шаблонов.</p>\r\n', 1, 25, '2014-03-15 22:45:13', 445, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2014-03-15 22:45:13', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 4, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(90, 217, 'Joomla 1.5.15/1.6.0. Руководство пользователя', 'joomla-1515160', '<p><img class="bookcover" style="margin-right: 5px; float: left;" alt="Joomla 1.5.15/1.6.0. Руководство пользователя" src="images/sampledata/books/kolisnichenko1.jpg" height="140" width="100" />Мягкая обложка (2010)</p>\r\n<p>Эта книга - простое и эффективное учебное пособие по освоению и использованию системы управления контентом веб-сайта Joomla 1.5.15/1.6. Система очень популярна в Сети, поскольку обладает открытым кодом, проста в инсталляции, управлении и очень надежна. В книге рассматриваются все основные аспекты использования Joomla версий 1.5 и 1.6.</p>\r\n', '\r\n<p><a href="http://www.ozon.ru/context/detail/id/5295772/?partner=joomla"><img style="margin-right: 5px; float: left;" alt="Joomla 1.5. Руководство" src="images/sampledata/books/kolisnichenko1.jpg" height="278" width="200" /></a><a href="http://www.ozon.ru/context/detail/id/5295772/?partner=joomla">Купить книгу Joomla 1.5.15/1.6.0. Руководство пользователя</a></p>\r\n<p>Мягкая обложка (2010)</p>\r\n<p>Эта книга - простое и эффективное учебное пособие по освоению и использованию системы управления контентом веб-сайта Joomla 1.5.15/1.6. Система очень популярна в Сети, поскольку обладает открытым кодом, проста в инсталляции, управлении и очень надежна. В книге рассматриваются все основные аспекты использования Joomla версий 1.5 и 1.6:</p>\r\n<ul>\r\n<li>установка и настройка системы,</li>\r\n<li>конфигурирование интерфейса управления,</li>\r\n<li>структуризация и размещение контента сайта,</li>\r\n<li>расширение системы новыми компонентами, модулями и плагинами,</li>\r\n<li>создание собственных шаблонов.</li>\r\n</ul>\r\n<p>Книга рассчитана на пользователей любой квалификации и будет полезна как начинающим, так и достаточно опытным разработчикам веб-сайтов.</p>\r\n', 1, 25, '2014-03-15 22:45:30', 445, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2014-03-15 22:45:30', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 3, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(91, 218, 'Joomla 1.5. Руководство пользователя (+ CD-ROM)', 'joomla-15-cd-rom', '<p><img class="bookcover" style="margin-right: 5px; float: left;" alt="Joomla 1.5. Руководство" src="images/sampledata/books/kolisnichenko3.jpg" height="140" width="100" />Мягкая обложка (2009)</p>\r\n<p>Эта книга - простое и эффективное учебное пособие по освоению и использованию системы управления контентом веб-сайта Joomla 1.5. Система очень популярна в Сети, поскольку обладает открытым кодом, проста в инсталляции, управлении и очень надежна.</p>\r\n', '\r\n<p><a href="http://www.ozon.ru/context/detail/id/4253887/?partner=joomla"><img style="margin-right: 5px; float: left;" alt="Joomla 1.5. Руководство" src="images/sampledata/books/kolisnichenko3.jpg" height="278" width="200" /></a><a href="http://www.ozon.ru/context/detail/id/4253887/?partner=joomla">Купить книгу Joomla 1.5. Руководство пользователя (+ CD-ROM)</a></p>\r\n<p>Мягкая обложка (2009)</p>\r\n<p>Эта книга - простое и эффективное учебное пособие по освоению и использованию системы управления контентом веб-сайта Joomla 1.5. Система очень популярна в Сети, поскольку обладает открытым кодом, проста в инсталляции, управлении и очень надежна.</p>\r\n<p>В книге рассматриваются все основные аспекты использования Joomla 1.5:</p>\r\n<ul>\r\n<li>установка и настройка системы,</li>\r\n<li>конфигурирование интерфейса управления, структуризация и размещение контента сайта, расширение системы новыми компонентами, модулями и плагинами, создание собственных шаблонов.</li>\r\n</ul>\r\n<p>На диске представлены все обсуждаемое в книге программное обеспечение, подборка бесплатных шаблонов для Joomla.</p>\r\n<p>Книга рассчитана на пользователей любой квалификации и будет полезна как начинающим, так и достаточно опытным разработчикам веб-сайтов.</p>\r\n', 1, 25, '2014-03-15 22:45:55', 445, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2014-03-15 22:45:55', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 2, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(92, 219, 'CMS Security Handbook', 'cms-security-handbook', '<p><img src="/images/sampledata/books/tom-canavan.jpg" width="100" height="136" alt="tom-canavan" title="tom-canavan" style="margin-right: 5px; float: left;" />Мягкая обложка (2011)</p>\r\n<p>The Comprehensive Guide for WordPress, Joomla, Drupal, and Plone</p>\r\n', '\r\n<p><img src="/images/sampledata/books/tom-canavan.jpg" width="191" height="240" alt="tom-canavan" title="tom-canavan" style="margin-right: 5px; float: left;" /><a href="http://www.ozon.ru/context/detail/id/6494753/?partner=joomla">Купить книгу CMS Security Handbook</a></p>\r\n<p>Learn to secure Web sites built on open source CMSs Web sites built on Joomla!, WordPress, Drupal, or Plone face some unique security threats. If you are responsible for one of them, this comprehensive security guide, the first of its kind, offers detailed guidance to help you prevent attacks, develop secure CMS-site operations, and restore your site if an attack does occur. You all learn a strong, foundational approach to CMS operations and security from an expert in the field. More and more Web sites are being built on open source CMSs, making them a popular target,A thus making you vulnerable to new forms of attack This is the first comprehensive guide focused on securing the most common CMS platforms: Joomla!, WordPress, Drupal, and Plone Provides the tools for integrating the Web site into business operations, building a security protocol, and developing a disaster recovery plan Covers hosting, installation security issues, hardening servers against attack, establishing a contingency plan, patching processes, log review, hack recovery, wireless considerations, and infosec policy CMS Security Handbook is an essential reference for anyone responsible for a Web site built on an open source CMS.</p>\r\n', 1, 25, '2014-03-15 22:46:31', 445, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2014-03-15 22:46:31', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 1, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(93, 220, 'A Newbies Guide Joomla!', 'a-newbies-guide-joomla', '<p><img src="/images/sampledata/books/minute-help-guide.jpg" width="100" height="149" alt="minute-help-guide" title="minute-help-guide" style="margin-right: 5px; float: left;" />Мягкая обложка (2012)</p>\r\n<p>A Beginnings Guide to the Free and Open Source Content Management Systems</p>\r\n', '\r\n<p><img src="/images/sampledata/books/minute-help-guide.jpg" width="184" height="274" alt="minute-help-guide" title="minute-help-guide" style="margin-right: 5px; float: left;" /><a href="http://www.ozon.ru/context/detail/id/17550898/?partner=joomla">Купить книгу A Newbies Guide Joomla!</a></p>\r\n<p>One of the most difficult tasks you may find when you begin to explore Joomla is answering what seems like a simple question — “What is Joomla?” Let’s try an analogy — imagine you’re running an art gallery. Paintings and sketches adorn the walls and that is your content. People can come in and look at the paintings, and they can look at the paintings in any way they want. They can start right at the doorway and work their way around until they have completed the circuit. They can start at the back of the room and work their way forward. They can head straight to the first picture that catches their eye, and then to the next interesting picture, and so forth. Additionally, you can change things around — you can move the pictures to any part of the room, rearrange them, take some down. Or you can take down the pictures and redecorate the room, and then put those pictures up again exactly where they were. You can sell pictures and put new ones up to replace them. You can set up two galleries and put half of your pictures in each. Joomla gives you tools to manage your web content in the same way. In other words, Joomla is a package of software that you can host on your own computer, for development, or on a web server to deliver your web pages. It’s a web-based program helping you to control and manipulate your data. You will create web text, called articles, and manage them through Joomla’s Article Manager. You’ll upload images and documents through the Media Manager. Then, using Joomla’s many easy tools, you can assign those articles and media in any combination, to any page. Combine them, replace some, rearrange everything — it’s easy! Joomla makes creating, updating and maintaining a website much simpler. Read on to find out how.</p>', 1, 25, '2014-03-15 22:46:51', 445, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2014-03-15 22:46:51', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 0, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', '');
INSERT INTO `f8ad7_content` (`id`, `asset_id`, `title`, `alias`, `introtext`, `fulltext`, `state`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`) VALUES
(94, 221, '10. Общие задачи', 'obschie-zadachi', '<p><img style="margin: 0px 5px 5px 0px; float: left;" src="images/sampledata/joomla/j3en-cover_0.jpg" alt="seo" width="200" height="251" />Это руководство было создано для того, чтобы рассказать вам, как за 10 шагов поладить с Joomla 3.</p>\r\n<p>Надеемся, читая его, вы познакомились поближе с Joomla 3. Тем не менее, мы могли бы добавить еще много глав, чтобы объяснить все детали и особенности, которыми обладает Joomla.</p>\r\n<p>Вы сможете создать с Joomla все! Обратите внимание на расширение каталога ( http://extensions.joomla.org ) и улучшите ваш Joomla сайт нужными функциями.</p>\r\n', '\r\n<p><br />Тем не менее, хотелось бы напомнить о нескольких очень нужных расширениях:</p>\r\n<h2><strong>Поисковая оптимизация</strong></h2>\r\n<p>Ниже перечислены три варианта оптимизации поиска, которые содержатся в ядре Joomla:</p>\r\n<ol>\r\n<li>Joomla поставляется с параметрами SEO «Система → Общие настройки → Сайт → Настройки SEO» (System → Global Configuration → Site - SEO Settings).</li>\r\n<li>Вы можете установить мета описание для всего сайта и для каждой статьи. Мета описание – это краткое изложение содержания URL, которое появляется после выполнения поисковых запросов онлайн. Даже, если оно перестало считаться ключевым значением для рейтинга в поисковых системах, это влияет на рейтинг кликов по ссылке на вашем сайте в результатах поиска (т.е. фактически, пользователю будет достаточно кликнуть по ссылке на вашей странице). Мета описания не должны быть длиннее 160 символов «Статья → Мета данные → Параметры» (Article → MetaData Options tab).</li>\r\n<li>Перенаправление. «Компоненты → Перенаправление» (Components→ Redirect). Перенаправить пользователей с устаревшей или несуществующей страницы, документов и других активов сайта на новые, можно в 3 простых шага, с использованием собственных компонентов перенаправления Joomla. Это удобно, имеет нулевую кривую обучения и, самое главное, каждый раз, когда посетитель пытается получить доступ к несуществующей странице, компонент хранит свои URL, или, если он уже был сохранен, начинается отсчет попытки получить доступ к странице. Затем можно быстро решить эту проблему путем добавления нового URL для перенаправления будущих посетителей на страницу, которая работает.</li>\r\n</ol>\r\n<h2><strong>Обновление</strong></h2>\r\n<p>Joomla имеет автоматическую систему обновлений. Нужно просто зайти в «Расширения →Менеджер расширений → Обновить» (Extensions→ Extension Manager → Update). Нажмите кнопку «Найти обновления» (FindUpdates) и установите их.</p>\r\n<h2><strong>Резервное копирование и восстановление</strong></h2>\r\n<p>Вы узнаете о важности резервного копирования и восстановления, если компьютер или веб-сервер выйдет из строя, и вы столкнетесь с восстановлением сайта с нуля. Можно выбрать одно из следующих решений:</p>\r\n<ul>\r\n<li>Ваш провайдер предлагает услуги резервного копирования и восстановления, и вы ему доверяете.</li>\r\n<li>Установка сторонних компонентов, как резервное копирование Akeeba.</li>\r\n<li>Используйте свои собственные решения для резервного копирования.</li>\r\n</ul>\r\n<h2><strong>Ресурсы</strong></h2>\r\n<p>Вы хотите знать больше о Joomla?</p>\r\n<p>Тогда это руководство для вас будет только началом.</p>\r\n<p>Мы надеемся, вам понравилось его читать, мы хотим провести вас через основы Joomla! 3. Если хотите получить более глубокие знания, прочтите</p>\r\n<ul>\r\n<li>Joomla 2.5 - Руководство для начинающих</li>\r\n<li>Joomla! Развитие - Руководство для начинающих</li>\r\n<li>Становитесь мобильными с Joomla</li>\r\n</ul>\r\n<p>Все книги доступны на нескольких языках бесплатно, в формате PDF. Хотите узнать больше о Joomla? Хотите войти в контакт с сообществом Joomla? Вот некоторые сайты, которые могут вам помочь:</p>\r\n<h2><strong>Сообщество</strong></h2>\r\n<p>Joomla! поддерживается мировым сообществом. Если вамэто интересно, приходите и присоединяйтесь к нам!</p>\r\n<p>Станьте членом http://community.joomla.org/.</p>\r\n<ul>\r\n<li>Читайте журнал http://magazine.joomla.org/.</li>\r\n<li>Может быть, есть группа пользователей Joomla! в вашем кругу, и вы присоединитесь к пользовательской группе на http://community.joomla.org/user-groups.html Если нет, запустите ее сами!</li>\r\n<li>Twitter: http://twitter.com/joomla</li>\r\n<li>Facebook: http://www.facebook.com/joomla</li>\r\n<li>Flickr: http://www.flickr.com/groups/joomla/</li>\r\n</ul>\r\n<h2><strong>Документация</strong></h2>\r\n<p>http://docs.joomla.org/</p>\r\n<h2><strong>Контрольный список безопасности</strong></h2>\r\n<p>http://docs.joomla.org/Security_Checklist_1_-_Getting_Started</p>\r\n<p>&nbsp;</p>\r\n<h2><strong>Шаблоны Joomla!</strong></h2>\r\n<ul>\r\n<li>нет централизованного каталога для бесплатных шаблонов.</li>\r\n<li>нет централизованного каталога для коммерческих шаблонов.</li>\r\n</ul>\r\n<p><br />Во всяком случае, есть много клубов и профессионалов, которые обеспечивают шаблонами Joomla!. Просто найдите их в Интернете, и наверняка подберете подходящие.</p>\r\n<h2><strong>События</strong></h2>\r\n<ul>\r\n<li>Joomla! известна своими Joomla!Day.</li>\r\n<li>Joomla!Day - это одно-двухдневное мероприятие, организованное для сообщества. Список Joomla!Day можно найти здесь - <a href="There is no central directory for free templates. There is no central directory for commercial templates." target="_blank">http://community.joomla.org/events.html</a></li>\r\n<li>Существует международная конференция Joomla! в Европе ее называют Jandbeyond. Перейдите по ссылке <a href="There is no central directory for free templates. There is no central directory for commercial templates." target="_blank">http://jandbeyond.org/</a> для получения дополнительной информации.</li>\r\n<li>С 16-18 ноября 2012 года, первая мировая конференция Joomla прошла в Сан-Хосе, США.</li>\r\n</ul>\r\n<h2><strong>Будущие</strong></h2>\r\n<ul>\r\n<li>Сообщество планирует шестимесячный цикл релизов, основанный предложенных идеях.</li>\r\n<li>Следующий релиз Joomla! 3.5 запланирован на сентябрь 2013 года</li>\r\n<li>Разработчики сети Joomla! всегда ищут людей, таких как вы &nbsp;<a href="http://developer.joomla.org/" target="_blank">http://developer.joomla.org/</a></li>\r\n</ul>\r\n<h2><strong>Обучение</strong></h2>\r\n<ul>\r\n<li><a href="http://resources.joomla.org/directory/support-services/training.html" target="_blank">http://resources.joomla.org/directory/support-services/training.html</a></li>\r\n</ul>\r\n<h2><strong>Коммерческая поддержка</strong></h2>\r\n<ul>\r\n<li><a href="http://resources.joomla.org/" target="_blank">http://resources.joomla.org/</a></li>\r\n<li><a href="http://cocoate.com">http://cocoate.com</a></li>\r\n</ul>\r\n<p><em>&nbsp;</em></p>\r\n<p><em>&nbsp;</em></p>\r\n<p><em>Хаген Граф</em></p>', 1, 26, '2014-03-15 22:48:01', 445, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2014-03-15 22:48:01', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 9, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(95, 222, '9. Интеграция с социальными сетями', 'integratsija-s-sotsialnymi', '<p>Оба этих понятия связаны. Социальные сети не могут существовать без облачных технологий, а облачные технологии становятся все более социальными.</p>\r\n', '\r\n<h1><strong>Социальные сети</strong></h1>\r\n<p>Социальные сети предлагают интерактивные диалоги и «вносят существенные и широко распространенные изменения в связи между организациями, сообществами и отдельными лицами".</p>\r\n<p><img src="images/sampledata/joomla/g9_img1.jpg" alt="Социальные сети" width="434" height="500" /></p>\r\n<p><em>Рисунок 1: Социальные сети</em></p>\r\n<p>&nbsp;</p>\r\n<p><strong>Социальные сети</strong> от <strong>Хагена Графа</strong></p>\r\n<p>Мы уверены, что у вас есть аккаунт на Facebook и Google. Может быть и на Twitter, Flickr, Pinterest, Slideshare, LinkedIn, Vimeo и много где еще.</p>\r\n<p>Facebook предлагает создать аккаунт для компаний и частных лиц, у Google для этих целей есть Google+. Можно вставить слайд-шоу через Slideshare, фотографии через Flickr, видео с помощью YouTube и Vimeo и даже твиты из Twitter. Эти услуги предлагают значки, которые можно интегрировать в Joomla с iframe (Подробнее о вложении iframe в статьи Joomla в главе 6 - <a href="index.php?option=com_content&amp;view=article&amp;id=1751:sozdanie-kontenta&amp;catid=222&amp;Itemid=193">Контент</a>).</p>\r\n<p><br />Большинство из этих услуг являются смесью социальных сетей и облачных технологий, основанного на хостинге файлов. Скриншоты из этих книг хранятся на Flickr (<a href="http://www.flickr.com/photos/hagengraf/sets/72157631559834633" target="_blank">http://www.flickr.com/photos/hagengraf/sets/72157631559834633</a>)</p>\r\n<p>&nbsp;</p>\r\n<p>Существует два способа получить доступ к данным в этих сетях. Одним из них является «iframe путь», а другой "API путь". API является программным интерфейсом, где используются некоторые расширения Joomla, например, Facebook API для осуществления входа в Facebook. Ядро Joomla содержит плагин, который называется Authentication -GMail «Расширения → Управление Plug In» (Extensions → Plug InManager). Он предлагает аутентификацию пользователей с GMail / аккаунта Googlemail.</p>\r\n<p>Вообще мы считаем, что полезно будет создать контент на своем сайте и используя социальные сети, для того, чтобы рассказать о нем и дать ссылку.</p>\r\n<h2><strong>Облачные технологии</strong></h2>\r\n<p>Облачные технологии представляют собой использование вычислительных ресурсов (аппаратное и программное обеспечение) и доставляются как сервис через Интернет. Название происходит от использования символа в форме облака, как абстракция сложной инфраструктуры.</p>\r\n<p><img src="images/sampledata/joomla/g9_img2.jpg" alt="Облачные технологии" width="500" height="452" /></p>\r\n<p><em>Рисунок 2 – Облачные технологии&nbsp;</em></p>\r\n<p>&nbsp;</p>\r\n<p>Вы также можете использовать облачные сервисы для размещения установки Joomla. Все больше хостинговых компаний начинают предлагать установку Joomla в облаке.</p>\r\n<p>Предполагаем, облачные технологии будут полезны в основном тем, чей контент «прост в обслуживании». Вы просто должны убедиться, что содержимое возможно экспортировать легким способом, если вы хотите сменить провайдера облачных вычислений.</p>\r\n<p><em>&nbsp;</em></p>\r\n<p><em>Хаген Граф</em></p>', 1, 26, '2014-03-15 22:48:19', 445, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2014-03-15 22:48:19', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 8, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(96, 223, '8. Расширения', 'rasshirenija', '<p>Как вы уже заметили, Joomla 3 выпускается с большим количеством встроенных расширений. Как посетителя сайта, расширения не интересуют, вы пользуетесь ими, пока они работают. Однако, как администратор, вы должны точно знать, что происходит. Мы уже рассмотрели несколько Joomla! расширения, например, расширение контента, которое позволяет писать и управлять статьями, а также по-разному публиковать их на сайте. Пользовательское расширение относится к пользователям, расширение категорий – к категориям и так далее.</p>\r\n', '\r\n<p>В меню «Компоненты» вы увидите «Баннеры», «Контакты», «Обновление Joomla!»,«Сообщения»,«Ленты новостей», «Перенаправление», «Поиск», «Smart Search» и «Веб-ссылки». Мы коротко расскажем об этих компонентах, включая соответствующие модули и плагины.</p>\r\n<h2><strong>Баннеры</strong></h2>\r\n<p>«Баннеры» компонент предоставляющий возможность отображения рекламных баннеров на вашем сайте. Баннер может состоять из графики или кода HTML. Каждый раз при запуске сайта пользователи будут видеть новый баннер из коллекции баннеров. Каждый баннер содержит ссылку, при переходе по которой, пользователь попадает на сайт заказчика. Компонент «Баннеры» предлагает клиента, категорию и администрирование баннера, а также подробный анализ.</p>\r\n<p>Подробнее об этом компоненте вы можете прочесть на нашем сайте (Joomla 2.5).</p>\r\n<h2><strong>Контакты</strong></h2>\r\n<p>Каждый сайт нуждается в контактной форме. Вам может понадобиться одна, а иногда и несколько таких форм, в зависимости от направления бизнеса владельца сайта. Сайту компании с несколькими отделами, вероятно, потребуются контактные формы для каждого отдела, сотрудника или учетной записи. Все это можно сделать с помощью компонента «Контакты» &nbsp;Joomla!.</p>\r\n<p>Читайте описание данного контакта на нашем сайте &nbsp;(Joomla 2.5).</p>\r\n<h2><strong>Обновление Joomla</strong></h2>\r\n<p>Здесь можно определить, какая часть Joomla будет привязана к автоматической системе обновления. Вы можете выбрать долгосрочную или стандартную поддержку, тестовую или полностью настроенную версию.</p>\r\n<h2><strong>Обмен сообщениями</strong></h2>\r\n<p>Обмен сообщениями - это встроенная внутренняя система для обмена личными сообщениями между пользователями, а также один из основных компонентов Joomla. Эта система позволяет отправлять и получать сообщения от других пользователей, которые имеют доступ к области администрирования. Обмен сообщениями прост в использовании, однако пользователи часто забывают о необходимости настроить этот компонент, для этого нужно перейти в Компоненты → Сообщения → Мои настройки (Components → Messages →My Settings). Вы можете настроить систему так, чтобы она оповещала вас о новом сообщении по электронной почте.</p>\r\n<h2><strong>Ленты новостей</strong></h2>\r\n<p>Ленты новостей очень удобны. Можно подписаться на различные виды новостей и информации. К сожалению, даже сегодня, люди часто не используют их по каким-то необъяснимым причинам. Тридцать лет назад нужно было покупать и читать газеты, для того чтобы узнавать новости. Пятнадцать лет назад вы открывали браузер и посещали один сайт за другим с той же целью. И сегодня можно это делать, но проще будет использовать новостные ленты. Google Reader, и динамические закладки на панели инструментов вашего браузера (например, Firefox) довольно популярны. Новостные ленты Joomla являются таким же инструментом. Компонент ленты новостей позволяет собирать новости с других сайтов и опубликовать его на своем сайте.</p>\r\n<p>В современном мире социальных медиа, наверное, каждый человек имеет множество учетных записей. Чаще всего, видео и изображения хранятся на youtube.com и flickr.com. В компании ситуация еще более сложная. Представьте себе, как много информации доступно в ленте новостей о таком проекте, как Joomla! или о вашей компании.&nbsp;</p>\r\n<h2><strong>Перенаправления</strong></h2>\r\n<p>Менеджер перенаправлений - замечательная идея. Он перенаправляет посетителей на существующую страницу, когда они пытаются получить доступ к странице, которой не существует. Вполне возможно, что эта страница существовала раньше и была добавлена в индекс поиска в поисковой системе или кто-то хранил ее на другом сайте. Эта проблема обычно возникает после повторного запуска сайта.</p>\r\n<p>Компонент перенаправления очень удобен. Если кто-то пытается получить доступ к пути, который не существует, Joomla! покажет «404 -страница не найдена» и одновременно создаст новую запись в менеджере перенаправления. Это упрощает задачу администратора - проверять нерабочие страницы.</p>\r\n<h2><strong>Поиск</strong></h2>\r\n<p>Пользователям вашего сайта может понадобиться поиск.</p>\r\n<p>Joomla! использует полнотекстовый поиск по умолчанию. Полный текст означает, что Joomla! будет искать все ключевые слова, которые вы введете в поле поиска непосредственно в базе данных.</p>\r\n<p>Для большинства это может показаться очевидным, но это не так. Многие поисковые системы ищут слова, используемые на своем сайте. Во время фактического поиска, поисковой индекс просматривает совпадения. Совпадения связаны с фактическим контентом. Страница результатов поиска основана на этих совпадениях и ссылках.</p>\r\n<p>Поиск через индекс быстрее, чем полнотекстовый, но индекс нужно обновлять с каждым изменением сайте, в противном случае новое содержание может быть не найдено. Для того, чтобы компенсировать преимущество в производительности индексного поиска, Joomla! легко настраивается.</p>\r\n<h2><strong>Smart Search</strong></h2>\r\n<p>Smart Search был новой функцией в Joomla 2.5 и стал еще лучше в Joomla 3.0</p>\r\n<p>Он содержит «более умный» поисковой движок, более гибкий и быстрый, который включает в себя авто-завершение и функцию «did you mean…» (морфологический поиск или Stemmer).</p>\r\n<p><em><strong>Stemmer?</strong></em></p>\r\n<p><em>Например, нужно определить строку со словом «коты». Поиск выдаст строки, в которых есть однокоренные слова («котики», «котята» и&nbsp;т.д.) на основе корня «кот». Алгоритм морфологического поиска сводится к поиску однокоренных слов: «рыбалка», «рыболов» - корень слова "рыба"(Wikipedia).</em></p>\r\n<p><em>&nbsp;</em><br />Пакет Joomla поставляется с английским морфологическим поиском Snowball Stemmer «Расширения → Smart Search → Опции» (Extensions→Smart Search → Options). Snowball требует расширения Stem PHP и поддерживает 14 языков, включая датский, немецкий, английский, испанский, финский, французский, венгерский, итальянский, норвежский, голландский, португальский, румынский, русский, и турецкий. Данные должны быть проиндексированы для того, чтобы получить эту гибкость и скорость.</p>\r\n<h2><strong>Веб-ссылки</strong></h2>\r\n<p>С компонентом веб-ссылок, вы можете создать список ссылок или раздел загрузок для сайта. Для этого, Joomla! предоставляет систему вложенных категорий и подсчитывает отдельные попадания по ссылкам. Этот компонент полезен для каталогов ссылок. Добавьте столько категорий веб-ссылок, сколько вам требуется, создайте столько веб-ссылок, сколько необходимо, а затем подключите как по назначенным категориям. Добавьте ссылку в меню, выберите макет и настройте параметры.</p>\r\n<h2><strong>Сторонние расширения</strong></h2>\r\n<p>В каталоге расширений Joomla (http://extensions.joomla.org/) находятся более 10.000 расширений для улучшения веб-сайта с различными функциями.<br />С Менеджером Расширений «Расширения → Менеджер расширений» (Extensions → Extension Manager), вы можете устанавливать, обновлять, открывать и управлять расширениями прямо из вашей «админки» Joomla.</p>\r\n<h2><strong>Управление расширениями</strong></h2>\r\n<p>Вы можете установить расширение тремя различными способами (рис. 1):</p>\r\n<ol>\r\n<li><strong>Загрузка пакета файлов</strong>\r\n<p>Если вы скачали ZIP файл на компьютер, который содержит расширение Joomla!, можете использовать эту опцию, чтобы загрузить и установить расширение.</p>\r\n</li>\r\n<li><strong>Установка из директории</strong>\r\n<p>Если вы загрузили ZIP файл в корневой каталог документов на веб-сервер, который содержит расширение Joomla!, можете использовать эту опцию для извлечения и установки вашего расширения.</p>\r\n</li>\r\n<li><strong>Установка через URL</strong>\r\n<p>Если вы знаете адрес ZIP файла, который содержит расширение Joomla!, можете использовать эту опцию для загрузки, извлечения и установки расширения.</p>\r\n</li>\r\n</ol>\r\n<p>&nbsp;</p>\r\n<p><img src="images/sampledata/joomla/g8_img1.jpg" alt="Установка расширений" width="500" height="210" /></p>\r\n<p><em>Рисунок 1: Установка расширений</em></p>\r\n<p><br />Существуют экраны для обновления, управления (отключение, удаление) и установки языков.</p>\r\n<p><br />В появившемся окне можно отметить расширения, которые не установились автоматически. Используя эту возможность, вы можете закачать файлы прямиком на FTP или SFTP-сервер. Загрузите их в нужный каталог и установите соответствующие расширения.</p>\r\n<p>&nbsp;</p>\r\n<p><em>Хаген Граф</em></p>', 1, 26, '2014-03-15 22:48:36', 445, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2014-03-15 22:48:36', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 7, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(97, 224, '7. Отображение контента', 'otobrazhenie-kontenta', '<p>После того как вы создали контент, следует подумать о том, как он будетот ображаться. Звучит незамысловато, но это очень важно.</p>\r\n<p>В последней главе мы создали статью и поместили ее на главной странице. Только там посетители смогут ее увидеть.</p>\r\n', '\r\n<h1><strong>Главная страница</strong></h1>\r\n<p>Стандартная главная страница (Home) во вкладке «Меню» содержит пункт «Избранные статьи». Когда вы входили в главное меню через «Меню→ Менеджер меню» (Menus → Menu Manager), вы, вероятно, замечали маленький символ «домика». Это означает, что данное меню содержит ссылку на главную страницу (рис. 1).</p>\r\n<p>&nbsp;</p>\r\n<p><img src="images/sampledata/joomla/g7-img1.jpg" alt="Главное меню с ссылкой для главной страницы" width="500" height="149" /></p>\r\n<p><em>Рисунок 1: Главное меню с «домашней» ссылкой</em></p>\r\n<p>&nbsp;</p>\r\n<p>При редактировании «главной страницы» вы можете воспользоваться различными вариантами конфигураций. Пункт меню "тип" избранных статей предлагает 4 варианта: ведущие статьи, вводные статьи, колонки и ссылки. Чтобы понять, как это работает, нам понадобиться несколько статей. Для простоты, достаточно просто скопировать первую статью. Сделать это можно в окне сохранения и в окне пакетной обработки. Выберите статью, которую вы хотите скопировать, нажмите «Пакетная обработка» (рис. 2).</p>\r\n<p>&nbsp;</p>\r\n<p><img src="images/sampledata/joomla/g7_img2.jpg" alt="Копирование статей в серии" width="500" height="344" /></p>\r\n<p><em>Рисунок 2: Копирование статей в серии</em></p>\r\n<p><em>&nbsp;</em><br />Если у вас более 4-5 статей (не забудьте добавить их в «избранное»), можете опробовать другие варианты. Перейдите к «Меню → Главное меню → Главное» (Menus → Main Menu→ Home) и посмотрите на вкладку Дополнительные параметры (AdvancedOptions). Вы можете посмотреть 1 ведущую статью, 3 вводных статьи и 3 колонки (рис. 3).</p>\r\n<p>&nbsp;</p>\r\n<p><img src="images/sampledata/joomla/g7_img3.jpg" alt="Макет ссылки Главного меню" width="500" height="320" /></p>\r\n<p><em>Рисунок 3: Макет ссылки Главного меню</em></p>\r\n<p><em>&nbsp;</em></p>\r\n<p>На главной странице это выглядит как на рисунке 4.</p>\r\n<p><img src="images/sampledata/joomla/g7_img4.jpg" alt="Главная страница по умолчанию" width="500" height="354" /></p>\r\n<p><em>Рисунок 4: Главная страница по умолчанию</em></p>\r\n<p>&nbsp;</p>\r\n<h2><strong>Категории и ссылки меню</strong></h2>\r\n<p>Joomla предлагает две возможности для структурирования контента: Категории и Ссылки меню. Каждая статья относится к одной категории, которая может быть вложенной. Ссылки меню могут вести на статьи, или на категории, или они могут вести на группу из нескольких статей, например, избранные статьи с главной страницы. Эта простая и легко расширяемая структура предлагает удивительные способы отображения контента.</p>\r\n<p>Как вы знаете, шаблоны Joomla! предлагают позиции (места, где вы можете разместить свой контент и элементы навигации).<br />Отображение контента Joomla определяется расположением модулей и компонентов на предопределенных позициях шаблонов. Каждая страница может иметь только один компонент и неограниченное количество модулей.</p>\r\n<ul>\r\n<li>Категории создаются и управляются через «Контент → Категории»(Content → Categories).</li>\r\n<li>Меню создается, управляется и наполняется ссылками в «Меню→ Менеджер меню» (Menus → Menu Manager) (подробнее о создании меню в главе 5 – Все о пользователях, разрешениях, модулях и статьях).</li>\r\n</ul>\r\n<h2><strong>Навигация на вершине</strong></h2>\r\n<p>У пустой страницы Joomla есть «Главное меню» в позиции- 7 в шаблоне по умолчанию. Мы используем шаблон Protostar, и там оно находится в позиции- 7 в правой боковой панели, но мы хотим, чтобы оно находилось вверху. Для этого перейдите к «Расширения → Менеджер модулей →Главное меню» (Extensions → Module Manager → Main Menu) и переместите его в позицию- 1. Во вкладке «Параметры» измените суффикс класса меню на «nav-pills» (изначально там пробелы!) (Рис. 5).</p>\r\n<p>&nbsp;</p>\r\n<p><img src="images/sampledata/joomla/g7_img5.jpg" alt="суффикс класса меню" width="500" height="208" /></p>\r\n<p><em>Рисунок 5: Суффикс класса меню</em></p>\r\n<p>&nbsp;</p>\r\n<p>Это изменит атрибуты класса в HTML коде, и, когда все будет правильно,Ваша навигация должна выглядеть как на рисунке 6.</p>\r\n<p><img src="images/sampledata/joomla/g7_img6.jpg" alt="навигация главного меню" width="500" height="162" /></p>\r\n<p><em>Рисунок 6: Навигация главного меню</em></p>\r\n<p>&nbsp;</p>\r\n<p>Статьи в категории могут быть отображены в «стиле блога», как на главной странице, или в виде таблиц статей. Оба легко конфигурируются. Вам просто нужно проверить несколько типов пунктов меню.<br />С помощью нескольких этих инструментов вы сможете создавать прекрасные макеты.<em><br /></em></p>\r\n<p>&nbsp;</p>\r\n<p><em>Хаген Граф</em></p>', 1, 26, '2014-03-15 22:49:44', 445, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2014-03-15 22:49:44', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 6, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', '');
INSERT INTO `f8ad7_content` (`id`, `asset_id`, `title`, `alias`, `introtext`, `fulltext`, `state`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`) VALUES
(98, 225, '6.  Создание контента', 'sozdanie-kontenta', '<p>Создать контент нелегко! Каждая его часть – это история. История эта может быть хорошей или не очень, может привлекать посетителей, а может заставить скучать. Тысячи книг и еще больше людей пытались и пытаются обучать других писательскому ремеслу.</p>\r\n<p>Наша задача довольно проста - раскрыть только техническую часть.</p>\r\n', '\r\n<h2><strong>Что такое статья в Joomla? </strong></h2>\r\n<p>&nbsp;</p>\r\n<p>Технически, статья состоит из:</p>\r\n<ul>\r\n<li>название (заголовок) и алиас (в URL)</li>\r\n<li>текст (сочетание текста, изображений и других медиа)</li>\r\n<li>категории, к которой относится статья</li>\r\n<li>автора и алиас автора</li>\r\n<li>права доступа</li>\r\n<li>язык, на котором написана статья</li>\r\n<li>мета-данных для поисковых систем и других роботов</li>\r\n</ul>\r\n<p>и многих вариантов как, где, кому и когда видна статья.</p>\r\n<p>Вы уже создали статью в последней главе, и это было не сложно. Необходим только заголовок, все другие поля имеют значение по умолчанию или являются необязательными.</p>\r\n<p>Давайте пройдемся по этому списку.</p>\r\n<p>&nbsp;</p>\r\n<h3><strong>Название </strong></h3>\r\n<p>&nbsp;Это небольшая, но важная часть.</p>\r\n<ul>\r\n<li>Оно должно быть четким и коротким, чтобы привлекать читателей. Для вас это тоже удобно, потому что название появляется в списках статей на сайте панели управления.</li>\r\n<li>Название выступает в качестве заголовка страницы в верхней части окна браузера и может содержать название сайта. Вы можете настроить это в «Система → Общие настройки → Сайт→ Параметры SEO → Включать название сайта в заголовках» (System → Global Settings → Site → SEO settings → Include Site Name in Page Titles)</li>\r\n<li>Оно может появиться в адресе этой страницы, для этого нужно настроить URL: «Система → Общие настройки → Сайт → Параметры SEO» (System → Global Settings → Site → SEO settings)</li>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<h3><strong>Текст </strong></h3>\r\n<p>В Joomla, текст вашей статьи состоит из части, которая отображаются в списках (тизер), и остатка статьи.</p>\r\n<p>Создавать статью вы будете с помощью редактора. В Joomla используется текстовый редактор (TinyMCE), а значит, что вам, как автору, нет необходимости изучать HTML теги. Редактор выглядит как окно текстового редактора на компьютере (например, Word, LibreOffice), со знакомыми вам значками (рис. 1).</p>\r\n<p><img src="images/sampledata/joomla/g6_1.jpg" alt="g6_1" width="500" height="209" /></p>\r\n<p><em>Рисунок 1: Текстовый редактор</em></p>\r\n<p>&nbsp;</p>\r\n<p>При наведении курсора на значок с помощью мыши, появится текст-подсказка, который расскажет вам, для чего нужен этот значок.</p>\r\n<p><em>Примечание: </em></p>\r\n<p>&nbsp;</p>\r\n<p><em>Можно установить различные редакторы, например, <em>Joomla Content Editor</em>, а можно не использовать редактор вовсе. Joomla сама поставляется с двумя редакторами, и вы можете настроить их по умолчанию в «Система → Общие конфигурации → Сайт → Редактор по умолчанию» (System → Global Configuration → Site → Default Editor). </em></p>\r\n<p>&nbsp;</p>\r\n<p><em>Настройки по умолчанию позволяют пользователям сделать выбор между имеющимся редактором или самостоятельным редактированием в своей учетной записи. Вы можете отключить эту функцию в «Пользователи → Управление пользователями → Функции → Параметры пользователей» (Users → Users Manager → Options → Frontend User Parameters). </em></p>\r\n<p>&nbsp;</p>\r\n<h3><strong>Вставить</strong><strong>слово</strong></h3>\r\n<p>Худший способ отредактировать статью – делать вставки из таких программ, как Microsoft Word. До сих пор нет реального способа получить тот же формат для веб-сайта, основанного на HTML, путем вставки из текстового процессора, основанного на двоичном формате или усложненном XML. В редакторе есть значок «Редактировать код», но он не будет убирать логические ошибки или различия в разметке.</p>\r\n<p>&nbsp;</p>\r\n<h3><strong>Вставить изображение </strong></h3>\r\n<p>&nbsp;</p>\r\n<p>В окне редактора, внизу, находится кнопка «Изображения». Она открывает диалоговое окно для выбора существующих изображений из встроенной библиотеки изображений Joomla и позволяет добавлять изображения из этой библиотеки, загружая их.</p>\r\n<ul>\r\n<li>Вы можете управлять вашей библиотекой через «Контент → Медиа менеджер» (Content → Media Manager)</li>\r\n<li>Вы можете загрузить более одного файла, если включите Flash Uploader через «Контент→ Медиа менеджер → Функции → Включить Flash Uploader» (Content → Media Manager → Options → Enable Flash Uploader)</li>\r\n<li>Joomla не будет изменять размеры изображений, поэтому будьте осторожны с большими фотографиями! Лучшее решение: ваши изображения имеют в пикселях точно такой размер, в каком вам бы хотелось видеть их на своем сайте. Существует несколько расширений для решения вопроса размера, и рамки Twitter Bootstrap, которые используется в Joomla.</li>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<p>После того как вы вставили изображение из библиотеки, можно настроить (добавить атрибуты) его, нажав на значок изображения в верхней части текстового редактора (рис. 2)</p>\r\n<p><img src="images/sampledata/joomla/g6_2.jpg" alt="g6_2" width="500" height="321" /></p>\r\n<p><em>Рисунок 2: Использование текстового редактора</em></p>\r\n<p>&nbsp;</p>\r\n<h3><strong>Ссылки на другие статьи </strong></h3>\r\n<p>Кнопка «Статья» внизу редактора позволяет перейти по ссылке от статьи к другой статье, что весьма полезно.</p>\r\n<p>&nbsp;</p>\r\n<h3><strong>Подробнее</strong></h3>\r\n<p>Статьи будут отображаться в виде списка с вводным текстом и на страницах где они опубликованы. Вступительный текст должен быть ограничен, чтобы избежать путаницы. С помощью кнопки «Подробнее» внизу редактора, ограничьте текст статьи. Установите курсор в тексте, где хотите расположить кнопку, затем нажмите «Подробнее» (рис. 3)</p>\r\n<p><img src="images/sampledata/joomla/g6_3.jpg" alt="g6_3" width="500" height="248" /></p>\r\n<p><em>Рисунок 3: Кнопка «Подробнее»</em></p>\r\n<p>&nbsp;</p>\r\n<p><strong><em>Вставить видео из YouTube </em></strong></p>\r\n<p>&nbsp;</p>\r\n<p>Это касается не только видео из YouTube, но и текстовых фильтров. Если попытаться встроить видео YouTube с типичным кодом</p>\r\n<p>&nbsp;</p>\r\n<p><img src="images/sampledata/joomla/g6_kod.jpg" alt="стандартный код YouTube" width="434" height="99" /></p>\r\n<p>&nbsp;</p>\r\n<p>Вы заметите, что он фильтруется редактором и Joomla. Это не ошибка! Это особенность.</p>\r\n<p>&nbsp;</p>\r\n<p>Из соображений безопасности</p>\r\n<ul>\r\n<li><samp>Joomla использует так называемые текстовые фильтры, «Система → Общие настройки → Текстовые фильтры» (System → Global Configuration → Text Filters), для фильтрации следующих тегов:</samp><em>&lt;applet&gt;, &lt;body&gt;, &lt;bgsound&gt;, &lt;base&gt;, &lt;basefont&gt;, &lt;embed&gt;, &lt;frame&gt;, &lt;frameset&gt;, &lt;head&gt;, &lt;html&gt;, &lt;id&gt;, &lt;iframe&gt;, &lt;ilayer&gt;, &lt;layer&gt;, &lt;link&gt;, &lt;meta&gt;, &lt;name&gt;, &lt;object&gt;, &lt;script&gt;, &lt;style&gt;, &lt;title&gt;, и &lt;xml&gt;</em>.</li>\r\n<li><samp>TinyMCE тоже фильтрует некоторые теги:&nbsp;&nbsp;</samp><em>&lt;applet&gt;, &lt;object&gt;</em> и <em>&lt;iframe&gt;</em></li>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<p>К сожалению, нам нужно вставить тег для встраивания видео из YouTube.</p>\r\n<p>&nbsp;</p>\r\n<h3><strong>Так что же делать? </strong></h3>\r\n<p>Одним из решений могло бы стать доверие своим авторам и создание собственного черного списка «Система → Общие настройки → Текстовые фильтры» (System → Global Configuration → Text Filters) для группы авторов (рис. 4). Затем выставить в TinyMCE , что &nbsp; тег больше «не является злом» через «Расширение → Управление Plug-In → Редактор TinyMCE → Изменить → Основные параметры → Запрещенные элементы» (Extensions → Plug-in Manager → Editor-TinyMCE → Edit → Basic Options → Prohibited Elements), исключив слово iframe из запрещенных элементов.</p>\r\n<p><img src="images/sampledata/joomla/g6_4.jpg" alt="g6_4" width="500" height="314" /></p>\r\n<p><em>Рисунок 4: Черный список для группы авторов</em></p>\r\n<p><em>&nbsp;</em></p>\r\n<p>После того как вы изменили механизм фильтра, можно скопировать и вставить код в свою статью. Имейте в виду, что вам нужно, чтобы переключить редактор режим HTML, щелкнув значок HTML. Впоследствии появится всплывающее окно с HTML кодом статьи. Теперь вставьте код туда, где должно располагаться видео (рис. 5).</p>\r\n<p><img src="images/sampledata/joomla/g6_5.jpg" alt="g6_5" width="500" height="324" /></p>\r\n<p><em>Рисунок 5: Установка кода iframe в статье</em></p>\r\n<p>&nbsp;</p>\r\n<p>Нажмите на кнопку обновления, и вы сможете посмотреть видео в окне редактора. После сохранения статьи, видео появится на вашем сайте (рис. 6).</p>\r\n<p><img src="images/sampledata/joomla/g6_6.jpg" alt="g6_6" width="500" height="311" /></p>\r\n<p><em>Рисунок 6: Установка кода iframe в статье</em></p>\r\n<p>&nbsp;</p>\r\n<p>Теперь вы можете вставлять код из нескольких платформ, таких как Twitter, Facebook и Flickr.</p>\r\n<p>&nbsp;</p>\r\n<h3><strong> Использование макросов в тексте</strong></h3>\r\n<p>Можно использовать в тексте так называемые макросы. Макрос представляет собой выражение или команду, которая заменяется на что-то другое (например, код для вашего видео из YouTube).</p>\r\n<p>Теоретически, мы могли бы написать в тексте нашей статьи (не в HTML) что-то вроде этого</p>\r\n<p>&nbsp;</p>\r\n<p>[YouTube = <a href="http://www.youtube.com/watch?v=rX372ZwXOEM">http://www.youtube.com/watch?v=rX372ZwXOEM</a>]</p>\r\n<p>&nbsp;</p>\r\n<p>и магическим образом могли бы заменить это на соответствующий код для вставки</p>\r\n<p>&nbsp;</p>\r\n<p>http://www.youtube.com/embed/rX372ZwXOEM" frameborder="0" allowfullscreen&gt;</p>\r\n<p>&nbsp;</p>\r\n<p>Проблема только в том, что это преобразование не является частью основного пакета Joomla. Если вы хотите использовать макросы, необходимо установить дополнительные плагины.</p>\r\n<p>&nbsp;</p>\r\n<h3><strong>Контент в модуле? </strong></h3>\r\n<p>Когда мы создавали статьи, мы использовали содержание компонентов Joomla. Еще одной возможностью для создания контента может стать модуль.</p>\r\n<p>Модуль представляет собой компонент контента, который может быть размещен на сайте. Для отображения меню, например, нужен модуль. Вы можете создать столько модулей с заранее заданными функциями, сколько вам нужно, и расположить их в определенную область шаблона. Joomla поставляется с 24 предопределенными модулями. Вы можете увидеть их описание в разделе «Расширения → Управление модулями → Новое» (Extensions → Module Manager → New) (рис. 7).</p>\r\n<p><img src="images/sampledata/joomla/g6_7.jpg" alt="g6_7" width="500" height="260" /></p>\r\n<p><em>Рисунок 7: Доступные модули</em></p>\r\n<p>&nbsp;</p>\r\n<p>Можно создать модуль, который содержит текст HTML, как статья (настраиваемый HTML модуль).</p>\r\n<p>Контент в настраиваемом HTML&nbsp;модуле, не предназначен для создания «обычным» автором. Создание контента в модуле, задача больше для «Менеджера» или «Администратора».</p>\r\n<p>&nbsp;</p>\r\n<p>Попробуйте модуль Custom HTML. Создайте, добавьте контент и настройте позиции (рис. 8).</p>\r\n<p><img src="images/sampledata/joomla/g6_8.jpg" alt="g6_8" width="500" height="319" /></p>\r\n<p><em>&nbsp;Рисунок 8: Настраиваемый HTML модуль в панели управления</em></p>\r\n<p>&nbsp;</p>\r\n<p>Вы можете использовать текстовый редактор и все функции, которые доступны для записи, форматирования и улучшения текста статьи. Даже можете настроить страницу, на которой должен появиться модуль (вкладка Назначения меню), и когда он появится (время публикации).</p>\r\n<p>После сохранения, настраиваемый модуль HTML появится на сайте (рис. 9).</p>\r\n<p><img src="images/sampledata/joomla/g6_9.jpg" alt="g6_9" width="500" height="436" /></p>\r\n<p><em>Рисунок 9: Настраиваемый модуль HTML на веб-сайте</em></p>\r\n<p>&nbsp;</p>\r\n<p>Если в одном месте находится больше одного модуля, необходимо расположить их в нужном порядке. Просто перетащите модуль в «управление модулями» в желаемое место (рис. 10).</p>\r\n<p><img src="images/sampledata/joomla/g6_10.jpg" alt="g6_10" width="500" height="243" /></p>\r\n<p><em>Рисунок 10: Сортировка модулей</em></p>\r\n<p><em>&nbsp;</em></p>\r\n<p><em>Хаген Граф</em></p>', 1, 26, '2014-03-15 22:50:08', 445, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2014-03-15 22:50:08', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 5, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(99, 226, '5. Пользователи и их статьи', 'vse-o-polzovateljah-razreshenijah', '<p>Знаем, на нашем сайте еще нет контента, но прежде чем мы создадим его, давайте посмотрим на учетные записи нашего нового веб-сайта Joomla.</p>\r\n', '\r\n<p>При установке Joomla, вы создали учетную запись Супер Администратора. Этот пользователь может делать на сайте все. Быть таким пользователем хорошо, но опасно. Вероятно, на вашем сайте имеется более одной учетной записей. Давайте создадим платформу для авторов, где они смогут размещать статьи и загружать изображения без необходимости входа в панель управления Joomla.</p>\r\n<p>&nbsp;</p>\r\n<h2><strong>О пользователях, их роли и правах доступа </strong></h2>\r\n<p>Прежде чем мы начнем, важно знать следующее:</p>\r\n<ul>\r\n<li>В общем, Интернет-пользователь сможет войти в интерфейс и/или панель управления только в зависимости от прав доступа.</li>\r\n<li>Учетная запись пользователя должна быть частью пользовательской группы. Вместо того чтобы назначать права каждому пользователю, они назначаются группе. Потом индивидуальный пользователь присваивается одной или нескольким группам. Представьте, что у вас есть 10.000 пользователей в четырех разных группах. Администратору будет легко изменить права доступа для каждой из групп. Без группы придется изменять каждую учетную запись пользователя вручную. Однако, при использовании групп, вы должны изменить права всего один раз!</li>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<p>Joomla поставляется с предопределенным группами, такими, как автор и издатель, которые легко понять. Автор может создать / написать что-то, а издатель имеет дополнительные разрешения на публикацию содержания.</p>\r\n<ul>\r\n<li>Предопределенными группами пользователей интерфейса являются: посетители, зарегистрированные пользователи, авторы, редакторы, издатели</li>\r\n<li>Предопределенными группами пользователей панели управления являются: менеджер, администратор, супер администратор</li>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<h2><strong>Пример: сайт, где авторы могут размещать статьи </strong></h2>\r\n<p>Это очень простой рабочий процесс, но он охватывает много возможностей, которые существуют в Joomla. Представим, что у вас есть «пустая» Joomla без демонстрационных данных и учетная запись супер администратора.</p>\r\n<p>&nbsp;</p>\r\n<h3><strong>Запланированный сценарий </strong></h3>\r\n<p>Администратор на панели управления:</p>\r\n<p>- активирует оповещение, когда кто-то создает новую учетную запись</p>\r\n<p>- создает пользовательское меню для зарегистрированных пользователей со ссылкой на создание статьи</p>\r\n<p>Посетитель сайта:</p>\r\n<p>- регистрируется в качестве нового пользователя</p>\r\n<p>Администратор на панели управления:</p>\r\n<p>- получает уведомление и назначает пользователя в группу авторов</p>\r\n<p>Автор на сайте:</p>\r\n<p>- способен создавать статьи, но не имеет права публиковать их</p>\r\n<p>Администратор на панели управления:</p>\r\n<p>- получает уведомление о новом контенте</p>\r\n<p>- публикует статьи на главной странице</p>\r\n<p>&nbsp;</p>\r\n<h3><strong>1. Уведомление администратора по электронной почте и пользовательское меню </strong></h3>\r\n<p>Перейдите к Пользователь → Управление пользователями → Опции (Users → User Manager → Options) и активируйте уведомление администратора по почте (рис. 1).</p>\r\n<p><em><img src="images/sampledata/joomla/g5_1.jpg" alt="g5_1" width="500" height="345" /></em></p>\r\n<p><em>Рисунок 1: Получение уведомления для администратора по почте</em></p>\r\n<p>&nbsp;</p>\r\n<p>Перейти к Меню → Управление меню (Menus → Menu Manager) и создайте новое меню:</p>\r\n<ul>\r\n<li>Статус: Пользователь</li>\r\n<li>Тип Меню: пользователь</li>\r\n<li>Описание: меню для пользователей с полезными ссылками</li>\r\n</ul>\r\n<p>Сохраните и закройте его. Вы создали своего рода контейнер для меню. Чего не хватает, так это ссылок внутри контейнера и связанных модулей, которые бы отображали новое меню в определенной позиции в шаблоне.</p>\r\n<p>Чтобы создать и связать модуль, нажмите «Добавить модуль для этого типа меню» (рис. 2)</p>\r\n<p><img src="images/sampledata/joomla/g5_2.jpg" alt="g5_2" width="500" height="177" /></p>\r\n<p><em>Рисунок 2: Добавление модуля</em></p>\r\n<p><em>&nbsp;</em></p>\r\n<p>В форме модуля, вы должны добавить название (меню пользователя), положение (прямо в шаблоне Protostar) и права доступа (для зарегистрированных пользователей). Не забудьте сохранить и закрыть его (рис. 3).</p>\r\n<p><img src="images/sampledata/joomla/g5_3.jpg" alt="g5_3" width="500" height="250" /></p>\r\n<p><em>Рисунок 3: Создание модуля пользовательского меню</em></p>\r\n<p>&nbsp;</p>\r\n<p>Теперь нам нужно выбрать ссылку «Создать статью» в нашем меню, которое должно быть показано авторам. Перейти к меню → Пользователь → Новый (Menus → User → new) (рис. 4)</p>\r\n<p><img src="images/sampledata/joomla/g5_4.jpg" alt="g5_4" width="500" height="212" /></p>\r\n<p><em>Рисунок 4: Создание ссылки в меню пользователя</em></p>\r\n<p>&nbsp;</p>\r\n<p>В следующей форме вы должны ввести имя/описание ссылки (название пункта меню), выбрать тип пункта меню (рис. 5) и ограничить доступ для зарегистрированных пользователей. Каждый компонент Joomla может предоставить типы пунктов меню. Наш тип (создать статью) обеспечивает компонент контента, который является частью ядра Joomla.</p>\r\n<p><img src="images/sampledata/joomla/g5_5.jpg" alt="g5_5" width="500" height="313" /></p>\r\n<p><em>Рисунок 5: Выбор типа пункта меню</em></p>\r\n<p>&nbsp;</p>\r\n<p>После того как вы сохранились и закрыли диалоговое окно, новый пункт меню должен отобразиться в списке (рис. 6)</p>\r\n<p><img src="images/sampledata/joomla/g5_6.jpg" alt="g5_6" width="500" height="159" /></p>\r\n<p><em>Рисунок 6: Меню пользователя с новыми пунктами</em></p>\r\n<p>&nbsp;</p>\r\n<p>Проверьте свою работу! Войдите под учетной записью Супер Администратора. После входа в систему, появится наше новое меню пользователя со ссылкой «Создать статью» (рис. 7).</p>\r\n<p><img src="images/sampledata/joomla/g5_7.jpg" alt="g5_7" width="500" height="224" /></p>\r\n<p><em>Рисунок 7: Меню пользователя после входа в систему</em></p>\r\n<p>&nbsp;</p>\r\n<p>Выйдите из системы после проверки.</p>\r\n<p>&nbsp;</p>\r\n<h3><strong>2. Регистрация нового пользователя</strong></h3>\r\n<p>Сейчас создадим новую учетную запись пользователя. Зайдите на сайт как посетитель и перейдите по ссылке «Создать аккаунт». Заполните форму и нажмите на кнопку «Зарегистрировать» (рис. 8).</p>\r\n<p><img src="images/sampledata/joomla/g5_8.jpg" alt="g5_8" width="500" height="272" /></p>\r\n<p><em>Рисунок 8: Регистрационная форма</em></p>\r\n<p>&nbsp;</p>\r\n<p>Если ваш сервер позволяет отправлять электронную почту, уведомление будет отправлено на адрес электронной почты учетной записи Супер Администратора.</p>\r\n<p>Joomla предлагает CAPTCHA для предотвращения распространения спама. Чтобы ее использовать, активируйте плагин CAPTCHA через «Расширения → Плагины» (Extensions → Plugins) и выберите его в опциях «Управление пользователями» (User Manager), где так же сможете настроить общее поведение процесса входа в систему.</p>\r\n<p>&nbsp;</p>\r\n<h3><strong>3. Назначение пользователей в группу авторов </strong></h3>\r\n<p>&nbsp;</p>\r\n<p>Войдите под вашей учетной записью администратора в панель управления, перейдите в «Пользователь → Управление пользователями» (Users → User Manager) и нажмите на имя нового пользователя (Toni Tester). Проверьте Группу Авторов во вкладке «Назначенные пользователи группы» (Assigned User Groups) (рис. 9).</p>\r\n<p><img src="images/sampledata/joomla/g5_9.jpg" alt="g5_9" width="500" height="330" /></p>\r\n<p><em>Рисунок 9: Назначение группы пользователей</em></p>\r\n<p>&nbsp;</p>\r\n<h3><strong>4. Наш новый автор создает статью </strong></h3>\r\n<p>Войдите под вашей учетной записью нового пользователя и нажмите кнопку «Создать статью», просто добавив заголовок и несколько слов, нажмите сохранить (рис. 10).</p>\r\n<p><img src="images/sampledata/joomla/g5_10.jpg" alt="g5_10" width="500" height="302" /></p>\r\n<p><em>Рисунок 10: Создание статьи</em></p>\r\n<p>&nbsp;</p>\r\n<p>Статья сохранена и занесена в базу, но пользователь (вы) не можете ее увидеть, потому, что она не опубликована. Мы намеренно настроили этот рабочий процесс, т.к. желательно, чтобы другой человек редактировал контент, а затем опубликовал его.</p>\r\n<p>&nbsp;</p>\r\n<p>Конечно, можно это пропустить, назначить пользователя в Группу Издателей, и тогда статья будет опубликована сразу.</p>\r\n<p>&nbsp;</p>\r\n<h3><strong>5. Администратор публикует статьи на главной странице </strong></h3>\r\n<p>Joomla поставляется с системой обмена сообщениями, которая создает сообщение, когда новое содержание было создано пользователем. В зависимости от настроек «Компоненты → Сообщения → Опции» (Components → Messaging → Options), администратор получает это сообщение по электронной почте или на экран.</p>\r\n<p>Администратор должен перейти в «Содержание → Управление статьями» (Content → Article Manager) и опубликовать ее. Если статья должна появиться на главной странице, нажмите на «Избранное» (Featured). (Рис. 11, рис. 12).</p>\r\n<p><img src="images/sampledata/joomla/g5_11.jpg" alt="g5_11" width="500" height="155" /></p>\r\n<p><em>Рисунок 11: Публикация статьи</em></p>\r\n<p><img src="images/sampledata/joomla/g5_12.jpg" alt="g5_12" width="500" height="241" /></p>\r\n<p><em>Рисунок 12: Избранная статья</em></p>\r\n<p>&nbsp;</p>\r\n<h2><strong>Окончательная настройка процесса</strong></h2>\r\n<p>В ходе рассмотрения примера, приведенного выше, мы ознакомились со многими темами и конфигурация, которые легко настроить в зависимости от ваших потребностей. Существует огромное количество разрешений, опции и настроек для изучения. мы приведем несколько примеров в главе 8.</p>\r\n<p>&nbsp;</p>\r\n<p><em>Хаген Граф</em></p>', 1, 26, '2014-03-15 22:50:26', 445, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2014-03-15 22:50:26', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 4, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', '');
INSERT INTO `f8ad7_content` (`id`, `asset_id`, `title`, `alias`, `introtext`, `fulltext`, `state`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`) VALUES
(100, 227, '4. Дизайн, Макет, Цвета', 'dizajn-maket-tsveta', '<p>Шаблон - одна из важнейших составных частей сайта. Он обеспечивает внешний вид и дизайн. Это мотивирует новых посетителей оставаться на сайте. Посетители ценят красивый и практичный дизайн. Подумайте о других продуктах, например машине. Автомобиль нуждается в хорошем двигателе и шинах, но одной из самых важных причин для его покупки зачастую является дизайн.</p>\r\n', '\r\n<p>Даже, если дизайн не является основной причиной, он может послужить своеобразным толчком к идее о покупке, а остальные поводы для приобретения покупатель додумает сам. Если дизайн хорошо выполнен, люди ожидают, что все остальное в товаре тоже хорошо. (Рис. 1, Рис. 2).</p>\r\n<p><img src="images/sampledata/joomla/g4_1.jpg" alt="g4_1" width="500" height="375" /></p>\r\n<p><em>Рисунок 1: Автомобиль с наклейками (Richardmasoner)</em></p>\r\n<p><img src="images/sampledata/joomla/g4_2.jpg" alt="g4_2" width="500" height="206" /></p>\r\n<p><em>Рисунок 2: Красный автомобиль (FotoSleuth)</em></p>\r\n<p>&nbsp;</p>\r\n<p>Эти автомобиля предназначены для различных целевых групп. Они являются примером различных подходов к дизайну.</p>\r\n<p>&nbsp;</p>\r\n<h2><strong>Несколько определений</strong></h2>\r\n<p>Хотелось бы уточнить некоторые термины.</p>\r\n<p>&nbsp;</p>\r\n<h3>Что такое дизайн?</h3>\r\n<ul>\r\n<li>«Дизайн» означает план или обрисовку, которые отображают функции и внешний вид объекта для достижения конкретных целей в определенной среде, и удовлетворяют ряду требований.</li>\r\n</ul>\r\n<p>&nbsp;Термин дизайна может быть использован в таких областях как:</p>\r\n<ul>\r\n<li>искусство («почти инстинктивное», «встроенное», «естественное»)</li>\r\n<li>техника (разработка дизайна нового автомобиля)</li>\r\n<li>производство (планирование и выполнение)</li>\r\n<li>моделирование процессов (моделирование бизнес-процессов)</li>\r\n</ul>\r\n<h3>&nbsp;Что такое макет страницы?</h3>\r\n<p>&nbsp;</p>\r\n<p>Макет является частью «графического» дизайна, который заключается в расположении и обработке стиля элементов (контента) на странице. Если говорить на языке Joomla, это расположение модулей и компонентов Joomla в определенных позициях шаблонов.</p>\r\n<p>&nbsp;<br clear="all" /></p>\r\n<h3>Что такое цвета?</h3>\r\n<p>Цветом является визуальное восприятие мира человеком. Отдельные цвета вызывают ассоциации с определенными объектами или ситуациями.</p>\r\n<p>Цвета HTML и CSS могут иметь 16 миллионов различных значений. Сочетание красных, зеленых и синих значений от 0 до 255, дает более 16 миллионов различных цветов (256 х 256 х 256).</p>\r\n<p>Пример: черный цвет = color HEX # 000000 = color RGB rgb (0,0,0)</p>\r\n<p>Некоторые инструменты, такие как генератор цветовых схем, может помочь вам найти правильный цвет для веб-сайта проекта (рис. 3).</p>\r\n<p>&nbsp;</p>\r\n<p><img src="images/sampledata/joomla/g4_3.jpg" alt="g4_3" width="500" height="356" /></p>\r\n<p><em>Рисунок 3: Генератор цветовых схем</em></p>\r\n<h3>Шаблоны</h3>\r\n<p>Шаблон включает в себя повторяющиеся элементы, которые видны посетителям. Шаблоны используются для минимальной модификации фоновых элементов и частых изменений (или замен) содержания переднего плана.</p>\r\n<h3>Веб-дизайн</h3>\r\n<p>&nbsp;</p>\r\n<p>Веб-дизайн - широкий термин, охватывающий много различных навыков и дисциплин, которые используются в сфере производства и обслуживания веб-сайтов.</p>\r\n<p>Необходимы навыки работы в таких областях, как HTML, CSS, JavaScript, PHP, редактирование изображений и многих других.</p>\r\n<p>Joomla! – это ещё один инструмент в арсенале веб-дизайнеров.</p>\r\n<p>&nbsp;</p>\r\n<p>Хороший шаблон Joomla содержит не только цвета и ​​графику. Форма и расположение содержания являются столь же важными. Сайт должен быть удобным и надежным.</p>\r\n<p>Веб-дизайн – молодая профессиональная область. Веб-дизайнеру часто приходится иметь дело с низкой пропускной способностью, несовместимыми браузерами, неопытными редакторами контента и другими людьми, вовлеченными в процесс создания «хорошего» сайта. Создание сайта Joomla! процесс, в котором все участники многому обучаются. Joomla 3 включает в себя библиотеку пользовательского интерфейса и шаблон Protostar.</p>\r\n<p>Хороший веб-дизайн это тяжелый труд!&nbsp;</p>\r\n<p>После того, как сайт заработал на нужном языке, большинство людей начинают настраивать цвета и загружать, например, новый логотип, даже если до сих пор не готов контент. Joomla поставляется с предустановленными шаблонами и, так называемыми, стилями шаблонов. Стиль шаблона представляет собой набор опций таких, как цвет, логотип, макет. Возможности конфигурации зависят от шаблона. Некоторые шаблоны имеют огромное разнообразие настроек, некоторые же наоборот - весьма ограничены.</p>\r\n<p>Можно создать столько стилей, сколько вам угодно, и назначить их на разные страницы сайта.</p>\r\n<p>&nbsp;</p>\r\n<h2><strong>Структура</strong></h2>\r\n<p>Joomla известна своим качеством и простотой. В Joomla страница генерируется из вывода HTML одного компонента, различных модулей и шаблона. Каждая страница доступна с помощью уникального URL. В качестве примера возьмем первую страницу. Компонент контента производит вывод HTML для статей в середине. Это скриншот шаблона Joomla Beez (рис. 4). Блоки рядом со статями - различные модули. Вы можете сочетать вывод HTML одного компонента с выводом HTML любого количества модулей. Эти модули также могут быть использованы на других страницах.</p>\r\n<p><img src="images/sampledata/joomla/g4_4.jpg" alt="g4_4" width="500" height="413" /></p>\r\n<p><em>Рисунок 4: первая страница Joomla!</em></p>\r\n<p>&nbsp;</p>\r\n<h2><strong>Позиции</strong></h2>\r\n<p>Конечно, вы должны знать где на сайте разместить и добавить модули. Для этой цели каждый шаблон содержит так называемые позиции. Для того чтобы увидеть эти позиции необходимо перейти к «Просмотру модуля позиций» (Extensions → Template Manager → Options). После этого, вы можете получить доступ к сайту с помощью параметра tp=1 (<a href="http://localhost/index.php?tp=1">http://localhost/index.php?tp=1</a>) или нажмите на ссылку «Предварительный просмотр в расширениях → Шаблоны → Управление» (Preview link in Extensions → Templates Manager → Manager) (рис. 5).</p>\r\n<p><img src="images/sampledata/joomla/g4_5.jpg" alt="g4_5" width="500" height="258" /></p>\r\n<p><em>Рисунок 5: Template Manager - Шаблоны сайтов</em></p>\r\n<p>&nbsp;</p>\r\n<p>Перед вами подчеркнутые позиции модулей с их именами (рис. 6).</p>\r\n<p><img src="images/sampledata/joomla/g4_6.jpg" alt="g4_6" width="500" height="304" /></p>\r\n<p><em>Рисунок 6: Модуль позиции - Protostar шаблон</em></p>\r\n<p>&nbsp;</p>\r\n<p>В «Расширения → Управление модулями» (Extensions → Module Manager) можно назначить одну из этих позиций для каждого модуля. Если вам необходим модуль на разных позициях, можете его скопировать.</p>\r\n<h2><strong>Основные шаблоны</strong></h2>\r\n<p>Joomla! выпускается с двумя шаблонами сайта и двумя шаблонами администратора. Вы можете сделать предварительный просмотр в Расширения → Управление шаблонами → Шаблоны (Extensions → Template Manager → Tab Templates). Также можно фильтровать список шаблонов, отображая шаблоны сайта или администратора (рис. 6 и 7).</p>\r\n<p>&nbsp;<img src="images/sampledata/joomla/g4_7.jpg" alt="g4_7" width="500" height="272" /></p>\r\n<p><em>Рисунок 7: Template Manager – шаблоны для администратора</em></p>\r\n<p>&nbsp;</p>\r\n<h2><strong>Стили</strong></h2>\r\n<p>Стили дают возможность создавать и использовать различные версии одного шаблона. Шаблон имеет как минимум один стиль. В этом стиле, такие конфигурации, как изменение цвета или загрузка логотипа, могут быть настроены в зависимости от шаблона. Вы можете задать стиль по умолчанию для своего сайта через «Расширения → Управление шаблонами → Стили» (Extensions → Template Manager → Styles).</p>\r\n<p>&nbsp;</p>\r\n<h2><strong>Пример: индивидуальный стиль</strong></h2>\r\n<p>&nbsp;Давайте создадим индивидуальный стиль для нашего сайта:</p>\r\n<ul>\r\n<li>Имя: cocoate</li>\r\n<li>Цвет шаблона: #f88638</li>\r\n<li>Подвижный макет</li>\r\n</ul>\r\n<p>&nbsp;Вы можете создать дополнительные стили, копируя их. Для этого примера мы используем фильтр для шаблона Protostar (рис. 8).</p>\r\n<p><img src="images/sampledata/joomla/g4_8.jpg" alt="g4_8" width="500" height="185" /></p>\r\n<p><em>Рисунок 8: Дублирование стиля</em></p>\r\n<p>&nbsp;</p>\r\n<p>Введите имя стиля и установите его по умолчанию для всех языков. Если у вас есть многоязычные сайты Joomla, можно установить разные стили для разных языков (рис. 9)</p>\r\n<p><img src="images/sampledata/joomla/g4_9.jpg" alt="g4_9" width="500" height="260" /></p>\r\n<p><em>Рисунок 9: Настройка стиля шаблона</em></p>\r\n<p>На вкладке «Параметры» можно выбрать шаблон и цвет фона, загрузить логотип и установить, будет ли шаблон фиксированным или подвижным (рис. 10, рис. 11)</p>\r\n<p>&nbsp;</p>\r\n<p><img src="images/sampledata/joomla/g4_10.jpg" alt="g4_10" width="500" height="299" /></p>\r\n<p><em>Рисунок 10: «Параметры → Стиль»</em></p>\r\n<p><em><img src="images/sampledata/joomla/g4_11.jpg" alt="g4_11" width="500" height="231" /></em></p>\r\n<p><em>Рисунок 11: Загрузка логотипа</em></p>\r\n<p><br />Каждый стиль может (должен) быть назначен к пункту меню. Если, например, вы хотите, чтобы фон на сайте был зеленым, когда люди нажимают на пункт «А» в меню, и, чтобы фон был синим при нажатии на пункт «B», можено назначить соответствующий стиль. В нашем есть только один пункт меню, поскольку до сих пор нет контента. Назначаем новый стиль к пункту главного меню (рис. 12).</p>\r\n<p><em><img src="images/sampledata/joomla/g4_12.jpg" alt="g4_12" width="500" height="225" /></em></p>\r\n<p><em>Рисунок 12: Назначение меню</em></p>\r\n<p>&nbsp;</p>\r\n<p>После сохранения стиля веб-сайт выглядит по-другому (рис. 13), и, благодаря шаблону Protostar, сайт будет отображаться корректно и на мобильных устройствах. (рис. 14)</p>\r\n<p><img src="images/sampledata/joomla/g4_13.jpg" alt="g4_13" width="500" height="254" /></p>\r\n<p><em>Рисунок 13: Сайт на настольном ПК</em></p>\r\n<p>&nbsp;</p>\r\n<p><img src="images/sampledata/joomla/g4_14.jpg" alt="g4_14" width="147" height="240" /></p>\r\n<p><em>Рисунок 14: Сайт на мобильном устройстве</em></p>\r\n<h2><strong>Изменение файлов шаблонов онлайн </strong></h2>\r\n<p>Шаблон в Joomla является основой стиля и состоит из различных файлов. Вполне возможно, изменить центральные элементы шаблона онлайн.</p>\r\n<p>Если вы захотели отредактировать шаблон Protostar, нужно перейти к «Расширения → Управление шаблонами → Шаблоны → Protostar» (Extensions → Template Manager → Templates → Protostar Details and Files) кликнуть ссылку на файл.</p>\r\n<p><img src="images/sampledata/joomla/g4_15.jpg" alt="g4_15" width="500" height="226" /></p>\r\n<p><em>Рисунок 15: Редактирование шаблона онлайн</em></p>\r\n<p>&nbsp;</p>\r\n<p>Конечно, можно редактировать файлы во внешнем редакторе.</p>\r\n<p>Шаблоны сайтов находятся в папке «шаблоны». Каждый шаблон имеет собственную папку. Под «шаблоны»/«системная папка» (/templates/systems folder) находятся шаблоны файлов для редактирования в автономном режиме и шаблон страницы ошибки.</p>\r\n<p>Административные шаблоны находятся в папке «администратор»/«шаблоны» <em>(/</em><em>administrator/templates</em><em>).</em></p>\r\n<p><em>&nbsp;</em></p>\r\n<p><em>Хаген Граф</em></p>', 1, 26, '2014-03-15 22:50:44', 445, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2014-03-15 22:50:44', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 3, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(101, 228, '3.  Joomla на вашем языке', '3-joomla-na-vashem-jazyke', '<p>На данный момент сайт, и панель управления доступны только на английском языке. Это основной язык Joomla. Выбор языка доступен в инсталляторе только для процесса установки.</p>\r\n', '\r\n<h2><strong>Языковой менеджер</strong></h2>\r\n<p>На этом, первом, этапе мы хотим настроить Joomla на вашем родном языке. &nbsp;Это означает, что наш сайт будет доступен только в одном выбранном языке.</p>\r\n<p>&nbsp;</p>\r\n<p>Языковой менеджер (Extensions → Language Manager) устанавливается за 4 шага:</p>\r\n<p>&nbsp;</p>\r\n<h3><strong> 1. Installed - Site</strong></h3>\r\n<p>&nbsp;</p>\r\n<p>Список установленных языков на сайте.&nbsp; Вы можете установить один язык по умолчанию и активировать и деактивировать другие языки (рис. 1)</p>\r\n<p>&nbsp;<img src="images/sampledata/joomla/g3_img_1.gif" alt="g3_img_1" width="646" height="189" /></p>\r\n<p><em>Рисунок 1: Язык сайта</em></p>\r\n<p>&nbsp;</p>\r\n<h3><strong> 2. Installed - Administrator</strong></h3>\r\n<p>&nbsp;</p>\r\n<p>Список установленных языков на панели управления.&nbsp; Вы можете установить один язык по умолчанию и активировать и деактивировать другие языки (рис. 2)</p>\r\n<p>&nbsp;<img src="images/sampledata/joomla/g3_img_2.gif" alt="g3_img_2" width="646" height="169" /></p>\r\n<p><em>Рисунок 2: Панель управления Язык</em></p>\r\n<p>&nbsp;</p>\r\n<h3><strong>3. Content</strong></h3>\r\n<p>&nbsp;</p>\r\n<p>Здесь вы можете установить, имя сайта, метаданные вариантов, код языка для каждой языковой версии (рис. 3).</p>\r\n<p>&nbsp;<img src="images/sampledata/joomla/g3_img_3.gif" alt="g3_img_3" width="602" height="381" /></p>\r\n<p><em>Рисунок 3: Язык параметры для одного языка</em></p>\r\n<p>&nbsp;</p>\r\n<h3><strong> 4. Overrides</strong></h3>\r\n<p>&nbsp;</p>\r\n<p>Переопределение языковых констант. Эта функция может оказаться очень полезной, если вам нужно изменить всего несколько слов.</p>\r\n<p>Предложения в языковой системе Joomla для магазинов выглядят примерно так: «Пожалуйста, войдите, чтобы просмотреть товар», а в переменных, как: COM_CONTENT_ERROR_LOGIN_TO_VIEW_ARTICLE.</p>\r\n<p>Если вам не нравится это предложение, вы можете его изменить (рис. 4).</p>\r\n<p>&nbsp;<img src="images/sampledata/joomla/g3_img_4.gif" alt="g3_img_4" width="646" height="437" /></p>\r\n<p><em>Рисунок 4: Изменение языка</em></p>\r\n<p>&nbsp;</p>\r\n<h2><strong>Установка нового языка</strong></h2>\r\n<p>Нажмите кнопку «Установить язык» в языковом менеджере, и Joomla отправляет вас к Extensions → Extension Manager → Install Languages. Если вы находитесь там впервые, то следует просмотреть все доступные языковые пакеты. Выберите нужный язык и нажмите кнопку «Установить». (Рис. 5).</p>\r\n<p>&nbsp;<img src="images/sampledata/joomla/g3_img_5.gif" alt="g3_img_5" width="646" height="307" /></p>\r\n<p><em>Рисунок 5: Доступные языковые пакеты</em></p>\r\n<p>&nbsp;</p>\r\n<p>Вернитесь к языковому менеджеру (Extensions → Language Manager) и установите свой язык, как язык по умолчанию для сайта и панели управления, отключите английский, и готово!</p>\r\n<p>&nbsp;<img src="images/sampledata/joomla/g3_img_6.gif" alt="g3_img_6" width="646" height="316" /></p>\r\n<p><em>Рисунок 6: Панель управления на испанском языке</em></p>\r\n<p>&nbsp;</p>\r\n<p><em>&nbsp;</em></p>\r\n<p><em>Хаген Граф</em></p>', 1, 26, '2014-03-15 22:51:06', 445, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2014-03-15 22:51:06', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 2, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(102, 229, '2.  Скачивание и установка Joomla', 'skachivanie-i-ustanovka-joomla', '<p>Паника... где и что скачивать? Где устанавливать? Зачем? Как?</p>\r\n<p>Для того чтобы установить Joomla! на своем компьютере, необходимо создать локальный хостинг, для которого вам понадобится браузер, веб-сервер, PHP-интерпретатор, а также система баз данных, которую поддерживает Joomla. Назовем это пакетом решений и клиент-серверной системой.</p>\r\n', '\r\n<p>Пакет решений представляет собой набор программного обеспечения, который позволят создать полностью функциональный веб-сайт.</p>\r\n<p>Нужный нам пакет решений состоит из:</p>\r\n<ul>\r\n<li>операционной системы (Linux, Windows, OSX)</li>\r\n<li>веб-сервера (Apache, IIS)</li>\r\n<li>базы данных (MySQL, PostgreSQL)</li>\r\n<li>скриптового языка (PHP)</li>\r\n</ul>\r\n<p>Вы можете установить набор решений на вашем домашнем компьютере или купить или арендовать его у любой хостинговой компании. В таблице приведены конкретные требования Joomla 3.x.</p>\r\n<p>&nbsp;</p>\r\n<table style="width: 620px;" border="1" cellspacing="0" cellpadding="0">\r\n<tbody>\r\n<tr>\r\n<td width="310">\r\n<p align="center">Программное обеспечение</p>\r\n</td>\r\n<td width="310">\r\n<p align="center">Минимум</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="310">\r\n<p align="center">PHP</p>\r\n</td>\r\n<td width="310">\r\n<p align="center">5.3.1+</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="310">\r\n<p align="center">MySQL (требуется поддержка InnoDB)</p>\r\n</td>\r\n<td width="310">\r\n<p align="center">5.1+</p>\r\n<p align="center">&nbsp;</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="310">\r\n<p align="center">Apache</p>\r\n<p align="center">(с mod_mysql, mod_xml,</p>\r\n<p align="center">and mod_zlib)</p>\r\n</td>\r\n<td width="310">\r\n<p align="center">2.x+</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="310">\r\n<p align="center">Microsoft IIS</p>\r\n</td>\r\n<td width="310">\r\n<p align="center">7</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp;</p>\r\n<p><em>Таблица 1: Требования для Joomla 3.x</em></p>\r\n<p>&nbsp;</p>\r\n<p>Если пакет решений исправно работает, результат мы называем сервером. Им может быть как локальный, так и любой другой компьютер. Гости и пользователи веб-сайта неизбежно используют браузер для того, чтобы получить доступ к вашему сайту, созданному с помощью Joomla. Их мы называем клиентами.</p>\r\n<p>&nbsp;</p>\r\n<p>Так выглядит «классический» пакет LAMP.</p>\r\n<p>&nbsp;</p>\r\n<p><img src="images/sampledata/joomla/g2_img_1.gif" alt="g2_img_1" width="646" height="485" /></p>\r\n<p><em>Рисунок 1: пакет решений LAMP</em></p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<h2><strong> Веб-установщик Joomla</strong></h2>\r\n<p>Благодаря веб-инсталлятору, вы сможете установить Joomla! в течение нескольких минут. Файлы Joomla! будут скопированы в корневую папку документов и настроены веб-установщиком Joomla.</p>\r\n<p>Скачайте Joomla 3 с сайта joomla.org и распакуйте файлы в общую корневую папку документов веб-сервера (например: / htdocs).</p>\r\n<p>Пройдите по ссылке <a href="http://localhost/ .">http://localhost/ .</a></p>\r\n<p>&nbsp;</p>\r\n<h3><em><strong>Камни преткновения</strong></em></h3>\r\n<p>&nbsp;</p>\r\n<p><em>Эта тема достаточно сложная, т.к. существует огромное количество провайдеров и не меньшее количество установленных веб-серверов, версий PHP и MySQL и инструментов управления веб-пространством. </em></p>\r\n<p>&nbsp;</p>\r\n<p><em>Затруднения во время установки часто заключаются в том, что: </em></p>\r\n<ul>\r\n<li><em>активированный «Safe Mode» PHP-интерпретатора, мешает вам загружать файлы;</em></li>\r\n<li><em>"запрещено" переписывать пути с веб-сервера Apache, потому что так называемый Apache Rewrite Engine (mod_rewrite) не активирован; </em></li>\r\n<li><em>каталоги разрешений на Linux и OSX установлены иначе, чем в Windows.</em></li>\r\n</ul>\r\n<p><em>Самый простой способ, который почти всегда работает, заключается в следующем: </em></p>\r\n<ul>\r\n<li><em>Скачайте текущий пакет файлов из Joomla.org и распакуйте во временный каталог. </em></li>\r\n<li><em>Загрузите распакованные файлы через FTP на ваш сервер или в каталог локальной установки. </em></li>\r\n</ul>\r\n<p><em>Файлы должны быть установлены в общий каталог. Обычно они называются htdocs, public_html или HTML. Если там уже имеются другие объекты, вы можете создать подкаталог, в котором будут установлены файлы Joomla. Многие веб-хосты &nbsp;позволяют связать имя вашего арендованного домена с каталогом. </em></p>\r\n<ul>\r\n<li><em>Узнайте имя вашей базы данных. В большинстве случаев одна или несколько БД уже включены в веб-хостинг. Иногда имена пользователей, БД и пароль уже даны, а иногда вы должны установить их сами. Как правило, это можно сделать при помощи конфигурации интерфейса браузера. Вам понадобится информация о доступе к базам данных для веб-установщика Joomla! </em></li>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<h2><strong>Предварительная проверка установки</strong></h2>\r\n<p>Пред-проверка установки помогает определить, подходит ли ваш сервер для установки Joomla. Если вы видите красную метку, это означает, что пакет решений настроен неправильно, а установщик отказывается ставить Joomla. В зависимости от вашей конфигурации, могут наблюдаться небольшие различия. Установщик Joomla! просчитывает параметры конфигурации веб-сервера (в нашем случае Apache), PHP, и операционную систему. При использовании систем Unix (Linux, Mac OS X), обратите внимание на права доступа к файлам, это особенно важно для файла configuration.php. Этот файл будет создан в конце установки с вашими значениями. Если программа установки не может прописаться в папку, Joomla! не установится. В этом случае, перейдите к настройке прав и нажмите кнопку «повторить проверку».</p>\r\n<p>&nbsp;</p>\r\n<p><img src="images/sampledata/joomla/g2_img_2.gif" alt="g2_img_2" width="646" height="410" /></p>\r\n<p><em>Рисунок 2: Пред-проверка установки</em></p>\r\n<p>&nbsp;</p>\r\n<h2><strong>Шаг 1 - Конфигурация</strong></h2>\r\n<p>В главном окне конфигурации опишите сайт и администратора. Там же можно настроить видимость сайта: будет ли он виден для посетителей (онлайн), или же будет отображать содержание страницы в автономном режиме (оффлайн). Такая настройка полезна при установке Joomla непосредственно на хостинг (рис. 3).</p>\r\n<p>&nbsp;</p>\r\n<p><img src="images/sampledata/joomla/g2_img_3.gif" alt="g2_img_3" width="646" height="454" /></p>\r\n<p><em>Рисунок 3: Installer - Основные конфигурации</em></p>\r\n<p>&nbsp;</p>\r\n<h2><strong>Шаг 2 - База данных</strong></h2>\r\n<p>Вы можете использовать различные серверы баз данных с Joomla. Выберете, какой сервер базы данных вы будете использовать, введите параметры БД (рис. 4).</p>\r\n<p>Используя набор MAMP на системе Ubuntu Linux, пользователь, по умолчанию, имеет логин и пароль root. Он же является администратором. Пароль зависит от среды сервера, на XAMPP пароль не нужен.</p>\r\n<p>На хостинге, эти параметры будут выданы провайдером.</p>\r\n<p>&nbsp;</p>\r\n<p><img src="images/sampledata/joomla/g2_img_4.gif" alt="g2_img_4" width="646" height="415" /></p>\r\n<p><em>Рисунок 4: Установщик - Конфигурация базы данных </em></p>\r\n<p>&nbsp;</p>\r\n<p>Введите следующие значения в вашей локальной установке:</p>\r\n<p>Имя компьютера: localhost</p>\r\n<p>Имя пользователя: root</p>\r\n<p>Пароль: задается соответственно разновидности сервера и его настройкам</p>\r\n<p>&nbsp;</p>\r\n<p>Теперь выберите имя базы данных. В производственной среде, на сервере провайдера, у вас наверняка есть квота БД, и их учетные данные определены заранее. Если у вас есть разрешение на сервере баз данных, то можете ввести имя новой БД. Затем Joomla! создаст ее.</p>\r\n<p>Можно выбрать любую из существующих таблиц Joomla! Установка в этой базе данных должна быть очищена или сохранена и обозначена префиксом bak_.</p>\r\n<p>На самом деле, таблицы с префиксом практичны. Перед каждым именем таблицы, которую создал веб-инсталлятор, он пишет текст, который вы ввели в соответствующее поле. По умолчанию веб-установщик предложит создать одну таблицу, например w02rh_. Этому есть простое объяснение. Иногда провайдер предоставляет вам только одну базу данных MySQL. Если вам необходимо запускать два и более сайта с Joomla, то может возникнуть проблема, так как таблицы не будут отличаться друг от друга. Таблицы с префиксом можно разделить на несколько таблиц (w01client_ или w02client_). В этом случае нужно использовать по умолчанию w02rh_. Префикс также используется для обозначения сохраненных данных (bak_), см. выше.</p>\r\n<p>&nbsp;</p>\r\n<h2><strong>Шаг 3 - Завершение</strong></h2>\r\n<p>На третьем этапе установки Joomla ознакомит вас с параметрами конфигурации и спросит, хотите ли вы установить демонстрационные данные (рис. 4).</p>\r\n<p>&nbsp;</p>\r\n<p><img src="images/sampledata/joomla/g2_img_5.gif" alt="g2_img_5" width="646" height="834" /></p>\r\n<p><em>Рисунок 4: Завершение </em></p>\r\n<p>&nbsp;</p>\r\n<p>В предыдущих версиях Joomla можно было выбрать только ОДИН вид демо. С Joomla 3 можно выбрать из нескольких. Это может быть использовано для настройки определенных макетов сайта, например, для блога (рис. 5), сайта-визитки (рис. 6), сайта с руководством по Joomla внутри (рис. 7) и обычного сайта (рис. 8).</p>\r\n<p>&nbsp;</p>\r\n<p><img src="images/sampledata/joomla/g2_img_6.gif" alt="g2_img_6" width="646" height="434" /></p>\r\n<p><em>Рисунок 5: Weblog</em></p>\r\n<p><em>&nbsp;</em></p>\r\n<p><img src="images/sampledata/joomla/g2_img_7.gif" alt="g2_img_7" width="646" height="383" /></p>\r\n<p><em>Рисунок 6: Визитка</em></p>\r\n<p><em>&nbsp;</em></p>\r\n<p><em><img src="images/sampledata/joomla/g2_img_8.gif" alt="g2_img_8" width="646" height="495" /></em></p>\r\n<p><em>Рисунок 7: Руководство по Joomla</em></p>\r\n<p><em>&nbsp;</em></p>\r\n<p><em><img src="images/sampledata/joomla/g2_img_9.gif" alt="g2_img_9" width="646" height="394" /></em></p>\r\n<p><em>Рисунок 8: Недоработанный сайт</em></p>\r\n<p><em>&nbsp;</em></p>\r\n<p>&nbsp;</p>\r\n<p>В зависимости от ваших потребностей и знаний, можно попробовать различные типы демонстрационных данных.</p>\r\n<p>К сожалению, невозможно изменить выбранный тип после завершения установки.</p>\r\n<p>Кроме того, можно установить Joomla и без него. «Пустая Joomla» - лучший вариант, если вы уже знаете, как пользоваться Joomla.</p>\r\n<p>Для описания в последующих главах мы будем использовать «пустую» Joomla без какого-либо демонстрационных данных.</p>\r\n<p>Но вы сможете разобраться в материале независимо от предустановленного типа.</p>\r\n<p>Так что выбирайте тип, который хотите использовать, и жмите кнопку «Установить». Joomla создаст базу данных и настроит сайт (рис. 9).</p>\r\n<p>&nbsp;</p>\r\n<p><img src="images/sampledata/joomla/g2_img_10.gif" alt="g2_img_10" width="646" height="289" /></p>\r\n<p><em>Рисунок 9: Joomla! установлена</em></p>\r\n<p>&nbsp;</p>\r\n<p>Из соображений безопасности, необходимо удалить папку установки, щелкнув по соответствующей кнопке. После удаления папки установки можно просмотреть сайт и войти в панель управления (/administrator). В данном случае, сайт выглядит как на рисунке 10.</p>\r\n<p>&nbsp;</p>\r\n<p><img src="images/sampledata/joomla/g2_img_11.gif" alt="g2_img_11" width="646" height="359" /></p>\r\n<p><em>Рисунок 10: Joomla сайта без образца данных</em></p>\r\n<p>&nbsp;</p>\r\n<p>Панель управления&nbsp;Joomla&nbsp;находится&nbsp;по&nbsp;адресу&nbsp;<a href="http://example.com/administrator">http://example.com/administrator</a></p>\r\n<p>&nbsp;</p>\r\n<p>Появится экран входа с возможностью выбора языка (рис. 11) и, после успешного входа, далее появится область администрирования (рис. 12).</p>\r\n<p>&nbsp;</p>\r\n<p><img src="images/sampledata/joomla/g2_img_12.gif" alt="g2_img_12" width="646" height="369" /></p>\r\n<p><em>Рисунок 11: Экран входа в систему</em></p>\r\n<p>&nbsp;</p>\r\n<p><em><img src="images/sampledata/joomla/g2-img_13.gif" alt="g2-img_13" width="646" height="393" /></em></p>\r\n<p><em>Рисунок 12: Панель управления</em></p>\r\n<p><em>&nbsp;</em></p>\r\n<p><em>Хаген Граф</em></p>', 1, 26, '2014-03-15 22:51:40', 445, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2014-03-15 22:51:40', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 1, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', '');
INSERT INTO `f8ad7_content` (`id`, `asset_id`, `title`, `alias`, `introtext`, `fulltext`, `state`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`) VALUES
(103, 230, '1.  Что такое Joomla?', 'chto-takoe-joomla', '<p>Joomla представляет собой бесплатную систему для создания веб-сайтов.&nbsp; Это проект с открытым исходным кодом, который, как и большинство подобных проектов, не стоит на месте. Он очень успешно развивается, в течение вот уже семи лет, и пользуется популярностью у миллионов пользователей по всему миру.</p>\r\n', '\r\n<p>&nbsp;</p>\r\n<p><strong>Слово</strong> «Joomla» является производным от слова «Jumla» из африканского языка суахили и означает "все вместе".</p>\r\n<p><strong>Проект</strong> Joomla – результат жарких дискуссий между компанией Mambo Foundation, основанной в августе 2005 года, и ее тогдашней команды разработчиков. Joomla используется во всем мире как для создания простых домашних страниц, так и сложных корпоративных веб-сайтов. Она проста в установке, управлении и очень надежна.</p>\r\n<p>Команда Joomla совершенствуется с момента своего создания, чтобы лучше удовлетворять потребности пользователей.</p>\r\n<p>&nbsp;</p>\r\n<h2><strong>Стратегия развития версий</strong></h2>\r\n<p>Версии Joomla рассчитаны как на стандартную (STS), так и на долгосрочную поддержку (LTS). Срок стандартной поддержки составляет 7 месяцев, долгосрочной – 22 месяца. Каждые 6 месяцев выходит новая STS. Версии х.5 включают в себя LTS.</p>\r\n<ul>\r\n<li><strong>Joomla 2.5</strong>&nbsp;–&nbsp;версия, включающая LTS, и в сентябре 2013 года будет заменена на Joomla 3.5</li>\r\n<li><strong>Joomla 3.0</strong> – версия, содержащая STS, будет заменена на Joomla 3.1 в марте 2013</li>\r\n<li><strong>Joomla 3.1&nbsp;–&nbsp;</strong>будет представлять собой версию с STS, релиз которой состоится с марта 2013 по сентябрь 2013</li>\r\n<li><strong>Joomla 3.5&nbsp;–</strong> будет включать в себя LTS и выйдет с сентября 2013 по март 2015</li>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<p>Долгосрочная поддержка подойдет для уже работающих сайтов. Если же вы создаете свой сайт с нуля, то вам подойдет стандартная поддержка (<em>рис. 1</em>).</p>\r\n<p><img src="images/sampledata/joomla/img_1.jpg" alt="img 1" width="600" height="322" /></p>\r\n<p><em>Рисунок 1: Цикл релизов Joomla за 2011-2014 года</em></p>\r\n<p>&nbsp;</p>\r\n<h2><strong>О какой версии это руководство?</strong></h2>\r\n<p>Это руководство о версии Joomla 3.0, выпущенной в сентябре 2012 года.</p>\r\n<p>&nbsp;</p>\r\n<h2><strong>Должны ли вы обновить свой старый сайт?</strong></h2>\r\n<p>Обычно существует три варианта:</p>\r\n<ol>\r\n<li>Если ваш сайт все еще находится в ветке <strong>LTS Joomla 1.5</strong>, то обновление ее до <strong>LTS Joomla 2.5</strong> будет хорошей идеей. Или же, вы можете начать с нуля со свежим STS Joomla 3 и проследить за обновлениями в серии 3.x до <strong>LTS Joomla 3.5.</strong></li>\r\n<li>Если ваш сайт уже сделан с <strong>LTS Joomla 2.5</strong>, обновлять его сейчас нет необходимости. Следует дождаться <strong>LTS Joomla 3.5</strong> в сентябре 2013 года.</li>\r\n<li>Если вы хотите создать веб-сайт сейчас, то следует начать с <strong>STS Joomla 3.0.</strong></li>\r\n</ol>\r\n<p>&nbsp;</p>\r\n<h2><strong>Что нового в Joomla 3.0?</strong></h2>\r\n<p>Наиболее значимые изменения для разработчиков и пользователей:</p>\r\n<ul>\r\n<li>Joomla стала адаптированной к мобильным устройствам и содержит разнообразие шаблонов. Теперь ваш сайт будет отображаться в каждом мобильном браузере (рис. 2).</li>\r\n<li>Joomla имеет новый пользовательский интерфейс</li>\r\n<li>Joomla использует JQuery JavaScript Lbriray</li>\r\n<li>Веб-установщик стал проще (процедура выполняется всего в 3 шага)</li>\r\n<li>Языковой пакет может быть установлен непосредственно из менеджера расширений (рис. 3)</li>\r\n<li>Поиск Smart Search, который был введен с Joomla 2.5, получил множество улучшений</li>\r\n<li>Редактор TinyMCE WYSIWYG входит в новую версию (3.5.6)</li>\r\n</ul>\r\n<p><img src="images/sampledata/joomla/img_2.jpg" alt="img_2" width="147" height="240" /></p>\r\n<p><em>Рисунок 2: Joomla! на мобильном устройстве</em></p>\r\n<p><em>&nbsp;</em></p>\r\n<p><img src="images/sampledata/joomla/img_3.gif" alt="img_3" width="646" height="307" /></p>\r\n<p><em>Рисунок 3: языковые пакеты</em></p>\r\n<p>Некоторые технические изменения не так заметны, но более чем полезны:</p>\r\n<ul>\r\n<li>Возможно сохранение пустых статей</li>\r\n<li>Joomla содержит PostgreSQL Driver. Вы сможете запустить сайты Joomla 3.0 с помощью базы данных PostgreSQL</li>\r\n<li>Joomla может работать быстрее с PHP Memcached Driver</li>\r\n<li>Используйте JFeed для осуществления управления вместо SimplePie</li>\r\n<li>Очистка устаревшего неиспользуемого кода, файлов, полей базы данных и таблиц. Улучшена стандартизация таблиц</li>\r\n<li>Обширная работа по стандартизации кода стиля и содержания</li>\r\n<li>Модульное тестирование в CMS</li>\r\n<li>Обновленные системные испытания в CMS</li>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<p>и многое другое</p>\r\n<p>&nbsp;</p>\r\n<h2><strong>Что вы можете сделать с Joomla?</strong></h2>\r\n<p>Все виды веб-сайтов могут быть созданы с помощью Joomla. Веб-сайты состоят из страниц, которые содержат контент (текст, изображения, видео и аудио). Часто он изменяется и настраивается автоматически, на основе определенных критериев. Возьмем, к примеру, главную страницу. Последние статьи на ней отображаются сверху автоматически. Так как все сайты во всемирной паутине основаны на этих принципах, их можно условно разделить на следующие категории.</p>\r\n<p>&nbsp;</p>\r\n<h3><strong>Блоги (веб-журналы)</strong></h3>\r\n<p>&nbsp;</p>\r\n<p>Блоги – это платформы для обсуждений или информационные сайты, состоящие из статей (сообщений, записей). Самые последние статьи появляются первыми.</p>\r\n<p>Пример: <a href="http://www.joomlablogger.net/">http://www.joomlablogger.net/</a></p>\r\n<p><img src="images/sampledata/joomla/img_4.gif" alt="img_4" width="646" height="435" /></p>\r\n<p><em>Рисунок 4: joomlablogger.net</em></p>\r\n<p>&nbsp;</p>\r\n<h3><strong>Сайты посвященные бренду</strong></h3>\r\n<p>&nbsp;</p>\r\n<p>Сайты, целью которых является создание представления о бренде в Интернете. Они обычно не занимаются продажами, а сосредоточены только на раскрутке бренда.</p>\r\n<p>Пример: <a href="http://www.ihop.com/">http://www.ihop.com/</a></p>\r\n<p>&nbsp;</p>\r\n<p><img src="images/sampledata/joomla/img_5.gif" alt="img_5" width="646" height="442" /></p>\r\n<p><em>Рисунок 5: ihop.com</em></p>\r\n<p>&nbsp;</p>\r\n<h3><strong>Сайты-визитки</strong></h3>\r\n<p>&nbsp;</p>\r\n<p>Сайты включают в себя информацию о компании, ее продуктах и услугах. Используется текст, фотографии, анимация, аудио и видео, интерактивные меню и навигация.</p>\r\n<p>Пример: <a href="http://www.solesolutions.no/">http://www.solesolutions.no/</a></p>\r\n<p><img src="images/sampledata/joomla/img_6.gif" alt="img_6" width="646" height="503" /></p>\r\n<p><em>Рисунок 6: solesolutions.no</em></p>\r\n<p>&nbsp;</p>\r\n<h3><strong>Сайты знаменитостей</strong></h3>\r\n<p>&nbsp;</p>\r\n<p>Веб-сайты, содержащие информацию о каких-либо знаменитостях. Подобные сайты могут быть официальными или созданными фанатами.</p>\r\n<p>Пример: <a href="http://www.deep-purple.com/">http://www.deep-purple.com/</a></p>\r\n<p><img src="images/sampledata/joomla/img_7.gif" alt="img_7" width="646" height="426" /></p>\r\n<p><em>Рисунок 7: глубокие purple.com</em></p>\r\n<p>&nbsp;</p>\r\n<h3><strong>Сообщества</strong></h3>\r\n<p>&nbsp;</p>\r\n<p>Сайты, где общаются люди со схожими интересами.</p>\r\n<p>Пример: <a href="http://www.starvmax.com/community">http://www.starvmax.com/community</a></p>\r\n<p><img src="images/sampledata/joomla/img_8.gif" alt="img_8" width="646" height="415" /></p>\r\n<p><em>Рисунок 8: starvmax.com / сообщества</em></p>\r\n<p>&nbsp;</p>\r\n<h3><strong>Интернет магазины</strong></h3>\r\n<p>&nbsp;</p>\r\n<p>Сайты, предлагающие товары и услуги для онлайн продаж.</p>\r\n<p>Пример: <a href="http://regalosdecocina.com/">http://regalosdecocina.com/</a></p>\r\n<p><img src="images/sampledata/joomla/img_9.gif" alt="img_9" width="646" height="485" /></p>\r\n<p><em>Рисунок 9: regalosdecocina.com</em></p>\r\n<p>&nbsp;</p>\r\n<h3><strong>Форумы</strong></h3>\r\n<p>&nbsp;</p>\r\n<p>Сайт, где люди обсуждают различные темы.</p>\r\n<p>Пример: <a href="http://www.sol.dk/debat/kategorier">http://www.sol.dk/debat/kategorier</a></p>\r\n<p><img src="images/sampledata/joomla/img_10.gif" alt="img_10" width="646" height="409" /></p>\r\n<p><em>Рисунок 10: sol.dk / Деба / kategorier</em></p>\r\n<p>&nbsp;</p>\r\n<h3><strong>Сайты -</strong> <strong>галереи</strong></h3>\r\n<p>&nbsp;</p>\r\n<p>Веб-сайты, разработанные специально для использования в качестве галерей. Они могут иметь коммерческий или не коммерческий характер, и представляют собой художественную или фото галерею.</p>\r\n<p>Пример: <a href="http://www.mb-photography.com/">http://www.mb-photography.com/</a></p>\r\n<p><img src="images/sampledata/joomla/img_11.gif" alt="img_11" width="646" height="339" /></p>\r\n<p><em>Рисунок 11: MB-photography.com</em></p>\r\n<p>&nbsp;</p>\r\n<h3><strong>Правительственные сайты </strong></h3>\r\n<p>&nbsp;</p>\r\n<p>Более 3000 правительственных веб-сайтов по всему миру создаются на CMS Joomla.</p>\r\n<p>Примеры: <a href="http://joomlagov.info/">http://joomlagov.info/</a></p>\r\n<p><img src="images/sampledata/joomla/img_12.gif" alt="img_12" width="646" height="485" /></p>\r\n<p><em>Рисунок 12: joomlagov.info</em></p>\r\n<p>&nbsp;</p>\r\n<h3><strong>Новостные сайты</strong></h3>\r\n<p>&nbsp;</p>\r\n<p>Схожи с&nbsp; информационными сайтами, но ориентированы на новости, политику и комментарии.</p>\r\n<p>Пример: <a href="http://www.aa.com.tr/">http://www.aa.com.tr/</a></p>\r\n<p><img src="images/sampledata/joomla/img_13.gif" alt="img_13" width="646" height="484" /></p>\r\n<p><em>Рисунок 13: aa.com.tr</em></p>\r\n<p>&nbsp;</p>\r\n<h3><strong>Персональные сайты </strong></h3>\r\n<p>&nbsp;</p>\r\n<p>Сайты о каком-либо человеке или небольшой группе людей (например, семье), которые содержат любой контент или индивидуальную информацию, размещенную на усмотрение создателя.</p>\r\n<p>Пример: <a href="http://www.ilnono.it/it/">http://www.ilnono.it/it/</a></p>\r\n<p><img src="images/sampledata/joomla/img_14.gif" alt="img_14" width="646" height="460" /></p>\r\n<p><em>Рисунок 14: ilnono.it</em></p>\r\n<p>&nbsp;</p>\r\n<h2><strong>600000000 сайтов</strong></h2>\r\n<p>Вы когда-нибудь задавали себе вопрос, сколько сайтов существует на момент 2012 года? Их множество, но никто не знает точного ответа.</p>\r\n<p>Как вы, наверное, заметили, большинство из приведенных в качестве примера сайтов нельзя назвать акулами всемирной сети, но они отвечают потребностям их создателей и их клиентов. Но это не означает, что Joomla подходит только для небольших веб-сайтов. Это говорит о том, что большинство веб-сайтов производится с ограниченными ресурсами, такими как время и бюджет. По этой причине люди часто строят свои сайты на системах с открытым исходным кодом, таких как Joomla, WordPress и Drupal.</p>\r\n<p>Большие сайты, как Facebook, Flickr, YouTube, Google, Apple или Microsoft как правило не используют открытый исходным код в системе управления контентом для своих сайтов. У таких компаний имеются тысячи разработчиков, которые создают сотни сайтов, прорабатывая и совмещая множество идей и решений, представленных на рынке.</p>\r\n<p>&nbsp;</p>\r\n<h2><strong>Любители против Профессионалов</strong></h2>\r\n<p>Вышеперечисленные сайты создаются людьми, которых можно разделить на любителей и профессионалов.&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<ul>\r\n<li>Любители обходятся тем, что есть. Как правило, они «чем богаты, тем и рады».</li>\r\n<li>Профессионалы же роют землю, чтобы всегда быть готовым к разработкам, которые могут быть оптимизированы с течением времени. Они постоянно расширяют свои знания и делятся ими с другими для укрепления своего бизнеса.</li>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<p>Для Joomla не имеет значения, являетесь ли вы любителем или профессионалом. И те, и другие могут работать с Joomla. Зачастую, любители становятся профессионалами, а профессионалы становятся более заинтересованными в том, чтобы сделать Joomla CMS и Framework еще лучше.</p>\r\n<p>&nbsp;</p>\r\n<p>Время для первого и последнего совета в этом руководстве!</p>\r\n<p><em>"Не слушайте людей, которые указывают вам, что делать. Поступайте так, как считаете нужным".</em></p>\r\n<p>&nbsp;</p>\r\n<h2><strong>Что общего у всех этих веб-сайтов? </strong></h2>\r\n<p>&nbsp;</p>\r\n<p>Несмотря на то, что существует множество разновидностей сайтов, кое-что их объединяет:</p>\r\n<ul>\r\n<li>Они показывают содержание (текст, изображения, видео, аудио).</li>\r\n<li>Они имеют индивидуальный дизайн, макеты и цвета.</li>\r\n<li>Посетители могут взаимодействовать с сайтом.&nbsp; Иногда они должны заранее создать учетную запись.</li>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<h2><strong>Joomla объединяет</strong></h2>\r\n<p>Все эти веб-сайты основаны на идеях своих создателей и безграничных возможностях Joomla CMS.&nbsp; В этом руководстве речь пойдет об общих чертах сайтов. После прочтения следующих 9 глав вы сможете самостоятельно создать достаточно хороший веб-сайт. А станите ли вы любителем или профессионалом зависит только от вас.</p>\r\n<p><em>&nbsp;</em></p>\r\n<p><em>Хаген Граф</em></p>', 1, 26, '2014-03-15 22:51:59', 445, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2014-03-15 22:51:59', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 0, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(104, 231, 'Баннеры', 'bannery', '<p>Компонент Баннер (Banner) относится к числу базовых компонентов, установленных на cms Joomla по умолчанию.</p>\r\n<p>Он позволяет быстро разместить баннер на Вашем сайте.</p>\r\n<p>А так-же отслеживать просмотры и клики баннеров. Для собственной статистики и предоставления статистика для клиента разместившего у вас свой рекламный баннер.</p>', '', 1, 11, '2014-03-15 22:52:41', 445, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2014-03-15 22:52:41', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 3, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(105, 233, 'Метки', 'tags', '<p>Компонент Теги позволяет создавать новые разделы сайта, куда будут относиться определенные материалы. В данном случае его можно сравнить с компонентом категории. Да именно так: материалы будут разделяться на определенные категории, но в случае с тегами этих категорий можно выбрать любое количество. Это значит, что один материал может относиться к разделу (тегу) "Шаблон" и например "CSS". Затем во всех заданных материалов, будут отображаться данные метки. По этим меткам можно осуществлять переход на другие материалы с этими тегами.</p>', '', 1, 11, '2014-03-15 22:53:14', 445, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2014-03-15 22:53:14', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 2, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(106, 235, 'Умный поиск', 'smart-search', '<p>«Умный поиск» — новый поисковый компонент в составе исходной комплектации Joomla. В его основе — более гибкий и более быстрый алгоритм. Среди возможностей компонента — автоматическое дополнение поисковых запросов и использующая стемминг функция «Возможно, вы имели в виду...».</p>\r\n<p>Стемминг?</p>\r\n<p>Благодаря стеммингу поисковая система, анализируя слово «коты», выделяет из него основу [прим. перев.: необязательно морфологическую] «кот». Подобную основу она найдет в словах «котенок», «котик». В словах «рыбалка», «рыба», «рыбак» она выделит основу «рыб». Подробнее о стемминге — в соответствующей <a href="http://ru.wikipedia.org/wiki/%D0%A1%D1%82%D0%B5%D0%BC%D0%BC%D0%B8%D0%BD%D0%B3">статье в Википедии.</a></p>\r\n', '\r\n<p>«Умный поиск» использует два алгоритма стемминга. Один предназначен исключительно для английского языка. Другой, так называемый «Snowball» [в окне настроек — «Снежок»], помимо английского, поддерживает: русский, датский, немецкий, испанский, финский, французский, венгерский, итальянский, норвежский, голландский, португальский, румынский, турецкий. Для работы «Snowball» необходимо специальное расширение интерпретатора <abbr title="PHP: Hypertext Preprocessor">PHP</abbr> для стемминга.</p>\r\n<p>Гибкость и скорость «Умного поиска» не будут доступны без индексации контента.</p>\r\n<p><img title="«Умный поиск»: модуль, автоматическое дополнение поискового запроса, ссылка на страницу поиска" src="images/sampledata/joomla/smart_search_1.jpg" alt="«Умный поиск»: модуль, автоматическое дополнение поискового запроса, ссылка на страницу поиска" width="500" height="363" /></p>\r\n<p>Рис. 1. «Умный поиск»: модуль, автоматическое дополнение поискового запроса, ссылка на страницу поиска.</p>\r\n<h4>Активация</h4>\r\n<p>По умолчанию компонент «Умный поиск» выключен. Для его активации необходимо включить одноименный плагин, относящийся к группе «content», а также пять плагинов, относящихся к группе «finder» [группы выбираются при помощи выпадающего списка на странице менеджера плагинов] (рис. 2). Название группы [как и название компонента, «com_finder»] происходит от названия стороннего расширения для Joomla, «Finder», после включения в исходную комплектацию превратившегося в «Умный поиск» [по англ. — «Smart Search»].</p>\r\n<p><img title="Плагины «Умного поиска»" src="images/sampledata/joomla/smart_search_2.jpg" alt="Плагины «Умного поиска»" width="500" height="291" /></p>\r\n<p>Рис. 2. Плагины «Умного поиска».</p>\r\n<h4>Индексация</h4>\r\n<p>Для работы «Умного поиска» необходима индексация контента. Она производится автоматически во время сохранения статей, категорий, контактных данных, лент новостей и т. д. Первоначальную индексацию можно провести, кликнув по пиктограмме «Индексировать» на панели инструментов, на странице компонента: текстовое меню административного раздела → пункт «Компоненты» → подпункт «Умный поиск».</p>\r\n<p><img title="Индексация" src="images/sampledata/joomla/smart_search_3.jpg" alt="Индексация" width="500" height="355" /></p>\r\n<p>Рис. 3. Индексация.</p>\r\n<h4>Настройка под сайт</h4>\r\n<p>После активации и индексации необходимо решить как реализовать интерфейс «Умного поиска» на стороне посетителей: при помощи модуля, при помощи ссылки на страницу компонента или при помощи того и другого. Автоматическое дополнение поисковых запросов и использующая стемминг функция «Возможно, вы имели в виду...» будут доступны в обоих случаях (рис. 4 и 5).</p>\r\n<p><img title="«Умный поиск»: модуль, автоматическое дополнение поискового запроса, ссылка на страницу поиска" src="images/sampledata/joomla/smart_search_4.jpg" alt="«Умный поиск»: модуль, автоматическое дополнение поискового запроса, ссылка на страницу поиска" width="500" height="363" /></p>\r\n<p>Рис. 4. Автоматическое дополнение поисковых запросов.</p>\r\n<p><img title="Функция «Возможно, вы имели в виду…»" src="images/sampledata/joomla/smart_search_5.jpg" alt="Функция «Возможно, вы имели в виду…»" width="500" height="449" /></p>\r\n<p>Рис. 5. Использующая стемминг функция «Возможно, вы имели в виду...».</p>\r\n<p>«Умный поиск» — поставляется настроенным. Благодаря контекстным окнам указателя (тултипам) есть возможность ознакомиться с его параметрами. Подробнее о настройках компонента — в соответствующей <a href="http://docs.joomla.org/Smart_Search_configuration_options">статье на сайте документации Joomla [на англ.].</a></p>\r\n<h4>Отключение традиционного поискового компонента</h4>\r\n<p>Для отключения традиционного поискового компонента необходимо:</p>\r\n<ul>\r\n<li>отключить или удалить все модули типа «Поиск» (текстовое меню административного раздела → пункт «Расширения» → подпункт «Менеджер модулей» → выпадающий список «Выбор типа» → значение «Поиск»);</li>\r\n<li>отключить или удалить все плагины типа «search» (текстовое меню административного раздела → пункт «Расширения» → подпункт «Менеджер плагинов» → выпадающий список «Выбор типа» → значение «search»);</li>\r\n<li>удалить из меню ссылки, относящиеся к традиционному поисковому компоненту.</li>\r\n</ul>', 1, 11, '2014-03-15 22:53:39', 445, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2014-03-15 22:53:39', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 1, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(107, 237, 'Обновление Joomla!', 'update-joomla', '<p>В последних версиях Joomla разработчики очень много времени и внимания уделили системе обновления Joomla и расширений для нее. Они сделали все возможное, что бы как можно больше упростить процесс обновления до так называемого "одного клика". Т.е. для того что бы обновить версию Joomla достаточно одного-два клика мыши.</p>\r\n', '\r\n<p><img src="images/sampledata/joomla/update_joomla_1.jpg" alt="Быстрые значки проверки актуальности joomla! И расширений" /></p>\r\n<p>Рис. 1. Быстрые значки проверки актуальности joomla! И расширений.</p>\r\n<p><img src="images/sampledata/joomla/update_joomla_2.jpg" alt="Обновление joomla!" /></p>\r\n<p>Рис. 2. Обновление joomla!.</p>\r\n<p><img src="images/sampledata/joomla/update_joomla_3.jpg" alt="Обновление расширений" /></p>\r\n<p>Рис. 3. Обновление расширений.</p>', 1, 11, '2014-03-15 22:54:02', 445, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2014-03-15 22:54:02', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 0, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', '');

-- --------------------------------------------------------

--
-- Структура таблицы `f8ad7_contentitem_tag_map`
--

CREATE TABLE IF NOT EXISTS `f8ad7_contentitem_tag_map` (
  `type_alias` varchar(255) NOT NULL DEFAULT '',
  `core_content_id` int(10) unsigned NOT NULL COMMENT 'PK from the core content table',
  `content_item_id` int(11) NOT NULL COMMENT 'PK from the content type table',
  `tag_id` int(10) unsigned NOT NULL COMMENT 'PK from the tag table',
  `tag_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Date of most recent save for this tag-item',
  `type_id` mediumint(8) NOT NULL COMMENT 'PK from the content_type table',
  UNIQUE KEY `uc_ItemnameTagid` (`type_id`,`content_item_id`,`tag_id`),
  KEY `idx_tag_type` (`tag_id`,`type_id`),
  KEY `idx_date_id` (`tag_date`,`tag_id`),
  KEY `idx_tag` (`tag_id`),
  KEY `idx_type` (`type_id`),
  KEY `idx_core_content_id` (`core_content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Maps items from content tables to tags';

--
-- Дамп данных таблицы `f8ad7_contentitem_tag_map`
--

INSERT INTO `f8ad7_contentitem_tag_map` (`type_alias`, `core_content_id`, `content_item_id`, `tag_id`, `tag_date`, `type_id`) VALUES
('com_content.article', 1, 13, 4, '2014-03-16 20:50:49', 1),
('com_content.article', 1, 13, 12, '2014-03-16 20:50:49', 1),
('com_content.article', 2, 14, 4, '2014-03-16 20:52:16', 1),
('com_content.article', 2, 14, 12, '2014-03-16 20:52:16', 1),
('com_content.article', 3, 15, 4, '2014-03-16 20:52:51', 1),
('com_content.article', 3, 15, 12, '2014-03-16 20:52:51', 1),
('com_content.article', 4, 16, 4, '2014-03-16 20:53:28', 1),
('com_content.article', 4, 16, 12, '2014-03-16 20:53:28', 1),
('com_content.article', 5, 17, 4, '2014-03-16 20:54:12', 1),
('com_content.article', 5, 17, 12, '2014-03-16 20:54:12', 1),
('com_content.article', 6, 18, 4, '2014-03-16 20:55:10', 1),
('com_content.article', 6, 18, 12, '2014-03-16 20:55:10', 1),
('com_content.article', 7, 19, 4, '2014-03-16 20:55:48', 1),
('com_content.article', 7, 19, 12, '2014-03-16 20:55:48', 1),
('com_content.article', 8, 20, 5, '2014-03-16 20:56:29', 1),
('com_content.article', 8, 20, 8, '2014-03-16 20:56:29', 1),
('com_content.article', 8, 20, 12, '2014-03-16 20:56:29', 1),
('com_content.article', 9, 21, 5, '2014-03-16 20:58:20', 1),
('com_content.article', 9, 21, 8, '2014-03-16 20:58:20', 1),
('com_content.article', 9, 21, 12, '2014-03-16 20:58:20', 1),
('com_content.article', 10, 22, 5, '2014-03-16 20:58:56', 1),
('com_content.article', 10, 22, 8, '2014-03-16 20:58:56', 1),
('com_content.article', 10, 22, 12, '2014-03-16 20:58:56', 1),
('com_content.article', 11, 23, 5, '2014-03-15 21:52:11', 1),
('com_content.article', 11, 23, 8, '2014-03-15 21:52:11', 1),
('com_content.article', 11, 23, 12, '2014-03-15 21:52:11', 1),
('com_content.article', 12, 24, 5, '2014-03-15 21:52:46', 1),
('com_content.article', 12, 24, 8, '2014-03-15 21:52:46', 1),
('com_content.article', 12, 24, 12, '2014-03-15 21:52:46', 1),
('com_content.article', 13, 25, 5, '2014-03-15 21:53:16', 1),
('com_content.article', 13, 25, 8, '2014-03-15 21:53:16', 1),
('com_content.article', 13, 25, 12, '2014-03-15 21:53:16', 1),
('com_content.article', 14, 26, 5, '2014-03-15 21:53:53', 1),
('com_content.article', 14, 26, 8, '2014-03-15 21:53:53', 1),
('com_content.article', 14, 26, 12, '2014-03-15 21:53:53', 1),
('com_content.article', 15, 27, 5, '2014-03-15 21:55:10', 1),
('com_content.article', 15, 27, 9, '2014-03-15 21:55:10', 1),
('com_content.article', 15, 27, 12, '2014-03-15 21:55:10', 1),
('com_content.article', 16, 28, 5, '2014-03-15 21:55:43', 1),
('com_content.article', 16, 28, 9, '2014-03-15 21:55:43', 1),
('com_content.article', 16, 28, 12, '2014-03-15 21:55:43', 1),
('com_content.article', 17, 29, 5, '2014-03-15 21:56:13', 1),
('com_content.article', 17, 29, 9, '2014-03-15 21:56:13', 1),
('com_content.article', 17, 29, 12, '2014-03-15 21:56:13', 1),
('com_content.article', 18, 30, 5, '2014-03-15 21:56:45', 1),
('com_content.article', 18, 30, 7, '2014-03-15 21:56:45', 1),
('com_content.article', 18, 30, 12, '2014-03-15 21:56:45', 1),
('com_content.article', 19, 31, 5, '2014-03-15 21:57:25', 1),
('com_content.article', 19, 31, 7, '2014-03-15 21:57:25', 1),
('com_content.article', 19, 31, 12, '2014-03-15 21:57:25', 1),
('com_content.article', 20, 32, 5, '2014-03-15 21:58:02', 1),
('com_content.article', 20, 32, 7, '2014-03-15 21:58:02', 1),
('com_content.article', 20, 32, 12, '2014-03-15 21:58:02', 1),
('com_content.article', 21, 33, 5, '2014-03-15 21:58:36', 1),
('com_content.article', 21, 33, 7, '2014-03-15 21:58:36', 1),
('com_content.article', 21, 33, 12, '2014-03-15 21:58:36', 1),
('com_content.article', 22, 34, 5, '2014-03-15 21:59:10', 1),
('com_content.article', 22, 34, 7, '2014-03-15 21:59:10', 1),
('com_content.article', 22, 34, 12, '2014-03-15 21:59:10', 1),
('com_content.article', 23, 35, 5, '2014-03-15 22:00:04', 1),
('com_content.article', 23, 35, 7, '2014-03-15 22:00:04', 1),
('com_content.article', 23, 35, 12, '2014-03-15 22:00:04', 1),
('com_content.article', 24, 36, 5, '2014-03-15 22:00:39', 1),
('com_content.article', 24, 36, 6, '2014-03-15 22:00:39', 1),
('com_content.article', 24, 36, 12, '2014-03-15 22:00:39', 1),
('com_content.article', 25, 37, 5, '2014-03-15 22:01:10', 1),
('com_content.article', 25, 37, 6, '2014-03-15 22:01:10', 1),
('com_content.article', 25, 37, 12, '2014-03-15 22:01:10', 1),
('com_content.article', 26, 38, 5, '2014-03-15 22:01:45', 1),
('com_content.article', 26, 38, 6, '2014-03-15 22:01:45', 1),
('com_content.article', 26, 38, 12, '2014-03-15 22:01:45', 1),
('com_content.article', 27, 39, 5, '2014-03-15 22:02:20', 1),
('com_content.article', 27, 39, 6, '2014-03-15 22:02:20', 1),
('com_content.article', 27, 39, 12, '2014-03-15 22:02:20', 1),
('com_content.article', 28, 40, 5, '2014-03-15 22:02:53', 1),
('com_content.article', 28, 40, 6, '2014-03-15 22:02:53', 1),
('com_content.article', 28, 40, 12, '2014-03-15 22:02:53', 1),
('com_content.article', 29, 41, 5, '2014-03-15 22:14:36', 1),
('com_content.article', 29, 41, 6, '2014-03-15 22:14:36', 1),
('com_content.article', 29, 41, 12, '2014-03-15 22:14:36', 1),
('com_content.article', 30, 42, 5, '2014-03-15 22:15:11', 1),
('com_content.article', 30, 42, 10, '2014-03-15 22:15:11', 1),
('com_content.article', 30, 42, 12, '2014-03-15 22:15:11', 1),
('com_content.article', 31, 43, 5, '2014-03-15 22:15:41', 1),
('com_content.article', 31, 43, 10, '2014-03-15 22:15:41', 1),
('com_content.article', 31, 43, 12, '2014-03-15 22:15:41', 1),
('com_content.article', 32, 46, 11, '2014-03-15 22:18:13', 1),
('com_content.article', 32, 46, 12, '2014-03-15 22:18:13', 1),
('com_content.article', 33, 47, 11, '2014-03-15 22:18:44', 1),
('com_content.article', 33, 47, 12, '2014-03-15 22:18:44', 1),
('com_content.article', 34, 48, 11, '2014-03-15 22:19:08', 1),
('com_content.article', 34, 48, 12, '2014-03-15 22:19:08', 1),
('com_content.article', 35, 49, 11, '2014-03-15 22:19:51', 1),
('com_content.article', 35, 49, 12, '2014-03-15 22:19:51', 1),
('com_content.article', 36, 50, 11, '2014-03-15 22:20:14', 1),
('com_content.article', 36, 50, 12, '2014-03-15 22:20:14', 1),
('com_content.article', 37, 51, 11, '2014-03-15 22:20:38', 1),
('com_content.article', 37, 51, 12, '2014-03-15 22:20:38', 1),
('com_content.article', 38, 52, 11, '2014-03-15 22:21:06', 1),
('com_content.article', 38, 52, 12, '2014-03-15 22:21:06', 1),
('com_content.article', 39, 53, 11, '2014-03-15 22:21:42', 1),
('com_content.article', 39, 53, 12, '2014-03-15 22:21:42', 1),
('com_content.article', 40, 54, 11, '2014-03-15 22:22:05', 1),
('com_content.article', 40, 54, 12, '2014-03-15 22:22:05', 1),
('com_content.article', 41, 55, 2, '2014-03-15 22:32:44', 1),
('com_content.article', 42, 56, 2, '2014-03-15 22:32:49', 1),
('com_content.article', 43, 57, 2, '2014-03-15 22:32:53', 1),
('com_content.article', 44, 58, 2, '2014-03-15 22:33:02', 1),
('com_content.article', 45, 59, 2, '2014-03-15 22:33:06', 1),
('com_content.article', 46, 60, 2, '2014-03-15 22:33:11', 1),
('com_content.article', 47, 61, 2, '2014-03-15 22:32:21', 1),
('com_content.article', 48, 62, 2, '2014-03-15 22:32:08', 1),
('com_content.article', 49, 63, 2, '2014-03-15 22:34:07', 1),
('com_content.article', 50, 64, 2, '2014-03-15 22:34:52', 1),
('com_content.article', 51, 104, 4, '2014-03-15 22:52:41', 1),
('com_content.article', 51, 104, 12, '2014-03-15 22:52:41', 1),
('com_content.article', 52, 105, 4, '2014-03-15 22:53:14', 1),
('com_content.article', 52, 105, 12, '2014-03-15 22:53:14', 1),
('com_content.article', 53, 106, 4, '2014-03-15 22:53:39', 1),
('com_content.article', 53, 106, 12, '2014-03-15 22:53:39', 1),
('com_content.article', 54, 107, 4, '2014-03-15 22:54:02', 1),
('com_content.article', 54, 107, 12, '2014-03-15 22:54:02', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `f8ad7_content_frontpage`
--

CREATE TABLE IF NOT EXISTS `f8ad7_content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `f8ad7_content_frontpage`
--

INSERT INTO `f8ad7_content_frontpage` (`content_id`, `ordering`) VALUES
(5, 4),
(8, 3),
(10, 2),
(12, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `f8ad7_content_rating`
--

CREATE TABLE IF NOT EXISTS `f8ad7_content_rating` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(10) unsigned NOT NULL DEFAULT '0',
  `rating_count` int(10) unsigned NOT NULL DEFAULT '0',
  `lastip` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `f8ad7_content_types`
--

CREATE TABLE IF NOT EXISTS `f8ad7_content_types` (
  `type_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type_title` varchar(255) NOT NULL DEFAULT '',
  `type_alias` varchar(255) NOT NULL DEFAULT '',
  `table` varchar(255) NOT NULL DEFAULT '',
  `rules` text NOT NULL,
  `field_mappings` text NOT NULL,
  `router` varchar(255) NOT NULL DEFAULT '',
  `content_history_options` varchar(5120) DEFAULT NULL COMMENT 'JSON string for com_contenthistory options',
  PRIMARY KEY (`type_id`),
  KEY `idx_alias` (`type_alias`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

--
-- Дамп данных таблицы `f8ad7_content_types`
--

INSERT INTO `f8ad7_content_types` (`type_id`, `type_title`, `type_alias`, `table`, `rules`, `field_mappings`, `router`, `content_history_options`) VALUES
(1, 'Article', 'com_content.article', '{"special":{"dbtable":"#__content","key":"id","type":"Content","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"state","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"introtext", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"attribs", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"urls", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"asset_id"}, "special":{"fulltext":"fulltext"}}', 'ContentHelperRoute::getArticleRoute', '{"formFile":"administrator\\/components\\/com_content\\/models\\/forms\\/article.xml", "hideFields":["asset_id","checked_out","checked_out_time","version"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"],"convertToInt":["publish_up", "publish_down", "featured", "ordering"],"displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ]}'),
(2, 'Weblink', 'com_weblinks.weblink', '{"special":{"dbtable":"#__weblinks","key":"id","type":"Weblink","prefix":"WeblinksTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"state","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"description", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"urls", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"null"}, "special":{}}', 'WeblinksHelperRoute::getWeblinkRoute', '{"formFile":"administrator\\/components\\/com_weblinks\\/models\\/forms\\/weblink.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","featured","images"], "ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"], "convertToInt":["publish_up", "publish_down", "featured", "ordering"], "displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ]}'),
(3, 'Contact', 'com_contact.contact', '{"special":{"dbtable":"#__contact_details","key":"id","type":"Contact","prefix":"ContactTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"published","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"address", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"image", "core_urls":"webpage", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"null"}, "special":{"con_position":"con_position","suburb":"suburb","state":"state","country":"country","postcode":"postcode","telephone":"telephone","fax":"fax","misc":"misc","email_to":"email_to","default_con":"default_con","user_id":"user_id","mobile":"mobile","sortname1":"sortname1","sortname2":"sortname2","sortname3":"sortname3"}}', 'ContactHelperRoute::getContactRoute', '{"formFile":"administrator\\/components\\/com_contact\\/models\\/forms\\/contact.xml","hideFields":["default_con","checked_out","checked_out_time","version","xreference"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"],"convertToInt":["publish_up", "publish_down", "featured", "ordering"], "displayLookup":[ {"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ] }'),
(4, 'Newsfeed', 'com_newsfeeds.newsfeed', '{"special":{"dbtable":"#__newsfeeds","key":"id","type":"Newsfeed","prefix":"NewsfeedsTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"published","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"description", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"link", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"null"}, "special":{"numarticles":"numarticles","cache_time":"cache_time","rtl":"rtl"}}', 'NewsfeedsHelperRoute::getNewsfeedRoute', '{"formFile":"administrator\\/components\\/com_newsfeeds\\/models\\/forms\\/newsfeed.xml","hideFields":["asset_id","checked_out","checked_out_time","version"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"],"convertToInt":["publish_up", "publish_down", "featured", "ordering"],"displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ]}'),
(5, 'User', 'com_users.user', '{"special":{"dbtable":"#__users","key":"id","type":"User","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"null","core_alias":"username","core_created_time":"registerdate","core_modified_time":"lastvisitDate","core_body":"null", "core_hits":"null","core_publish_up":"null","core_publish_down":"null","access":"null", "core_params":"params", "core_featured":"null", "core_metadata":"null", "core_language":"null", "core_images":"null", "core_urls":"null", "core_version":"null", "core_ordering":"null", "core_metakey":"null", "core_metadesc":"null", "core_catid":"null", "core_xreference":"null", "asset_id":"null"}, "special":{}}', 'UsersHelperRoute::getUserRoute', ''),
(6, 'Article Category', 'com_content.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'ContentHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(7, 'Contact Category', 'com_contact.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'ContactHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(8, 'Newsfeeds Category', 'com_newsfeeds.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'NewsfeedsHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(9, 'Weblinks Category', 'com_weblinks.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'WeblinksHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(10, 'Tag', 'com_tags.tag', '{"special":{"dbtable":"#__tags","key":"tag_id","type":"Tag","prefix":"TagsTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"urls", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"null", "core_xreference":"null", "asset_id":"null"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path"}}', 'TagsHelperRoute::getTagRoute', '{"formFile":"administrator\\/components\\/com_tags\\/models\\/forms\\/tag.xml", "hideFields":["checked_out","checked_out_time","version", "lft", "rgt", "level", "path", "urls", "publish_up", "publish_down"],"ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"}, {"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}]}'),
(11, 'Banner', 'com_banners.banner', '{"special":{"dbtable":"#__banners","key":"id","type":"Banner","prefix":"BannersTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"published","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"description", "core_hits":"null","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"link", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"null", "asset_id":"null"}, "special":{"imptotal":"imptotal", "impmade":"impmade", "clicks":"clicks", "clickurl":"clickurl", "custombannercode":"custombannercode", "cid":"cid", "purchase_type":"purchase_type", "track_impressions":"track_impressions", "track_clicks":"track_clicks"}}', '', '{"formFile":"administrator\\/components\\/com_banners\\/models\\/forms\\/banner.xml", "hideFields":["checked_out","checked_out_time","version", "reset"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "imptotal", "impmade", "reset"], "convertToInt":["publish_up", "publish_down", "ordering"], "displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}, {"sourceColumn":"cid","targetTable":"#__banner_clients","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ]}'),
(12, 'Banners Category', 'com_banners.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special": {"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', '', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"], "convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(13, 'Banner Client', 'com_banners.client', '{"special":{"dbtable":"#__banner_clients","key":"id","type":"Client","prefix":"BannersTable"}}', '', '', '', '{"formFile":"administrator\\/components\\/com_banners\\/models\\/forms\\/client.xml", "hideFields":["checked_out","checked_out_time"], "ignoreChanges":["checked_out", "checked_out_time"], "convertToInt":[], "displayLookup":[]}'),
(14, 'User Notes', 'com_users.note', '{"special":{"dbtable":"#__user_notes","key":"id","type":"Note","prefix":"UsersTable"}}', '', '', '', '{"formFile":"administrator\\/components\\/com_users\\/models\\/forms\\/note.xml", "hideFields":["checked_out","checked_out_time", "publish_up", "publish_down"],"ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time"], "convertToInt":["publish_up", "publish_down"],"displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}, {"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}]}'),
(15, 'User Notes Category', 'com_users.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', '', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"], "convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}');

-- --------------------------------------------------------

--
-- Структура таблицы `f8ad7_core_log_searches`
--

CREATE TABLE IF NOT EXISTS `f8ad7_core_log_searches` (
  `search_term` varchar(128) NOT NULL DEFAULT '',
  `hits` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `f8ad7_djimageslider`
--

CREATE TABLE IF NOT EXISTS `f8ad7_djimageslider` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL DEFAULT '',
  `image` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`,`published`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Дамп данных таблицы `f8ad7_djimageslider`
--

INSERT INTO `f8ad7_djimageslider` (`id`, `catid`, `title`, `alias`, `image`, `description`, `published`, `publish_up`, `publish_down`, `checked_out`, `checked_out_time`, `ordering`, `params`) VALUES
(1, 8, 'joomla org', 'joomla-org', 'images/sampledata/slider/joomla30.gif', '<h3>CMS Joomla!</h3>\r\n<h5>самая популярная система управления.</h5>\r\n<table border="0">\r\n<tbody>\r\n<tr>\r\n<td style="width: 25px;"><img style="float: left;" src="images/sampledata/slider/li.gif" alt="li" width="16" height="48" /></td>\r\n<td>\r\n<h5>Простая и удобная платформа</h5>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style="width: 25px;"><img style="float: left;" src="images/sampledata/slider/li.gif" alt="li" width="16" height="48" /></td>\r\n<td>\r\n<h5>Более 35 миллионов загрузок</h5>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style="width: 25px;"><img style="float: left;" src="images/sampledata/slider/li.gif" alt="li" width="16" height="48" /></td>\r\n<td>\r\n<h5>Тысячи шаблонов</h5>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style="width: 25px;"><img style="float: left;" src="images/sampledata/slider/li.gif" alt="li" width="16" height="48" /></td>\r\n<td>\r\n<h5>Более 9000 расширений</h5>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<h5><a href="http://joomla.ru/downloads/joomla" target="_blank">Скачать joomla!</a></h5>', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 1, '{"link_type":"","link_menu":"101","link_url":"","link_article":"","link_target":""}'),
(2, 8, 'Хостинг для Joomla от REG.RU', 'khosting-dlya-joomla-ot-reg-ru', 'images/sampledata/slider/regru.gif', '<h3>Хостинг для Joomla от REG.RU</h3>\r\n<p> </p>\r\n<table border="0">\r\n<tbody>\r\n<tr>\r\n<td style="width: 25px;"><img style="float: left;" src="images/sampledata/slider/li.gif" alt="li" width="16" height="48" /></td>\r\n<td>\r\n<h5>Скидка 15% на заказ хостинга и VPS</h5>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style="width: 25px;"><img style="float: left;" src="images/sampledata/slider/li.gif" alt="li" width="16" height="48" /></td>\r\n<td>\r\n<h5>Скидка действует до 7 марта 2013 года.</h5>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style="width: 25px;"><img style="float: left;" src="images/sampledata/slider/li.gif" alt="li" width="16" height="48" /></td>\r\n<td>\r\n<h5>Промокод купона JOOMLA-FEB-HOSTING-SALE</h5>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<h5><a href="http://hosting.reg.ru/hosting/joomla" target="_blank">Заказать хостинг</a></h5>', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 2, '{"link_type":"","link_menu":"101","link_url":"","link_article":"","link_target":""}');

-- --------------------------------------------------------

--
-- Структура таблицы `f8ad7_extensions`
--

CREATE TABLE IF NOT EXISTS `f8ad7_extensions` (
  `extension_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `type` varchar(20) NOT NULL,
  `element` varchar(100) NOT NULL,
  `folder` varchar(100) NOT NULL,
  `client_id` tinyint(3) NOT NULL,
  `enabled` tinyint(3) NOT NULL DEFAULT '1',
  `access` int(10) unsigned NOT NULL DEFAULT '1',
  `protected` tinyint(3) NOT NULL DEFAULT '0',
  `manifest_cache` text NOT NULL,
  `params` text NOT NULL,
  `custom_data` text NOT NULL,
  `system_data` text NOT NULL,
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) DEFAULT '0',
  `state` int(11) DEFAULT '0',
  PRIMARY KEY (`extension_id`),
  KEY `element_clientid` (`element`,`client_id`),
  KEY `element_folder_clientid` (`element`,`folder`,`client_id`),
  KEY `extension` (`type`,`element`,`folder`,`client_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10092 ;

--
-- Дамп данных таблицы `f8ad7_extensions`
--

INSERT INTO `f8ad7_extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(1, 'com_mailto', 'component', 'com_mailto', '', 0, 1, 1, 1, '{"name":"com_mailto","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MAILTO_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(2, 'com_wrapper', 'component', 'com_wrapper', '', 0, 1, 1, 1, '{"name":"com_wrapper","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_WRAPPER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(3, 'com_admin', 'component', 'com_admin', '', 1, 1, 1, 1, '{"name":"com_admin","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_ADMIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(4, 'com_banners', 'component', 'com_banners', '', 1, 1, 1, 0, '{"name":"com_banners","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_BANNERS_XML_DESCRIPTION","group":""}', '{"purchase_type":"3","track_impressions":"0","track_clicks":"0","metakey_prefix":"","save_history":"1","history_limit":10}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(5, 'com_cache', 'component', 'com_cache', '', 1, 1, 1, 1, '{"name":"com_cache","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CACHE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(6, 'com_categories', 'component', 'com_categories', '', 1, 1, 1, 1, '{"name":"com_categories","type":"component","creationDate":"December 2007","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CATEGORIES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(7, 'com_checkin', 'component', 'com_checkin', '', 1, 1, 1, 1, '{"name":"com_checkin","type":"component","creationDate":"Unknown","author":"Joomla! Project","copyright":"(C) 2005 - 2008 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CHECKIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(8, 'com_contact', 'component', 'com_contact', '', 1, 1, 1, 0, '{"name":"com_contact","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONTACT_XML_DESCRIPTION","group":""}', '{"show_contact_category":"hide","save_history":"1","history_limit":10,"show_contact_list":"0","presentation_style":"sliders","show_name":"1","show_position":"1","show_email":"0","show_street_address":"1","show_suburb":"1","show_state":"1","show_postcode":"1","show_country":"1","show_telephone":"1","show_mobile":"1","show_fax":"1","show_webpage":"1","show_misc":"1","show_image":"1","image":"","allow_vcard":"0","show_articles":"0","show_profile":"0","show_links":"0","linka_name":"","linkb_name":"","linkc_name":"","linkd_name":"","linke_name":"","contact_icons":"0","icon_address":"","icon_email":"","icon_telephone":"","icon_mobile":"","icon_fax":"","icon_misc":"","show_headings":"1","show_position_headings":"1","show_email_headings":"0","show_telephone_headings":"1","show_mobile_headings":"0","show_fax_headings":"0","allow_vcard_headings":"0","show_suburb_headings":"1","show_state_headings":"1","show_country_headings":"1","show_email_form":"1","show_email_copy":"1","banned_email":"","banned_subject":"","banned_text":"","validate_session":"1","custom_reply":"0","redirect":"","show_category_crumb":"0","metakey":"","metadesc":"","robots":"","author":"","rights":"","xreference":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(9, 'com_cpanel', 'component', 'com_cpanel', '', 1, 1, 1, 1, '{"name":"com_cpanel","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CPANEL_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10, 'com_installer', 'component', 'com_installer', '', 1, 1, 1, 1, '{"name":"com_installer","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_INSTALLER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(11, 'com_languages', 'component', 'com_languages', '', 1, 1, 1, 1, '{"name":"com_languages","type":"component","creationDate":"2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_LANGUAGES_XML_DESCRIPTION","group":""}', '{"administrator":"ru-RU","site":"ru-RU"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(12, 'com_login', 'component', 'com_login', '', 1, 1, 1, 1, '{"name":"com_login","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_LOGIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(13, 'com_media', 'component', 'com_media', '', 1, 1, 0, 1, '{"name":"com_media","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MEDIA_XML_DESCRIPTION","group":""}', '{"upload_extensions":"bmp,csv,doc,gif,ico,jpg,jpeg,odg,odp,ods,odt,pdf,png,ppt,swf,txt,xcf,xls,BMP,CSV,DOC,GIF,ICO,JPG,JPEG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,SWF,TXT,XCF,XLS","upload_maxsize":"10","file_path":"images","image_path":"images","restrict_uploads":"1","allowed_media_usergroup":"3","check_mime":"1","image_extensions":"bmp,gif,jpg,png","ignore_extensions":"","upload_mime":"image\\/jpeg,image\\/gif,image\\/png,image\\/bmp,application\\/x-shockwave-flash,application\\/msword,application\\/excel,application\\/pdf,application\\/powerpoint,text\\/plain,application\\/x-zip","upload_mime_illegal":"text\\/html"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(14, 'com_menus', 'component', 'com_menus', '', 1, 1, 1, 1, '{"name":"com_menus","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MENUS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(15, 'com_messages', 'component', 'com_messages', '', 1, 1, 1, 1, '{"name":"com_messages","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MESSAGES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(16, 'com_modules', 'component', 'com_modules', '', 1, 1, 1, 1, '{"name":"com_modules","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MODULES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(17, 'com_newsfeeds', 'component', 'com_newsfeeds', '', 1, 1, 1, 0, '{"name":"com_newsfeeds","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_NEWSFEEDS_XML_DESCRIPTION","group":""}', '{"newsfeed_layout":"_:default","save_history":"1","history_limit":5,"show_feed_image":"1","show_feed_description":"1","show_item_description":"1","feed_character_count":"0","feed_display_order":"des","float_first":"right","float_second":"right","show_tags":"1","category_layout":"_:default","show_category_title":"1","show_description":"1","show_description_image":"1","maxLevel":"-1","show_empty_categories":"0","show_subcat_desc":"1","show_cat_items":"1","show_cat_tags":"1","show_base_description":"1","maxLevelcat":"-1","show_empty_categories_cat":"0","show_subcat_desc_cat":"1","show_cat_items_cat":"1","filter_field":"1","show_pagination_limit":"1","show_headings":"1","show_articles":"0","show_link":"1","show_pagination":"1","show_pagination_results":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(18, 'com_plugins', 'component', 'com_plugins', '', 1, 1, 1, 1, '{"name":"com_plugins","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_PLUGINS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(19, 'com_search', 'component', 'com_search', '', 1, 1, 1, 0, '{"name":"com_search","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_SEARCH_XML_DESCRIPTION","group":""}', '{"enabled":"0","show_date":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(20, 'com_templates', 'component', 'com_templates', '', 1, 1, 1, 1, '{"name":"com_templates","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_TEMPLATES_XML_DESCRIPTION","group":""}', '{"template_positions_display":"1","upload_limit":"2","image_formats":"gif,bmp,jpg,jpeg,png","source_formats":"txt,less,ini,xml,js,php,css","font_formats":"woff,ttf,otf","compressed_formats":"zip"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(21, 'com_weblinks', 'component', 'com_weblinks', '', 1, 1, 1, 0, '{"name":"com_weblinks","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_WEBLINKS_XML_DESCRIPTION","group":""}', '{"target":"0","save_history":"1","history_limit":5,"count_clicks":"1","icons":1,"link_icons":"","float_first":"right","float_second":"right","show_tags":"1","category_layout":"_:default","show_category_title":"1","show_description":"1","show_description_image":"1","maxLevel":"-1","show_empty_categories":"0","show_subcat_desc":"1","show_cat_num_links":"1","show_cat_tags":"1","show_base_description":"1","maxLevelcat":"-1","show_empty_categories_cat":"0","show_subcat_desc_cat":"1","show_cat_num_links_cat":"1","filter_field":"1","show_pagination_limit":"1","show_headings":"0","show_link_description":"1","show_link_hits":"1","show_pagination":"2","show_pagination_results":"1","show_feed_link":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(22, 'com_content', 'component', 'com_content', '', 1, 1, 0, 1, '{"name":"com_content","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONTENT_XML_DESCRIPTION","group":""}', '{"article_layout":"_:default","show_title":"1","link_titles":"1","show_intro":"1","info_block_position":"0","show_category":"0","link_category":"1","show_parent_category":"0","link_parent_category":"0","show_author":"0","link_author":"0","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"1","show_vote":"0","show_readmore":"1","show_readmore_title":"0","readmore_limit":"100","show_tags":"1","show_icons":"1","show_print_icon":"1","show_email_icon":"1","show_hits":"0","show_noauth":"0","urls_position":"0","show_publishing_options":"1","show_article_options":"1","save_history":"1","history_limit":10,"show_urls_images_frontend":"0","show_urls_images_backend":"1","targeta":0,"targetb":0,"targetc":0,"float_intro":"left","float_fulltext":"left","category_layout":"_:blog","show_category_heading_title_text":"1","show_category_title":"0","show_description":"0","show_description_image":"0","maxLevel":"1","show_empty_categories":"0","show_no_articles":"1","show_subcat_desc":"1","show_cat_num_articles":"0","show_base_description":"1","maxLevelcat":"-1","show_empty_categories_cat":"0","show_subcat_desc_cat":"1","show_cat_num_articles_cat":"1","num_leading_articles":"1","num_intro_articles":"4","num_columns":"2","num_links":"4","multi_column_order":"0","show_subcategory_content":"0","show_pagination_limit":"1","filter_field":"hide","show_headings":"1","list_show_date":"0","date_format":"","list_show_hits":"1","list_show_author":"1","orderby_pri":"order","orderby_sec":"rdate","order_date":"published","show_pagination":"2","show_pagination_results":"1","show_feed_link":"1","feed_summary":"0","feed_show_readmore":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(23, 'com_config', 'component', 'com_config', '', 1, 1, 0, 1, '{"name":"com_config","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONFIG_XML_DESCRIPTION","group":""}', '{"filters":{"1":{"filter_type":"NH","filter_tags":"","filter_attributes":""},"9":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"6":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"7":{"filter_type":"NONE","filter_tags":"","filter_attributes":""},"2":{"filter_type":"NH","filter_tags":"","filter_attributes":""},"3":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"4":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"5":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"8":{"filter_type":"NONE","filter_tags":"","filter_attributes":""}}}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(24, 'com_redirect', 'component', 'com_redirect', '', 1, 1, 0, 1, '{"name":"com_redirect","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_REDIRECT_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(25, 'com_users', 'component', 'com_users', '', 1, 1, 0, 1, '{"name":"com_users","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_USERS_XML_DESCRIPTION","group":""}', '{"allowUserRegistration":"1","new_usertype":"2","guest_usergroup":"9","sendpassword":"1","useractivation":"1","mail_to_admin":"0","captcha":"","frontend_userparams":"1","site_language":"0","change_login_name":"0","reset_count":"10","reset_time":"1","minimum_length":"4","minimum_integers":"0","minimum_symbols":"0","minimum_uppercase":"0","save_history":"1","history_limit":5,"mailSubjectPrefix":"","mailBodySuffix":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(27, 'com_finder', 'component', 'com_finder', '', 1, 1, 0, 0, '{"name":"com_finder","type":"component","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_FINDER_XML_DESCRIPTION","group":""}', '{"show_description":"1","description_length":255,"allow_empty_query":"0","show_url":"1","show_advanced":"1","expand_advanced":"0","show_date_filters":"0","highlight_terms":"1","opensearch_name":"","opensearch_description":"","batch_size":"50","memory_table_limit":30000,"title_multiplier":"1.7","text_multiplier":"0.7","meta_multiplier":"1.2","path_multiplier":"2.0","misc_multiplier":"0.3","stemmer":"snowball"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(28, 'com_joomlaupdate', 'component', 'com_joomlaupdate', '', 1, 1, 0, 1, '{"name":"com_joomlaupdate","type":"component","creationDate":"February 2012","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_JOOMLAUPDATE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(29, 'com_tags', 'component', 'com_tags', '', 1, 1, 1, 1, '{"name":"com_tags","type":"component","creationDate":"December 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.0","description":"COM_TAGS_XML_DESCRIPTION","group":""}', '{"tag_layout":"_:default","save_history":"1","history_limit":5,"show_tag_title":"0","tag_list_show_tag_image":"0","tag_list_show_tag_description":"0","tag_list_image":"","show_tag_num_items":"0","tag_list_orderby":"title","tag_list_orderby_direction":"ASC","show_headings":"0","tag_list_show_date":"0","tag_list_show_item_image":"0","tag_list_show_item_description":"0","tag_list_item_maximum_characters":0,"return_any_or_all":"1","include_children":"0","maximum":200,"tag_list_language_filter":"all","tags_layout":"_:default","all_tags_orderby":"title","all_tags_orderby_direction":"ASC","all_tags_show_tag_image":"0","all_tags_show_tag_descripion":"0","all_tags_tag_maximum_characters":20,"all_tags_show_tag_hits":"0","filter_field":"1","show_pagination_limit":"1","show_pagination":"2","show_pagination_results":"1","tag_field_ajax_mode":"1","show_feed_link":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(30, 'com_contenthistory', 'component', 'com_contenthistory', '', 1, 1, 1, 0, '{"name":"com_contenthistory","type":"component","creationDate":"May 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"COM_CONTENTHISTORY_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(31, 'com_ajax', 'component', 'com_ajax', '', 1, 1, 1, 0, '{"name":"com_ajax","type":"component","creationDate":"August 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"COM_AJAX_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(32, 'com_postinstall', 'component', 'com_postinstall', '', 1, 1, 1, 1, '{"name":"com_postinstall","type":"component","creationDate":"September 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"COM_POSTINSTALL_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(100, 'PHPMailer', 'library', 'phpmailer', '', 0, 1, 1, 1, '{"name":"PHPMailer","type":"library","creationDate":"2001","author":"PHPMailer","copyright":"(c) 2001-2003, Brent R. Matzelle, (c) 2004-2009, Andy Prevost. All Rights Reserved., (c) 2010-2013, Jim Jagielski. All Rights Reserved.","authorEmail":"jimjag@gmail.com","authorUrl":"https:\\/\\/github.com\\/PHPMailer\\/PHPMailer","version":"5.2.6","description":"LIB_PHPMAILER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(101, 'SimplePie', 'library', 'simplepie', '', 0, 1, 1, 1, '{"name":"SimplePie","type":"library","creationDate":"2004","author":"SimplePie","copyright":"Copyright (c) 2004-2009, Ryan Parman and Geoffrey Sneddon","authorEmail":"","authorUrl":"http:\\/\\/simplepie.org\\/","version":"1.2","description":"LIB_SIMPLEPIE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(102, 'phputf8', 'library', 'phputf8', '', 0, 1, 1, 1, '{"name":"phputf8","type":"library","creationDate":"2006","author":"Harry Fuecks","copyright":"Copyright various authors","authorEmail":"hfuecks@gmail.com","authorUrl":"http:\\/\\/sourceforge.net\\/projects\\/phputf8","version":"0.5","description":"LIB_PHPUTF8_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(103, 'Joomla! Platform', 'library', 'joomla', '', 0, 1, 1, 1, '{"name":"Joomla! Platform","type":"library","creationDate":"2008","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"http:\\/\\/www.joomla.org","version":"13.1","description":"LIB_JOOMLA_XML_DESCRIPTION","group":""}', '{"mediaversion":"3742a5e70d4cdfa171ee8e71803174b8"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(104, 'IDNA Convert', 'library', 'idna_convert', '', 0, 1, 1, 1, '{"name":"IDNA Convert","type":"library","creationDate":"2004","author":"phlyLabs","copyright":"2004-2011 phlyLabs Berlin, http:\\/\\/phlylabs.de","authorEmail":"phlymail@phlylabs.de","authorUrl":"http:\\/\\/phlylabs.de","version":"0.8.0","description":"LIB_IDNA_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(105, 'FOF', 'library', 'fof', '', 0, 1, 1, 1, '{"name":"FOF","type":"library","creationDate":"2013-12-14","author":"Nicholas K. Dionysopoulos \\/ Akeeba Ltd","copyright":"(C)2011-2013 Nicholas K. Dionysopoulos","authorEmail":"nicholas@akeebabackup.com","authorUrl":"https:\\/\\/www.akeebabackup.com","version":"2.1.1","description":"LIB_FOF_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(106, 'PHPass', 'library', 'phpass', '', 0, 1, 1, 1, '{"name":"PHPass","type":"library","creationDate":"2004-2006","author":"Solar Designer","copyright":"","authorEmail":"solar@openwall.com","authorUrl":"http:\\/\\/www.openwall.com\\/phpass\\/","version":"0.3","description":"LIB_PHPASS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(200, 'mod_articles_archive', 'module', 'mod_articles_archive', '', 0, 1, 1, 0, '{"name":"mod_articles_archive","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters.\\n\\t\\tAll rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_ARCHIVE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(201, 'mod_articles_latest', 'module', 'mod_articles_latest', '', 0, 1, 1, 0, '{"name":"mod_articles_latest","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LATEST_NEWS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(202, 'mod_articles_popular', 'module', 'mod_articles_popular', '', 0, 1, 1, 0, '{"name":"mod_articles_popular","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_POPULAR_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(203, 'mod_banners', 'module', 'mod_banners', '', 0, 1, 1, 0, '{"name":"mod_banners","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_BANNERS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(204, 'mod_breadcrumbs', 'module', 'mod_breadcrumbs', '', 0, 1, 1, 1, '{"name":"mod_breadcrumbs","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_BREADCRUMBS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(205, 'mod_custom', 'module', 'mod_custom', '', 0, 1, 1, 1, '{"name":"mod_custom","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_CUSTOM_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(206, 'mod_feed', 'module', 'mod_feed', '', 0, 1, 1, 0, '{"name":"mod_feed","type":"module","creationDate":"July 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FEED_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(207, 'mod_footer', 'module', 'mod_footer', '', 0, 1, 1, 0, '{"name":"mod_footer","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FOOTER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(208, 'mod_login', 'module', 'mod_login', '', 0, 1, 1, 1, '{"name":"mod_login","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(209, 'mod_menu', 'module', 'mod_menu', '', 0, 1, 1, 1, '{"name":"mod_menu","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MENU_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(210, 'mod_articles_news', 'module', 'mod_articles_news', '', 0, 1, 1, 0, '{"name":"mod_articles_news","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_NEWS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(211, 'mod_random_image', 'module', 'mod_random_image', '', 0, 1, 1, 0, '{"name":"mod_random_image","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_RANDOM_IMAGE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(212, 'mod_related_items', 'module', 'mod_related_items', '', 0, 1, 1, 0, '{"name":"mod_related_items","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_RELATED_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(213, 'mod_search', 'module', 'mod_search', '', 0, 1, 1, 0, '{"name":"mod_search","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SEARCH_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(214, 'mod_stats', 'module', 'mod_stats', '', 0, 1, 1, 0, '{"name":"mod_stats","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(215, 'mod_syndicate', 'module', 'mod_syndicate', '', 0, 1, 1, 1, '{"name":"mod_syndicate","type":"module","creationDate":"May 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SYNDICATE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(216, 'mod_users_latest', 'module', 'mod_users_latest', '', 0, 1, 1, 0, '{"name":"mod_users_latest","type":"module","creationDate":"December 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_USERS_LATEST_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(217, 'mod_weblinks', 'module', 'mod_weblinks', '', 0, 1, 1, 0, '{"name":"mod_weblinks","type":"module","creationDate":"July 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_WEBLINKS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(218, 'mod_whosonline', 'module', 'mod_whosonline', '', 0, 1, 1, 0, '{"name":"mod_whosonline","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_WHOSONLINE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(219, 'mod_wrapper', 'module', 'mod_wrapper', '', 0, 1, 1, 0, '{"name":"mod_wrapper","type":"module","creationDate":"October 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_WRAPPER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(220, 'mod_articles_category', 'module', 'mod_articles_category', '', 0, 1, 1, 0, '{"name":"mod_articles_category","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_CATEGORY_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(221, 'mod_articles_categories', 'module', 'mod_articles_categories', '', 0, 1, 1, 0, '{"name":"mod_articles_categories","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_CATEGORIES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(222, 'mod_languages', 'module', 'mod_languages', '', 0, 1, 1, 1, '{"name":"mod_languages","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LANGUAGES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(223, 'mod_finder', 'module', 'mod_finder', '', 0, 1, 0, 0, '{"name":"mod_finder","type":"module","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FINDER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(300, 'mod_custom', 'module', 'mod_custom', '', 1, 1, 1, 1, '{"name":"mod_custom","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_CUSTOM_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(301, 'mod_feed', 'module', 'mod_feed', '', 1, 1, 1, 0, '{"name":"mod_feed","type":"module","creationDate":"July 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FEED_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(302, 'mod_latest', 'module', 'mod_latest', '', 1, 1, 1, 0, '{"name":"mod_latest","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LATEST_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(303, 'mod_logged', 'module', 'mod_logged', '', 1, 1, 1, 0, '{"name":"mod_logged","type":"module","creationDate":"January 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGGED_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(304, 'mod_login', 'module', 'mod_login', '', 1, 1, 1, 1, '{"name":"mod_login","type":"module","creationDate":"March 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(305, 'mod_menu', 'module', 'mod_menu', '', 1, 1, 1, 0, '{"name":"mod_menu","type":"module","creationDate":"March 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MENU_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(307, 'mod_popular', 'module', 'mod_popular', '', 1, 1, 1, 0, '{"name":"mod_popular","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_POPULAR_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(308, 'mod_quickicon', 'module', 'mod_quickicon', '', 1, 1, 1, 1, '{"name":"mod_quickicon","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_QUICKICON_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(309, 'mod_status', 'module', 'mod_status', '', 1, 1, 1, 0, '{"name":"mod_status","type":"module","creationDate":"Feb 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATUS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(310, 'mod_submenu', 'module', 'mod_submenu', '', 1, 1, 1, 0, '{"name":"mod_submenu","type":"module","creationDate":"Feb 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SUBMENU_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(311, 'mod_title', 'module', 'mod_title', '', 1, 1, 1, 0, '{"name":"mod_title","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_TITLE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(312, 'mod_toolbar', 'module', 'mod_toolbar', '', 1, 1, 1, 1, '{"name":"mod_toolbar","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_TOOLBAR_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(313, 'mod_multilangstatus', 'module', 'mod_multilangstatus', '', 1, 1, 1, 0, '{"name":"mod_multilangstatus","type":"module","creationDate":"September 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MULTILANGSTATUS_XML_DESCRIPTION","group":""}', '{"cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(314, 'mod_version', 'module', 'mod_version', '', 1, 1, 1, 0, '{"name":"mod_version","type":"module","creationDate":"January 2012","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_VERSION_XML_DESCRIPTION","group":""}', '{"format":"short","product":"1","cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(315, 'mod_stats_admin', 'module', 'mod_stats_admin', '', 1, 1, 1, 0, '{"name":"mod_stats_admin","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATS_XML_DESCRIPTION","group":""}', '{"serverinfo":"0","siteinfo":"0","counter":"0","increase":"0","cache":"1","cache_time":"900","cachemode":"static"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(316, 'mod_tags_popular', 'module', 'mod_tags_popular', '', 0, 1, 1, 0, '{"name":"mod_tags_popular","type":"module","creationDate":"January 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.0","description":"MOD_TAGS_POPULAR_XML_DESCRIPTION","group":""}', '{"maximum":"5","timeframe":"alltime","owncache":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(317, 'mod_tags_similar', 'module', 'mod_tags_similar', '', 0, 1, 1, 0, '{"name":"mod_tags_similar","type":"module","creationDate":"January 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.0","description":"MOD_TAGS_SIMILAR_XML_DESCRIPTION","group":""}', '{"maximum":"5","matchtype":"any","owncache":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(400, 'plg_authentication_gmail', 'plugin', 'gmail', 'authentication', 0, 0, 1, 0, '{"name":"plg_authentication_gmail","type":"plugin","creationDate":"February 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_GMAIL_XML_DESCRIPTION","group":""}', '{"applysuffix":"0","suffix":"","verifypeer":"1","user_blacklist":""}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(401, 'plg_authentication_joomla', 'plugin', 'joomla', 'authentication', 0, 1, 1, 1, '{"name":"plg_authentication_joomla","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_AUTH_JOOMLA_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(402, 'plg_authentication_ldap', 'plugin', 'ldap', 'authentication', 0, 0, 1, 0, '{"name":"plg_authentication_ldap","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LDAP_XML_DESCRIPTION","group":""}', '{"host":"","port":"389","use_ldapV3":"0","negotiate_tls":"0","no_referrals":"0","auth_method":"bind","base_dn":"","search_string":"","users_dn":"","username":"admin","password":"bobby7","ldap_fullname":"fullName","ldap_email":"mail","ldap_uid":"uid"}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(403, 'plg_content_contact', 'plugin', 'contact', 'content', 0, 1, 1, 0, '{"name":"plg_content_contact","type":"plugin","creationDate":"January 2014","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.2","description":"PLG_CONTENT_CONTACT_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(404, 'plg_content_emailcloak', 'plugin', 'emailcloak', 'content', 0, 1, 1, 0, '{"name":"plg_content_emailcloak","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_EMAILCLOAK_XML_DESCRIPTION","group":""}', '{"mode":"1"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(406, 'plg_content_loadmodule', 'plugin', 'loadmodule', 'content', 0, 1, 1, 0, '{"name":"plg_content_loadmodule","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LOADMODULE_XML_DESCRIPTION","group":""}', '{"style":"xhtml"}', '', '', 0, '2011-09-18 15:22:50', 0, 0),
(407, 'plg_content_pagebreak', 'plugin', 'pagebreak', 'content', 0, 1, 1, 0, '{"name":"plg_content_pagebreak","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_PAGEBREAK_XML_DESCRIPTION","group":""}', '{"title":"1","multipage_toc":"1","showall":"1"}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(408, 'plg_content_pagenavigation', 'plugin', 'pagenavigation', 'content', 0, 1, 1, 0, '{"name":"plg_content_pagenavigation","type":"plugin","creationDate":"January 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_PAGENAVIGATION_XML_DESCRIPTION","group":""}', '{"position":"1"}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(409, 'plg_content_vote', 'plugin', 'vote', 'content', 0, 1, 1, 0, '{"name":"plg_content_vote","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_VOTE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(410, 'plg_editors_codemirror', 'plugin', 'codemirror', 'editors', 0, 1, 1, 1, '{"name":"plg_editors_codemirror","type":"plugin","creationDate":"28 March 2011","author":"Marijn Haverbeke","copyright":"","authorEmail":"N\\/A","authorUrl":"","version":"3.15","description":"PLG_CODEMIRROR_XML_DESCRIPTION","group":""}', '{"lineNumbers":"1","lineWrapping":"1","matchTags":"1","matchBrackets":"1","marker-gutter":"1","autoCloseTags":"1","autoCloseBrackets":"1","autoFocus":"1","theme":"default","tabmode":"indent"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(411, 'plg_editors_none', 'plugin', 'none', 'editors', 0, 1, 1, 1, '{"name":"plg_editors_none","type":"plugin","creationDate":"August 2004","author":"Unknown","copyright":"","authorEmail":"N\\/A","authorUrl":"","version":"3.0.0","description":"PLG_NONE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(412, 'plg_editors_tinymce', 'plugin', 'tinymce', 'editors', 0, 1, 1, 0, '{"name":"plg_editors_tinymce","type":"plugin","creationDate":"2005-2013","author":"Moxiecode Systems AB","copyright":"Moxiecode Systems AB","authorEmail":"N\\/A","authorUrl":"tinymce.moxiecode.com","version":"4.0.18","description":"PLG_TINY_XML_DESCRIPTION","group":""}', '{"mode":"2","skin":"0","mobile":"0","entity_encoding":"raw","lang_mode":"1","text_direction":"ltr","content_css":"1","content_css_custom":"","relative_urls":"1","newlines":"0","invalid_elements":"script,applet,iframe","extended_elements":",@[data-lightbox],@[data-spotlight]","html_height":"550","html_width":"750","resizing":"1","element_path":"1","fonts":"1","paste":"1","searchreplace":"1","insertdate":"1","colors":"1","table":"1","smilies":"1","hr":"1","link":"1","media":"1","print":"1","directionality":"1","fullscreen":"1","alignment":"1","visualchars":"1","visualblocks":"1","nonbreaking":"1","template":"1","blockquote":"1","wordcount":"1","advlist":"1","autosave":"1","contextmenu":"1","inlinepopups":"1","custom_plugin":"","custom_button":""}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(413, 'plg_editors-xtd_article', 'plugin', 'article', 'editors-xtd', 0, 1, 1, 1, '{"name":"plg_editors-xtd_article","type":"plugin","creationDate":"October 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_ARTICLE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(414, 'plg_editors-xtd_image', 'plugin', 'image', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_image","type":"plugin","creationDate":"August 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_IMAGE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(415, 'plg_editors-xtd_pagebreak', 'plugin', 'pagebreak', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_pagebreak","type":"plugin","creationDate":"August 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_EDITORSXTD_PAGEBREAK_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(416, 'plg_editors-xtd_readmore', 'plugin', 'readmore', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_readmore","type":"plugin","creationDate":"March 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_READMORE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 4, 0);
INSERT INTO `f8ad7_extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(417, 'plg_search_categories', 'plugin', 'categories', 'search', 0, 1, 1, 0, '{"name":"plg_search_categories","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CATEGORIES_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(418, 'plg_search_contacts', 'plugin', 'contacts', 'search', 0, 1, 1, 0, '{"name":"plg_search_contacts","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CONTACTS_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(419, 'plg_search_content', 'plugin', 'content', 'search', 0, 1, 1, 0, '{"name":"plg_search_content","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CONTENT_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(420, 'plg_search_newsfeeds', 'plugin', 'newsfeeds', 'search', 0, 1, 1, 0, '{"name":"plg_search_newsfeeds","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_NEWSFEEDS_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(421, 'plg_search_weblinks', 'plugin', 'weblinks', 'search', 0, 1, 1, 0, '{"name":"plg_search_weblinks","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_WEBLINKS_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(422, 'plg_system_languagefilter', 'plugin', 'languagefilter', 'system', 0, 0, 1, 1, '{"name":"plg_system_languagefilter","type":"plugin","creationDate":"July 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LANGUAGEFILTER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(423, 'plg_system_p3p', 'plugin', 'p3p', 'system', 0, 1, 1, 0, '{"name":"plg_system_p3p","type":"plugin","creationDate":"September 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_P3P_XML_DESCRIPTION","group":""}', '{"headers":"NOI ADM DEV PSAi COM NAV OUR OTRo STP IND DEM"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(424, 'plg_system_cache', 'plugin', 'cache', 'system', 0, 0, 1, 1, '{"name":"plg_system_cache","type":"plugin","creationDate":"February 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CACHE_XML_DESCRIPTION","group":""}', '{"browsercache":"0","cachetime":"15"}', '', '', 0, '0000-00-00 00:00:00', 9, 0),
(425, 'plg_system_debug', 'plugin', 'debug', 'system', 0, 1, 1, 0, '{"name":"plg_system_debug","type":"plugin","creationDate":"December 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_DEBUG_XML_DESCRIPTION","group":""}', '{"profile":"1","queries":"1","memory":"1","language_files":"1","language_strings":"1","strip-first":"1","strip-prefix":"","strip-suffix":""}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(426, 'plg_system_log', 'plugin', 'log', 'system', 0, 1, 1, 1, '{"name":"plg_system_log","type":"plugin","creationDate":"April 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LOG_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(427, 'plg_system_redirect', 'plugin', 'redirect', 'system', 0, 0, 1, 1, '{"name":"plg_system_redirect","type":"plugin","creationDate":"April 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_REDIRECT_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(428, 'plg_system_remember', 'plugin', 'remember', 'system', 0, 1, 1, 1, '{"name":"plg_system_remember","type":"plugin","creationDate":"April 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_REMEMBER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(429, 'plg_system_sef', 'plugin', 'sef', 'system', 0, 1, 1, 0, '{"name":"plg_system_sef","type":"plugin","creationDate":"December 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEF_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 8, 0),
(430, 'plg_system_logout', 'plugin', 'logout', 'system', 0, 1, 1, 1, '{"name":"plg_system_logout","type":"plugin","creationDate":"April 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LOGOUT_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(431, 'plg_user_contactcreator', 'plugin', 'contactcreator', 'user', 0, 0, 1, 0, '{"name":"plg_user_contactcreator","type":"plugin","creationDate":"August 2009","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTACTCREATOR_XML_DESCRIPTION","group":""}', '{"autowebpage":"","category":"34","autopublish":"0"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(432, 'plg_user_joomla', 'plugin', 'joomla', 'user', 0, 1, 1, 0, '{"name":"plg_user_joomla","type":"plugin","creationDate":"December 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2009 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_USER_JOOMLA_XML_DESCRIPTION","group":""}', '{"strong_passwords":"1","autoregister":"1"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(433, 'plg_user_profile', 'plugin', 'profile', 'user', 0, 0, 1, 0, '{"name":"plg_user_profile","type":"plugin","creationDate":"January 2008","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_USER_PROFILE_XML_DESCRIPTION","group":""}', '{"register-require_address1":"1","register-require_address2":"1","register-require_city":"1","register-require_region":"1","register-require_country":"1","register-require_postal_code":"1","register-require_phone":"1","register-require_website":"1","register-require_favoritebook":"1","register-require_aboutme":"1","register-require_tos":"1","register-require_dob":"1","profile-require_address1":"1","profile-require_address2":"1","profile-require_city":"1","profile-require_region":"1","profile-require_country":"1","profile-require_postal_code":"1","profile-require_phone":"1","profile-require_website":"1","profile-require_favoritebook":"1","profile-require_aboutme":"1","profile-require_tos":"1","profile-require_dob":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(434, 'plg_extension_joomla', 'plugin', 'joomla', 'extension', 0, 1, 1, 1, '{"name":"plg_extension_joomla","type":"plugin","creationDate":"May 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_EXTENSION_JOOMLA_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(435, 'plg_content_joomla', 'plugin', 'joomla', 'content', 0, 1, 1, 0, '{"name":"plg_content_joomla","type":"plugin","creationDate":"November 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_JOOMLA_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(436, 'plg_system_languagecode', 'plugin', 'languagecode', 'system', 0, 0, 1, 0, '{"name":"plg_system_languagecode","type":"plugin","creationDate":"November 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LANGUAGECODE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 10, 0),
(437, 'plg_quickicon_joomlaupdate', 'plugin', 'joomlaupdate', 'quickicon', 0, 1, 1, 1, '{"name":"plg_quickicon_joomlaupdate","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_QUICKICON_JOOMLAUPDATE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(438, 'plg_quickicon_extensionupdate', 'plugin', 'extensionupdate', 'quickicon', 0, 1, 1, 1, '{"name":"plg_quickicon_extensionupdate","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_QUICKICON_EXTENSIONUPDATE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(439, 'plg_captcha_recaptcha', 'plugin', 'recaptcha', 'captcha', 0, 0, 1, 0, '{"name":"plg_captcha_recaptcha","type":"plugin","creationDate":"December 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CAPTCHA_RECAPTCHA_XML_DESCRIPTION","group":""}', '{"public_key":"","private_key":"","theme":"clean"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(440, 'plg_system_highlight', 'plugin', 'highlight', 'system', 0, 1, 1, 0, '{"name":"plg_system_highlight","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_HIGHLIGHT_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(441, 'plg_content_finder', 'plugin', 'finder', 'content', 0, 0, 1, 0, '{"name":"plg_content_finder","type":"plugin","creationDate":"December 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_FINDER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(442, 'plg_finder_categories', 'plugin', 'categories', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_categories","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CATEGORIES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(443, 'plg_finder_contacts', 'plugin', 'contacts', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_contacts","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CONTACTS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(444, 'plg_finder_content', 'plugin', 'content', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_content","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CONTENT_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(445, 'plg_finder_newsfeeds', 'plugin', 'newsfeeds', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_newsfeeds","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_NEWSFEEDS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(446, 'plg_finder_weblinks', 'plugin', 'weblinks', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_weblinks","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_WEBLINKS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(447, 'plg_finder_tags', 'plugin', 'tags', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_tags","type":"plugin","creationDate":"February 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_TAGS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(448, 'plg_twofactorauth_totp', 'plugin', 'totp', 'twofactorauth', 0, 0, 1, 0, '{"name":"plg_twofactorauth_totp","type":"plugin","creationDate":"August 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"PLG_TWOFACTORAUTH_TOTP_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(449, 'plg_authentication_cookie', 'plugin', 'cookie', 'authentication', 0, 1, 1, 0, '{"name":"plg_authentication_cookie","type":"plugin","creationDate":"July 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_AUTH_COOKIE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(450, 'plg_twofactorauth_yubikey', 'plugin', 'yubikey', 'twofactorauth', 0, 0, 1, 0, '{"name":"plg_twofactorauth_yubikey","type":"plugin","creationDate":"September 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"PLG_TWOFACTORAUTH_YUBIKEY_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(503, 'beez3', 'template', 'beez3', '', 0, 1, 1, 0, '{"name":"beez3","type":"template","creationDate":"25 November 2009","author":"Angie Radtke","copyright":"Copyright (C) 2005 - 2014 Open Source Matters, Inc. All rights reserved.","authorEmail":"a.radtke@derauftritt.de","authorUrl":"http:\\/\\/www.der-auftritt.de","version":"3.1.0","description":"TPL_BEEZ3_XML_DESCRIPTION","group":""}', '{"wrapperSmall":"53","wrapperLarge":"72","sitetitle":"","sitedescription":"","navposition":"center","templatecolor":"nature"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(504, 'hathor', 'template', 'hathor', '', 1, 1, 1, 0, '{"name":"hathor","type":"template","creationDate":"May 2010","author":"Andrea Tarr","copyright":"Copyright (C) 2005 - 2014 Open Source Matters, Inc. All rights reserved.","authorEmail":"hathor@tarrconsulting.com","authorUrl":"http:\\/\\/www.tarrconsulting.com","version":"3.0.0","description":"TPL_HATHOR_XML_DESCRIPTION","group":""}', '{"showSiteName":"0","colourChoice":"0","boldText":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(506, 'protostar', 'template', 'protostar', '', 0, 1, 1, 0, '{"name":"protostar","type":"template","creationDate":"4\\/30\\/2012","author":"Kyle Ledbetter","copyright":"Copyright (C) 2005 - 2014 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"","version":"1.0","description":"TPL_PROTOSTAR_XML_DESCRIPTION","group":""}', '{"templateColor":"","logoFile":"","googleFont":"1","googleFontName":"Open+Sans","fluidContainer":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(507, 'isis', 'template', 'isis', '', 1, 1, 1, 0, '{"name":"isis","type":"template","creationDate":"3\\/30\\/2012","author":"Kyle Ledbetter","copyright":"Copyright (C) 2005 - 2014 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"","version":"1.0","description":"TPL_ISIS_XML_DESCRIPTION","group":""}', '{"templateColor":"","logoFile":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(600, 'English (United Kingdom)', 'language', 'en-GB', '', 0, 1, 1, 1, '{"name":"English (United Kingdom)","type":"language","creationDate":"2013-03-07","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.3","description":"en-GB site language","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(601, 'English (United Kingdom)', 'language', 'en-GB', '', 1, 1, 1, 1, '{"name":"English (United Kingdom)","type":"language","creationDate":"2013-03-07","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.3","description":"en-GB administrator language","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(602, 'Russian', 'language', 'ru-RU', '', 0, 1, 0, 0, '{"name":"Russian","type":"language","creationDate":"2014-01-27","author":"Russian Translation Team","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved","authorEmail":"smart@joomlaportal.ru","authorUrl":"www.joomlaportal.ru","version":"3.2.1.5","description":"Russian language pack (site) for Joomla! 3.2","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(603, 'Russian', 'language', 'ru-RU', '', 1, 1, 0, 0, '{"name":"Russian","type":"language","creationDate":"2014-01-27","author":"Russian Translation Team","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved","authorEmail":"smart@joomlaportal.ru","authorUrl":"www.joomlaportal.ru","version":"3.2.1.5","description":"Russian language pack (administrator) for Joomla! 3.2","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(700, 'files_joomla', 'file', 'joomla', '', 0, 1, 1, 1, '{"name":"files_joomla","type":"file","creationDate":"March 2014","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.3","description":"FILES_JOOMLA_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10000, 'RSMetro', 'template', 'rsmetro', '', 0, 1, 1, 0, '{"name":"RSMetro","type":"template","creationDate":"16 November 2012","author":"gdv","copyright":"Copyright (C) 2005 - 2012 Open Source Matters, Inc. All rights reserved.","authorEmail":"info@redsoft.ru","authorUrl":"http:\\/\\/www.redsoft.ru","version":"1.0.0","description":"template RSMetro","group":""}', '{"logoFile":"","sitetitle":"","sitedescription":"","googleFont":"1","googleFontName":"Segoe UI"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10001, 'red_isis', 'template', 'red_isis', '', 1, 1, 1, 0, '{"name":"red_isis","type":"template","creationDate":"3\\/30\\/2012","author":"Kyle Ledbetter","copyright":"Copyright (C) 2005 - 2013 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"","version":"1.0","description":"TPL_RED_ISIS_XML_DESCRIPTION","group":""}', '{"templateColor":"#13294A","headerColor":"#184A7D","sidebarColor":"#0088CC","logoFile":"","admin_menus":"1","displayHeader":"1","statusFixed":"1","stickyToolbar":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10002, 'System - jSecure Authentication', 'plugin', 'jsecure', 'system', 0, 1, 1, 0, '{"name":"System - jSecure Authentication","type":"plugin","creationDate":"2008-08-28","author":"Ajay Lulia","copyright":"This module is released under the GNU\\/GPL License","authorEmail":"ajay.lulia@joomlaserviceprovider.com","authorUrl":"www.joomlaserviceprovider.com","version":"2.1.10","description":"jSecure Authentication secures the admin login page. Set the parameters for this plugin in the jSecure Authentication component admin screen. Click on: Components -> jSecure Authentication","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10003, 'jsecure', 'component', 'com_jsecure', '', 1, 1, 0, 0, '{"name":"jsecure","type":"component","creationDate":"2008-08-28","author":"Ajay Lulia","copyright":"This component is released under the GNU\\/GPL License","authorEmail":"ajay.lulia@joomlaserviceprovider.com","authorUrl":"www.joomlaserviceprovider.com","version":"2.1.10","description":"jSecure Authentication has been successfully installed.","group":""}', '{"version":"2.1.10"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10004, 'plg_editors_jce', 'plugin', 'jce', 'editors', 0, 1, 1, 0, '{"name":"plg_editors_jce","type":"plugin","creationDate":"12 December 2013","author":"Ryan Demmer","copyright":"2006-2010 Ryan Demmer","authorEmail":"info@joomlacontenteditor.net","authorUrl":"http:\\/\\/www.joomlacontenteditor.net","version":"2.3.4.4","description":"WF_EDITOR_PLUGIN_DESC","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10005, 'plg_quickicon_jcefilebrowser', 'plugin', 'jcefilebrowser', 'quickicon', 0, 1, 1, 0, '{"name":"plg_quickicon_jcefilebrowser","type":"plugin","creationDate":"12 December 2013","author":"Ryan Demmer","copyright":"Copyright (C) 2006 - 2013 Ryan Demmer. All rights reserved","authorEmail":"@@email@@","authorUrl":"www.joomalcontenteditor.net","version":"2.3.4.4","description":"PLG_QUICKICON_JCEFILEBROWSER_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10006, 'JCE', 'component', 'com_jce', '', 1, 1, 0, 0, '{"name":"JCE","type":"component","creationDate":"12 December 2013","author":"Ryan Demmer","copyright":"Copyright (C) 2006 - 2013 Ryan Demmer. All rights reserved","authorEmail":"info@joomlacontenteditor.net","authorUrl":"www.joomlacontenteditor.net","version":"2.3.4.4","description":"WF_ADMIN_DESC","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10007, 'com_xmap', 'component', 'com_xmap', '', 1, 1, 0, 0, '{"name":"com_xmap","type":"component","creationDate":"2011-04-10","author":"Guillermo Vargas","copyright":"This component is released under the GNU\\/GPL License","authorEmail":"guille@vargas.co.cr","authorUrl":"http:\\/\\/www.jooxmap.com","version":"2.3.4","description":"Xmap - Sitemap Generator for Joomla!","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10008, 'Xmap - Content Plugin', 'plugin', 'com_content', 'xmap', 0, 1, 1, 0, '{"name":"Xmap - Content Plugin","type":"plugin","creationDate":"01\\/26\\/2011","author":"Guillermo Vargas","copyright":"GNU GPL","authorEmail":"guille@vargas.co.cr","authorUrl":"joomla.vargas.co.cr","version":"2.0.4","description":"XMAP_CONTENT_PLUGIN_DESCRIPTION","group":""}', '{"expand_categories":"1","expand_featured":"1","include_archived":"2","show_unauth":"0","add_pagebreaks":"1","max_art":"0","max_art_age":"0","add_images":"1","cat_priority":"-1","cat_changefreq":"-1","art_priority":"-1","art_changefreq":"-1","keywords":"metakey"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10009, 'Xmap - Kunena Plugin', 'plugin', 'com_kunena', 'xmap', 0, 0, 1, 0, '{"name":"Xmap - Kunena Plugin","type":"plugin","creationDate":"September 2007","author":"Guillermo Vargas","copyright":"GNU GPL","authorEmail":"guille@vargas.co.cr","authorUrl":"joomla.vargas.co.cr","version":"3.0.0","description":"Xmap Plugin for Kunena component","group":""}', '{"include_topics":"1","max_topics":"","max_age":"","cat_priority":"-1","cat_changefreq":"-1","topic_priority":"-1","topic_changefreq":"-1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10010, 'Xmap - SobiPro Plugin', 'plugin', 'com_sobipro', 'xmap', 0, 0, 1, 0, '{"name":"Xmap - SobiPro Plugin","type":"plugin","creationDate":"07\\/15\\/2011","author":"Guillermo Vargas","copyright":"GNU GPL","authorEmail":"guille@vargas.co.cr","authorUrl":"joomla.vargas.co.cr","version":"2.0.2","description":"Xmap Plugin for SobiPro component","group":""}', '{"include_entries":"1","max_entries":"","max_age":"","entries_order":"a.ordering","entries_orderdir":"DESC","cat_priority":"-1","cat_changefreq":"weekly","entry_priority":"-1","entry_changefreq":"weekly"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10011, 'Xmap - Mosets Tree Plugin', 'plugin', 'com_mtree', 'xmap', 0, 0, 1, 0, '{"name":"Xmap - Mosets Tree Plugin","type":"plugin","creationDate":"07\\/20\\/2011","author":"Guillermo Vargas","copyright":"GNU GPL","authorEmail":"guille@vargas.co.cr","authorUrl":"joomla.vargas.co.cr","version":"2.0.2","description":"XMAP_MTREE_PLUGIN_DESCRIPTION","group":""}', '{"cats_order":"cat_name","cats_orderdir":"ASC","include_links":"1","links_order":"ordering","entries_orderdir":"ASC","max_links":"","max_age":"","cat_priority":"0.5","cat_changefreq":"weekly","link_priority":"0.5","link_changefreq":"weekly"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10012, 'Xmap - Virtuemart Plugin', 'plugin', 'com_virtuemart', 'xmap', 0, 0, 1, 0, '{"name":"Xmap - Virtuemart Plugin","type":"plugin","creationDate":"January 2012","author":"Guillermo Vargas","copyright":"GNU GPL","authorEmail":"guille@vargas.co.cr","authorUrl":"joomla.vargas.co.cr","version":"2.0.3","description":"XMAP_VM_PLUGIN_DESCRIPTION","group":""}', '{"include_products":"1","cat_priority":"-1","cat_changefreq":"-1","prod_priority":"-1","prod_changefreq":"-1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10013, 'Xmap - WebLinks Plugin', 'plugin', 'com_weblinks', 'xmap', 0, 1, 1, 0, '{"name":"Xmap - WebLinks Plugin","type":"plugin","creationDate":"Apr 2004","author":"Guillermo Vargas","copyright":"GNU GPL","authorEmail":"guille@vargas.co.cr","authorUrl":"joomla.vargas.co.cr","version":"2.0.1","description":"XMAP_WL_PLUGIN_DESCRIPTION","group":""}', '{"include_links":"1","max_links":"","cat_priority":"-1","cat_changefreq":"-1","link_priority":"-1","link_changefreq":"-1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10014, 'XMAP_PLUGIN_K2', 'plugin', 'com_k2', 'xmap', 0, 0, 1, 0, '{"name":"XMAP_PLUGIN_K2","type":"plugin","creationDate":"November 2011","author":"Mohammad Hasani Eghtedar","copyright":"GNU GPL","authorEmail":"m.h.eghtedar@gmail.com","authorUrl":"https:\\/\\/github.com\\/mhehm\\/Xmap","version":"1.3","description":"XMAP_PLUGIN_K2_DESC","group":""}', '{"subcategories":"no","showk2items":"always","suppressdups":"no","priority":"0.5","changefreq":"weekly"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10015, 'Xmap Package', 'package', 'pkg_xmap', '', 0, 1, 1, 0, '{"name":"Xmap Package","type":"package","creationDate":"Unknown","author":"Unknown","copyright":"","authorEmail":"","authorUrl":"","version":"2.3.3","description":"The Site Map generator for Joomla!","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10016, 'com_djimageslider', 'component', 'com_djimageslider', '', 1, 1, 0, 0, '{"name":"com_djimageslider","type":"component","creationDate":"August 2012","author":"DJ-Extensions.com","copyright":"Copyright (C) 2012 DJ-Extensions.com, All rights reserved.","authorEmail":"contact@dj-extensions.com","authorUrl":"http:\\/\\/dj-extensions.com","version":"2.2.2","description":"DJ-ImageSlider component","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10017, 'DJ-ImageSlider', 'module', 'mod_djimageslider', '', 0, 1, 0, 0, '{"name":"DJ-ImageSlider","type":"module","creationDate":"March 2013","author":"DJ-Extensions.com","copyright":"Copyright (C) 2013 DJ-Extensions.com, All rights reserved.","authorEmail":"contact@dj-extensions.com","authorUrl":"http:\\/\\/dj-extensions.com","version":"2.2.2","description":"DJ-ImageSlider Module","group":""}', '{"slider_source":"0","slider_type":"0","link_image":"1","image_folder":"images\\/sampledata\\/fruitshop","link":"","show_title":"1","show_desc":"1","show_readmore":"0","readmore_text":"","link_title":"1","link_desc":"0","limit_desc":"","image_width":"240","image_height":"180","fit_to":"0","visible_images":"3","space_between_images":"10","max_images":"20","sort_by":"1","effect":"Expo","autoplay":"1","show_buttons":"1","show_arrows":"1","show_custom_nav":"0","desc_width":"","desc_bottom":"0","desc_horizontal":"0","left_arrow":"","right_arrow":"","play_button":"","pause_button":"","arrows_top":"30","arrows_horizontal":"5","effect_type":"0","duration":"","delay":"","preload":"800","cache":"1","cache_time":"900"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10018, 'DJ-ImageSlider Package', 'package', 'pkg_dj-imageslider', '', 0, 1, 1, 0, '{"name":"DJ-ImageSlider Package","type":"package","creationDate":"August 2012","author":"DJ-Extensions.com","copyright":"Copyright (C) 2012 DJ-Extensions.com, All rights reserved.","authorEmail":"contact@dj-extensions.com","authorUrl":"http:\\/\\/dj-extensions.com","version":"2.2.2","description":"\\n\\t\\t<style> #right-text {font-family:Arial, Helvetica, sans-serif;\\tfont-size:11px;\\t} #right-text a:link, #right-text a:visited {color:#4991c1;font-weight:bold; font-size: 13px;} #right-text a:hover {text-decoration:underline;}\\t#right-text h2 {color:#fa9539;text-transform:uppercase;\\tfont-size:16px;\\tpadding:0;\\tmargin:2px 0;}\\t#right-text p {padding:0;margin:4px 0;}\\t#left-logo {float:left;width:270px;height:120px;display:block;} #left-logo img {margin: 40px 20px;} #right-text {float:left;width:400px;}<\\/style>\\n\\t\\n\\t\\t<div id=\\"left-logo\\">\\n\\t\\t\\t<a target=\\"_blank\\" href=\\"http:\\/\\/dj-extensions.com\\"><img src=\\"http:\\/\\/new.dj-extensions.com\\/templates\\/dj-extensions\\/images\\/logo.png\\" alt=\\"DJ-Extensions.com\\" \\/><\\/a>\\n\\t\\t<\\/div>\\n\\t\\t\\n\\t\\t<div id=\\"right-text\\">\\n\\t\\t\\t<h2>Thank you for installing DJ-ImageSlider!<\\/h2>\\n\\t\\t\\t<p>The DJ-ImageSlider extension allows you to display image slides with title and short description linked to any menu item, article or custom url address.<\\/p>\\n\\t\\t\\t<p>If you want to learn how to use DJ-ImageSlider please read <a target=\\"_blank\\" href=\\"http:\\/\\/dj-extensions.com\\/documentation\\">Documentation<\\/a> and search our <a target=\\"_blank\\" href=\\"http:\\/\\/dj-extensions.com\\/forum\\">Support Forum<\\/a><br \\/><br \\/>Check out our other extensions at <a target=\\"_blank\\" href=\\"http:\\/\\/dj-extensions.com\\">DJ-Extensions.com<\\/a><\\/p>\\n\\t\\t<\\/div>\\n\\t\\n\\t\\t","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10019, 'plg_installer_webinstaller', 'plugin', 'webinstaller', 'installer', 0, 1, 1, 0, '{"name":"plg_installer_webinstaller","type":"plugin","creationDate":"18 December 2013","author":"Joomla! Project","copyright":"Copyright (C) 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.0.5","description":"PLG_INSTALLER_WEBINSTALLER_XML_DESCRIPTION","group":""}', '{"tab_position":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10021, 'ZOO Category', 'module', 'mod_zoocategory', '', 0, 1, 0, 0, '{"name":"ZOO Category","type":"module","creationDate":"October 2012","author":"YOOtheme","copyright":"Copyright (C) YOOtheme GmbH","authorEmail":"info@yootheme.com","authorUrl":"http:\\/\\/www.yootheme.com","version":"3.0.0","description":"Category module for ZOO developed by YOOtheme (http:\\/\\/www.yootheme.com)","group":""}', '{"theme":"","application":"","depth":"0","add_count":"0","menu_item":"","moduleclass_sfx":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10022, 'ZOO Comment', 'module', 'mod_zoocomment', '', 0, 1, 0, 0, '{"name":"ZOO Comment","type":"module","creationDate":"October 2012","author":"YOOtheme","copyright":"Copyright (C) YOOtheme GmbH","authorEmail":"info@yootheme.com","authorUrl":"http:\\/\\/www.yootheme.com","version":"3.0.0","description":"Comment module for ZOO developed by YOOtheme (http:\\/\\/www.yootheme.com)","group":""}', '{"theme":"","application":"","subcategories":"0","count":"10","show_avatar":"1","avatar_size":"40","show_author":"1","show_meta":"1","moduleclass_sfx":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10023, 'ZOO Item', 'module', 'mod_zooitem', '', 0, 1, 0, 0, '{"name":"ZOO Item","type":"module","creationDate":"October 2012","author":"YOOtheme","copyright":"Copyright (C) YOOtheme GmbH","authorEmail":"info@yootheme.com","authorUrl":"http:\\/\\/www.yootheme.com","version":"3.0.1","description":"Item module for ZOO developed by YOOtheme (http:\\/\\/www.yootheme.com)","group":""}', '{"theme":"","layout":"","media_position":"left","application":"","subcategories":"0","count":"4","order":"_itemname","moduleclass_sfx":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10024, 'ZOO Quick Icons', 'module', 'mod_zooquickicon', '', 1, 1, 2, 0, '{"name":"ZOO Quick Icons","type":"module","creationDate":"October 2012","author":"YOOtheme","copyright":"Copyright (C) YOOtheme GmbH","authorEmail":"info@yootheme.com","authorUrl":"http:\\/\\/www.yootheme.com","version":"3.0.0","description":"Quick Icons module for ZOO developed by YOOtheme (http:\\/\\/www.yootheme.com)","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(10025, 'ZOO Tag', 'module', 'mod_zootag', '', 0, 1, 0, 0, '{"name":"ZOO Tag","type":"module","creationDate":"October 2012","author":"YOOtheme","copyright":"Copyright (C) YOOtheme GmbH","authorEmail":"info@yootheme.com","authorUrl":"http:\\/\\/www.yootheme.com","version":"3.0.0","description":"Tag module for ZOO developed by YOOtheme (http:\\/\\/www.yootheme.com)","group":""}', '{"theme":"","application":"","subcategories":"0","count":"10","order":"alpha","menu_item":"","moduleclass_sfx":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10026, 'Content - ZOO Shortcode', 'plugin', 'zooshortcode', 'content', 0, 1, 1, 0, '{"name":"Content - ZOO Shortcode","type":"plugin","creationDate":"October 2012","author":"YOOtheme","copyright":"Copyright (C) YOOtheme GmbH","authorEmail":"info@yootheme.com","authorUrl":"http:\\/\\/www.yootheme.com","version":"3.0.0","description":"Shortcode plugin for ZOO developed by YOOtheme (http:\\/\\/www.yootheme.com) Usage: {zooitem OR zoocategory: ID OR alias} Optionally: {zooitem: ID text: MYTEXT}","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10027, 'Smart Search - ZOO', 'plugin', 'zoosmartsearch', 'finder', 0, 1, 1, 0, '{"name":"Smart Search - ZOO","type":"plugin","creationDate":"Febuary 2012","author":"YOOtheme","copyright":"Copyright (C) YOOtheme GmbH","authorEmail":"info@yootheme.com","authorUrl":"http:\\/\\/www.yootheme.com","version":"2.5.0","description":"Smart Search plugin for ZOO developed by YOOtheme (http:\\/\\/www.yootheme.com)","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10028, 'Search - ZOO', 'plugin', 'zoosearch', 'search', 0, 1, 1, 0, '{"name":"Search - ZOO","type":"plugin","creationDate":"October 2012","author":"YOOtheme","copyright":"Copyright (C) YOOtheme GmbH","authorEmail":"info@yootheme.com","authorUrl":"http:\\/\\/www.yootheme.com","version":"3.0.0","description":"Search plugin for ZOO developed by YOOtheme (http:\\/\\/www.yootheme.com)","group":""}', '{"search_fulltext":"0","search_limit":"50"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10029, 'System - ZOO Event', 'plugin', 'zooevent', 'system', 0, 1, 1, 0, '{"name":"System - ZOO Event","type":"plugin","creationDate":"October 2012","author":"YOOtheme","copyright":"Copyright (C) YOOtheme GmbH","authorEmail":"info@yootheme.com","authorUrl":"http:\\/\\/www.yootheme.com","version":"3.0.0","description":"Event plugin for ZOO developed by YOOtheme (http:\\/\\/www.yootheme.com)","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10030, 'zoo', 'package', 'pkg_zoo', '', 0, 1, 1, 0, '{"name":"ZOO Package","type":"package","creationDate":"August 2014","author":"YOOtheme","copyright":"Copyright (C) YOOtheme GmbH","authorEmail":"info@yootheme.com","authorUrl":"http:\\/\\/www.yootheme.com","version":"3.2.2","description":"ZOO component and extensions for Joomla 2.5+ developed by YOOtheme (http:\\/\\/www.yootheme.com)","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10031, 'com_zoo', 'component', 'com_zoo', '', 1, 1, 1, 0, '{"name":"com_zoo","type":"component","creationDate":"August 2014","author":"YOOtheme","copyright":"Copyright (C) YOOtheme GmbH","authorEmail":"info@yootheme.com","authorUrl":"http:\\/\\/www.yootheme.com","version":"3.2.2","description":"ZOO component for Joomla 2.5+ developed by YOOtheme (http:\\/\\/www.yootheme.com)","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10032, 'Widgetkit', 'module', 'mod_widgetkit', '', 0, 1, 0, 0, '{"name":"Widgetkit","type":"module","creationDate":"May 2011","author":"YOOtheme","copyright":"Copyright (C) 2007 - 2011 YOOtheme GmbH","authorEmail":"info@yootheme.com","authorUrl":"http:\\/\\/www.yootheme.com","version":"1.0.0","description":"Widgetkit module for Widgetkit developed by YOOtheme (http:\\/\\/www.yootheme.com)","group":""}', '{"widget_id":"","moduleclass_sfx":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10033, 'Widgetkit Twitter', 'module', 'mod_widgetkit_twitter', '', 0, 1, 0, 0, '{"name":"Widgetkit Twitter","type":"module","creationDate":"May 2011","author":"YOOtheme","copyright":"Copyright (C) 2007 - 2011 YOOtheme GmbH","authorEmail":"info@yootheme.com","authorUrl":"http:\\/\\/www.yootheme.com","version":"1.0.0","description":"Twitter module for Widgetkit developed by YOOtheme (http:\\/\\/www.yootheme.com)","group":""}', '{"style_":"list","from_user":"","to_user":"","ref_user":"","hashtag":"","word":"","nots":"","limit":"5","image_size":"48","show_image":"1","show_author":"1","show_date":"1","consumer_key":"","consumer_secret":"","access_token":"","access_token_secret":"","moduleclass_sfx":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10034, 'System - Widgetkit', 'plugin', 'widgetkit_system', 'system', 0, 1, 1, 0, '{"name":"System - Widgetkit","type":"plugin","creationDate":"May 2011","author":"YOOtheme","copyright":"Copyright (C) 2007 - 2011 YOOtheme GmbH","authorEmail":"info@yootheme.com","authorUrl":"http:\\/\\/www.yootheme.com","version":"1.0.0","description":"Plugin for Widgetkit developed by YOOtheme (http:\\/\\/www.yootheme.com)","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10035, 'Content - Widgetkit', 'plugin', 'widgetkit_content', 'content', 0, 1, 1, 0, '{"name":"Content - Widgetkit","type":"plugin","creationDate":"May 2011","author":"YOOtheme","copyright":"Copyright (C) 2007 - 2011 YOOtheme GmbH","authorEmail":"info@yootheme.com","authorUrl":"http:\\/\\/www.yootheme.com","version":"1.0.0","description":"Plugin for Widgetkit developed by YOOtheme (http:\\/\\/www.yootheme.com)","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10036, 'System - Widgetkit ZOO', 'plugin', 'widgetkit_zoo', 'system', 0, 1, 1, 0, '{"name":"System - Widgetkit ZOO","type":"plugin","creationDate":"August 2013","author":"YOOtheme","copyright":"Copyright (C) 2007 - 2013 YOOtheme GmbH","authorEmail":"info@yootheme.com","authorUrl":"http:\\/\\/www.yootheme.com","version":"3.1.0","description":"ZOO plugin for Widgetkit developed by YOOtheme (http:\\/\\/www.yootheme.com)","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10037, 'System - Widgetkit Joomla', 'plugin', 'widgetkit_joomla', 'system', 0, 1, 1, 0, '{"name":"System - Widgetkit Joomla","type":"plugin","creationDate":"December 2011","author":"YOOtheme","copyright":"Copyright (C) 2007 - 2011 YOOtheme GmbH","authorEmail":"info@yootheme.com","authorUrl":"http:\\/\\/www.yootheme.com","version":"1.0.0","description":"Joomla Content plugin for Widgetkit developed by YOOtheme (http:\\/\\/www.yootheme.com)","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10038, 'widgetkit', 'component', 'com_widgetkit', '', 1, 1, 0, 0, '{"name":"Widgetkit","type":"component","creationDate":"July 2014","author":"YOOtheme","copyright":"Copyright (C) YOOtheme GmbH","authorEmail":"info@yootheme.com","authorUrl":"http:\\/\\/www.yootheme.com","version":"1.5.1","description":"Widgetkit - A widget toolkit by YOOtheme (http:\\/\\/www.yootheme.com)","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10039, 'site-on', 'template', 'site-on', '', 0, 1, 1, 0, '{"name":"site-on","type":"template","creationDate":"01.12.2013","author":"Che","copyright":"Che","authorEmail":"Che","authorUrl":"Che","version":"1.0.0","description":"Che","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10040, 'Che', 'template', 'che', '', 0, 1, 1, 0, '{"name":"Che","type":"template","creationDate":"01.12.2013","author":"Che","copyright":"Che","authorEmail":"Che","authorUrl":"Che","version":"1.0.0","description":"Che","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10061, 'acymailing', 'component', 'com_acymailing', '', 1, 1, 0, 0, '{"name":"AcyMailing","type":"component","creationDate":"juillet 2014","author":"Acyba","copyright":"Copyright (C) 2009-2014 ACYBA SARL - All rights reserved.","authorEmail":"dev@acyba.com","authorUrl":"http:\\/\\/www.acyba.com","version":"4.7.2","description":"Manage your Mailing lists, Newsletters, e-mail marketing campaigns","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10062, 'AcyMailing : trigger Joomla Content plugins', 'plugin', 'contentplugin', 'acymailing', 0, 0, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 15, 0),
(10063, 'AcyMailing Manage text', 'plugin', 'managetext', 'acymailing', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 10, 0),
(10064, 'AcyMailing Tag : Website links', 'plugin', 'online', 'acymailing', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(10065, 'AcyMailing : share on social networks', 'plugin', 'share', 'acymailing', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 20, 0),
(10066, 'AcyMailing : Statistics Plugin', 'plugin', 'stats', 'acymailing', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 50, 0),
(10067, 'AcyMailing table of contents generator', 'plugin', 'tablecontents', 'acymailing', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(10068, 'AcyMailing Tag : CB User information', 'plugin', 'tagcbuser', 'acymailing', 0, 0, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(10069, 'AcyMailing Tag : content insertion', 'plugin', 'tagcontent', 'acymailing', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 11, 0),
(10070, 'AcyMailing Tag : Subscriber information', 'plugin', 'tagsubscriber', 'acymailing', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(10071, 'AcyMailing Tag : Manage the Subscription', 'plugin', 'tagsubscription', 'acymailing', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(10072, 'AcyMailing Tag : Date / Time', 'plugin', 'tagtime', 'acymailing', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(10073, 'AcyMailing Tag : Joomla User Information', 'plugin', 'taguser', 'acymailing', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(10074, 'AcyMailing Template Class Replacer', 'plugin', 'template', 'acymailing', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 25, 0),
(10075, 'AcyMailing Editor', 'plugin', 'acyeditor', 'editors', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(10076, 'AcyMailing : (auto)Subscribe during Joomla registration', 'plugin', 'regacymailing', 'system', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10077, 'AcyMailing Module', 'module', 'mod_acymailing', '', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10078, 'com_k2', 'component', 'com_k2', '', 1, 1, 0, 0, '{"name":"COM_K2","type":"component","creationDate":"February 28th, 2014","author":"JoomlaWorks","copyright":"Copyright (c) 2006 - 2014 JoomlaWorks Ltd. All rights reserved.","authorEmail":"please-use-the-contact-form@joomlaworks.net","authorUrl":"www.joomlaworks.net","version":"2.6.8","description":"Thank you for installing K2 by JoomlaWorks, the powerful content extension for Joomla!","group":""}', '{"enable_css":"1","jQueryHandling":"1.8remote","backendJQueryHandling":"remote","userName":"1","userImage":"1","userDescription":"1","userURL":"1","userEmail":"0","userFeedLink":"1","userFeedIcon":"1","userItemCount":"10","userItemTitle":"1","userItemTitleLinked":"1","userItemDateCreated":"1","userItemImage":"1","userItemIntroText":"1","userItemCategory":"1","userItemTags":"1","userItemCommentsAnchor":"1","userItemReadMore":"1","userItemK2Plugins":"1","tagItemCount":"10","tagItemTitle":"1","tagItemTitleLinked":"1","tagItemDateCreated":"1","tagItemImage":"1","tagItemIntroText":"1","tagItemCategory":"1","tagItemReadMore":"1","tagItemExtraFields":"0","tagOrdering":"","tagFeedLink":"1","tagFeedIcon":"1","genericItemCount":"10","genericItemTitle":"1","genericItemTitleLinked":"1","genericItemDateCreated":"1","genericItemImage":"1","genericItemIntroText":"1","genericItemCategory":"1","genericItemReadMore":"1","genericItemExtraFields":"0","genericFeedLink":"1","genericFeedIcon":"1","feedLimit":"10","feedItemImage":"1","feedImgSize":"S","feedItemIntroText":"1","feedTextWordLimit":"","feedItemFullText":"1","feedItemTags":"0","feedItemVideo":"0","feedItemGallery":"0","feedItemAttachments":"0","feedBogusEmail":"","introTextCleanup":"0","introTextCleanupExcludeTags":"","introTextCleanupTagAttr":"","fullTextCleanup":"0","fullTextCleanupExcludeTags":"","fullTextCleanupTagAttr":"","xssFiltering":"0","linkPopupWidth":"900","linkPopupHeight":"600","imagesQuality":"100","itemImageXS":"100","itemImageS":"200","itemImageM":"400","itemImageL":"600","itemImageXL":"900","itemImageGeneric":"300","catImageWidth":"100","catImageDefault":"1","userImageWidth":"100","userImageDefault":"1","commenterImgWidth":"48","onlineImageEditor":"splashup","imageTimestamp":"0","imageMemoryLimit":"","socialButtonCode":"","twitterUsername":"","facebookImage":"Medium","comments":"1","commentsOrdering":"DESC","commentsLimit":"10","commentsFormPosition":"below","commentsPublishing":"1","commentsReporting":"2","commentsReportRecipient":"","inlineCommentsModeration":"0","gravatar":"1","recaptcha":"0","recaptchaForRegistered":"1","commentsFormNotes":"1","commentsFormNotesText":"","frontendEditing":"1","showImageTab":"1","showImageGalleryTab":"1","showVideoTab":"1","showExtraFieldsTab":"1","showAttachmentsTab":"1","showK2Plugins":"1","sideBarDisplayFrontend":"0","mergeEditors":"1","sideBarDisplay":"1","attachmentsFolder":"","hideImportButton":"0","googleSearch":"0","googleSearchContainer":"k2GoogleSearchContainer","K2UserProfile":"1","K2UserGroup":"","redirect":"","adminSearch":"simple","cookieDomain":"","taggingSystem":"1","lockTags":"0","showTagFilter":"0","k2TagNorm":"0","k2TagNormCase":"lower","k2TagNormAdditionalReplacements":"","recaptcha_public_key":"","recaptcha_private_key":"","recaptcha_theme":"clean","recaptchaOnRegistration":"0","stopForumSpam":"0","stopForumSpamApiKey":"","showItemsCounterAdmin":"1","showChildCatItems":"1","disableCompactOrdering":"0","metaDescLimit":"150","enforceSEFReplacements":"0","SEFReplacements":"","k2Sef":"0","k2SefLabelCat":"content","k2SefLabelTag":"tag","k2SefLabelUser":"author","k2SefLabelSearch":"search","k2SefLabelDate":"date","k2SefLabelItem":"0","k2SefLabelItemCustomPrefix":"","k2SefInsertItemId":"1","k2SefItemIdTitleAliasSep":"dash","k2SefUseItemTitleAlias":"1","k2SefInsertCatId":"1","k2SefCatIdTitleAliasSep":"dash","k2SefUseCatTitleAlias":"1","sh404SefLabelCat":"","sh404SefLabelUser":"blog","sh404SefLabelItem":"2","sh404SefTitleAlias":"alias","sh404SefModK2ContentFeedAlias":"feed","sh404SefInsertItemId":"0","sh404SefInsertUniqueItemId":"0","cbIntegration":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `f8ad7_extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(10079, 'plg_finder_k2', 'plugin', 'k2', 'finder', 0, 0, 1, 0, '{"name":"plg_finder_k2","type":"plugin","creationDate":"February 28th, 2014","author":"JoomlaWorks","copyright":"Copyright (c) 2006 - 2014 JoomlaWorks Ltd. All rights reserved.","authorEmail":"please-use-the-contact-form@joomlaworks.net","authorUrl":"www.joomlaworks.net","version":"2.6.8","description":"PLG_FINDER_K2_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10080, 'Search - K2', 'plugin', 'k2', 'search', 0, 1, 1, 0, '{"name":"Search - K2","type":"plugin","creationDate":"February 28th, 2014","author":"JoomlaWorks","copyright":"Copyright (c) 2006 - 2014 JoomlaWorks Ltd. All rights reserved.","authorEmail":"please-use-the-contact-form@joomlaworks.net","authorUrl":"www.joomlaworks.net","version":"2.6.8","description":"K2_THIS_PLUGIN_EXTENDS_THE_DEFAULT_JOOMLA_SEARCH_FUNCTIONALITY_TO_K2_CONTENT","group":""}', '{"search_limit":"50","search_tags":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10081, 'System - K2', 'plugin', 'k2', 'system', 0, 1, 1, 0, '{"name":"System - K2","type":"plugin","creationDate":"February 28th, 2014","author":"JoomlaWorks","copyright":"Copyright (c) 2006 - 2014 JoomlaWorks Ltd. All rights reserved.","authorEmail":"please-use-the-contact-form@joomlaworks.net","authorUrl":"www.joomlaworks.net","version":"2.6.8","description":"K2_THE_K2_SYSTEM_PLUGIN_IS_USED_TO_ASSIST_THE_PROPER_FUNCTIONALITY_OF_THE_K2_COMPONENT_SITE_WIDE_MAKE_SURE_ITS_ALWAYS_PUBLISHED_WHEN_THE_K2_COMPONENT_IS_INSTALLED","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10082, 'User - K2', 'plugin', 'k2', 'user', 0, 1, 1, 0, '{"name":"User - K2","type":"plugin","creationDate":"February 28th, 2014","author":"JoomlaWorks","copyright":"Copyright (c) 2006 - 2014 JoomlaWorks Ltd. All rights reserved.","authorEmail":"please-use-the-contact-form@joomlaworks.net","authorUrl":"www.joomlaworks.net","version":"2.6.8","description":"K2_A_USER_SYNCHRONIZATION_PLUGIN_FOR_K2","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10083, 'Josetta - K2 Categories', 'plugin', 'k2category', 'josetta_ext', 0, 1, 1, 0, '{"name":"Josetta - K2 Categories","type":"plugin","creationDate":"February 28th, 2014","author":"JoomlaWorks","copyright":"Copyright (c) 2006 - 2014 JoomlaWorks Ltd. All rights reserved.","authorEmail":"please-use-the-contact-form@joomlaworks.net","authorUrl":"www.joomlaworks.net","version":"2.6.8","description":"","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10084, 'Josetta - K2 Items', 'plugin', 'k2item', 'josetta_ext', 0, 1, 1, 0, '{"name":"Josetta - K2 Items","type":"plugin","creationDate":"June 7th, 2012","author":"JoomlaWorks","copyright":"Copyright (c) 2006 - 2014 JoomlaWorks Ltd. All rights reserved.","authorEmail":"please-use-the-contact-form@joomlaworks.net","authorUrl":"www.joomlaworks.net","version":"2.6.8","description":"","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10085, 'K2 Comments', 'module', 'mod_k2_comments', '', 0, 1, 0, 0, '{"name":"K2 Comments","type":"module","creationDate":"February 28th, 2014","author":"JoomlaWorks","copyright":"Copyright (c) 2006 - 2014 JoomlaWorks Ltd. All rights reserved.","authorEmail":"please-use-the-contact-form@joomlaworks.net","authorUrl":"www.joomlaworks.net","version":"2.6.8","description":"MOD_K2_COMMENTS_DESCRIPTION","group":""}', '{"moduleclass_sfx":"","module_usage":"","":"K2_TOP_COMMENTERS","catfilter":"0","category_id":"","comments_limit":"5","comments_word_limit":"10","commenterName":"1","commentAvatar":"1","commentAvatarWidthSelect":"custom","commentAvatarWidth":"50","commentDate":"1","commentDateFormat":"absolute","commentLink":"1","itemTitle":"1","itemCategory":"1","feed":"1","commenters_limit":"5","commenterNameOrUsername":"1","commenterAvatar":"1","commenterAvatarWidthSelect":"custom","commenterAvatarWidth":"50","commenterLink":"1","commenterCommentsCounter":"1","commenterLatestComment":"1","cache":"1","cache_time":"900"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10086, 'K2 Content', 'module', 'mod_k2_content', '', 0, 1, 0, 0, '{"name":"K2 Content","type":"module","creationDate":"February 28th, 2014","author":"JoomlaWorks","copyright":"Copyright (c) 2006 - 2014 JoomlaWorks Ltd. All rights reserved.","authorEmail":"please-use-the-contact-form@joomlaworks.net","authorUrl":"www.joomlaworks.net","version":"2.6.8","description":"K2_MOD_K2_CONTENT_DESCRIPTION","group":""}', '{"moduleclass_sfx":"","getTemplate":"Default","source":"filter","":"K2_OTHER_OPTIONS","catfilter":"0","category_id":"","getChildren":"0","itemCount":"5","itemsOrdering":"","FeaturedItems":"1","popularityRange":"","videosOnly":"0","item":"","items":"","itemTitle":"1","itemAuthor":"1","itemAuthorAvatar":"1","itemAuthorAvatarWidthSelect":"custom","itemAuthorAvatarWidth":"50","userDescription":"1","itemIntroText":"1","itemIntroTextWordLimit":"","itemImage":"1","itemImgSize":"Small","itemVideo":"1","itemVideoCaption":"1","itemVideoCredits":"1","itemAttachments":"1","itemTags":"1","itemCategory":"1","itemDateCreated":"1","itemHits":"1","itemReadMore":"1","itemExtraFields":"0","itemCommentsCounter":"1","feed":"1","itemPreText":"","itemCustomLink":"0","itemCustomLinkTitle":"","itemCustomLinkURL":"http:\\/\\/","itemCustomLinkMenuItem":"","K2Plugins":"1","JPlugins":"1","cache":"1","cache_time":"900"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10087, 'K2 Tools', 'module', 'mod_k2_tools', '', 0, 1, 0, 0, '{"name":"K2 Tools","type":"module","creationDate":"February 28th, 2014","author":"JoomlaWorks","copyright":"Copyright (c) 2006 - 2014 JoomlaWorks Ltd. All rights reserved.","authorEmail":"please-use-the-contact-form@joomlaworks.net","authorUrl":"www.joomlaworks.net","version":"2.6.8","description":"K2_TOOLS","group":""}', '{"moduleclass_sfx":"","module_usage":"0","":"K2_CUSTOM_CODE_SETTINGS","archiveItemsCounter":"1","archiveCategory":"","authors_module_category":"","authorItemsCounter":"1","authorAvatar":"1","authorAvatarWidthSelect":"custom","authorAvatarWidth":"50","authorLatestItem":"1","calendarCategory":"","home":"","seperator":"","root_id":"","end_level":"","categoriesListOrdering":"","categoriesListItemsCounter":"1","root_id2":"","catfilter":"0","category_id":"","getChildren":"0","liveSearch":"","width":"20","text":"","button":"","imagebutton":"","button_text":"","min_size":"75","max_size":"300","cloud_limit":"30","cloud_category":"0","cloud_category_recursive":"0","customCode":"","parsePhp":"0","K2Plugins":"0","JPlugins":"0","cache":"1","cache_time":"900"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10088, 'K2 Users', 'module', 'mod_k2_users', '', 0, 1, 0, 0, '{"name":"K2 Users","type":"module","creationDate":"February 28th, 2014","author":"JoomlaWorks","copyright":"Copyright (c) 2006 - 2014 JoomlaWorks Ltd. All rights reserved.","authorEmail":"please-use-the-contact-form@joomlaworks.net","authorUrl":"www.joomlaworks.net","version":"2.6.8","description":"K2_MOD_K2_USERS_DESCRTIPTION","group":""}', '{"moduleclass_sfx":"","getTemplate":"Default","source":"0","":"K2_DISPLAY_OPTIONS","filter":"1","K2UserGroup":"","ordering":"1","limit":"4","userIDs":"","userName":"1","userAvatar":"1","userAvatarWidthSelect":"custom","userAvatarWidth":"50","userDescription":"1","userDescriptionWordLimit":"","userURL":"1","userEmail":"0","userFeed":"1","userItemCount":"1","cache":"1","cache_time":"900"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10089, 'K2 User', 'module', 'mod_k2_user', '', 0, 1, 0, 0, '{"name":"K2 User","type":"module","creationDate":"February 28th, 2014","author":"JoomlaWorks","copyright":"Copyright (c) 2006 - 2014 JoomlaWorks Ltd. All rights reserved.","authorEmail":"please-use-the-contact-form@joomlaworks.net","authorUrl":"www.joomlaworks.net","version":"2.6.8","description":"K2_MOD_K2_USER_DESCRIPTION","group":""}', '{"moduleclass_sfx":"","pretext":"","":"K2_LOGIN_LOGOUT_REDIRECTION","name":"1","userAvatar":"1","userAvatarWidthSelect":"custom","userAvatarWidth":"50","menu":"","login":"","logout":"","usesecure":"0","cache":"0","cache_time":"900"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10090, 'K2 Quick Icons (admin)', 'module', 'mod_k2_quickicons', '', 1, 1, 2, 0, '{"name":"K2 Quick Icons (admin)","type":"module","creationDate":"February 28th, 2014","author":"JoomlaWorks","copyright":"Copyright (c) 2006 - 2014 JoomlaWorks Ltd. All rights reserved.","authorEmail":"please-use-the-contact-form@joomlaworks.net","authorUrl":"www.joomlaworks.net","version":"2.6.8","description":"K2_QUICKICONS_FOR_USE_IN_THE_JOOMLA_CONTROL_PANEL_DASHBOARD_PAGE","group":""}', '{"modCSSStyling":"1","modLogo":"1","cache":"0","cache_time":"900"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10091, 'K2 Stats (admin)', 'module', 'mod_k2_stats', '', 1, 1, 2, 0, '{"name":"K2 Stats (admin)","type":"module","creationDate":"February 28th, 2014","author":"JoomlaWorks","copyright":"Copyright (c) 2006 - 2014 JoomlaWorks Ltd. All rights reserved.","authorEmail":"please-use-the-contact-form@joomlaworks.net","authorUrl":"www.joomlaworks.net","version":"2.6.8","description":"K2_STATS_FOR_USE_IN_THE_K2_DASHBOARD_PAGE","group":""}', '{"latestItems":"1","popularItems":"1","mostCommentedItems":"1","latestComments":"1","statistics":"1","cache":"0","cache_time":"900"}', '', '', 0, '0000-00-00 00:00:00', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `f8ad7_finder_filters`
--

CREATE TABLE IF NOT EXISTS `f8ad7_finder_filters` (
  `filter_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL,
  `created_by_alias` varchar(255) NOT NULL,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `map_count` int(10) unsigned NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `params` mediumtext,
  PRIMARY KEY (`filter_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `f8ad7_finder_links`
--

CREATE TABLE IF NOT EXISTS `f8ad7_finder_links` (
  `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(255) NOT NULL,
  `route` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `indexdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `md5sum` varchar(32) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `state` int(5) DEFAULT '1',
  `access` int(5) DEFAULT '0',
  `language` varchar(8) NOT NULL,
  `publish_start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `list_price` double unsigned NOT NULL DEFAULT '0',
  `sale_price` double unsigned NOT NULL DEFAULT '0',
  `type_id` int(11) NOT NULL,
  `object` mediumblob NOT NULL,
  PRIMARY KEY (`link_id`),
  KEY `idx_type` (`type_id`),
  KEY `idx_title` (`title`),
  KEY `idx_md5` (`md5sum`),
  KEY `idx_url` (`url`(75)),
  KEY `idx_published_list` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`list_price`),
  KEY `idx_published_sale` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`sale_price`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=49 ;

--
-- Дамп данных таблицы `f8ad7_finder_links`
--

INSERT INTO `f8ad7_finder_links` (`link_id`, `url`, `route`, `title`, `description`, `indexdate`, `md5sum`, `published`, `state`, `access`, `language`, `publish_start_date`, `publish_end_date`, `start_date`, `end_date`, `list_price`, `sale_price`, `type_id`, `object`) VALUES
(37, 'index.php?option=com_zoo&view=item&id=6', 'index.php?option=com_zoo&task=item&item_id=6', 'rgsefdgsdfgdf (Copy) (Copy)', '', '2014-10-03 11:50:29', '65acc6486f363ef331dce781386d01c1', 1, 1, 1, '*', '2014-09-16 11:30:03', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 1, 0x4f3a31393a2246696e646572496e6465786572526573756c74223a31393a7b733a31313a22002a00656c656d656e7473223b613a31323a7b733a323a226964223b733a313a2236223b733a353a22616c696173223b733a32333a22726773656664677364666764662d636f70792d636f7079223b733a31363a22637265617465645f62795f616c696173223b733a303a22223b733a383a226d6f646966696564223b733a31393a22323031342d31302d30332030383a35303a3233223b733a31313a226d6f6469666965645f6279223b733a333a22343435223b733a31303a2273656172636861626c65223b733a313a2231223b733a363a226c61796f7574223b733a343a226974656d223b733a383a226d65746164617461223b4f3a393a224a5265676973747279223a313a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a353a7b733a353a227469746c65223b733a303a22223b733a31313a226465736372697074696f6e223b733a303a22223b733a383a226b6579776f726473223b733a303a22223b733a363a22726f626f7473223b733a303a22223b733a363a22617574686f72223b733a303a22223b7d7d733a31303a226d657461617574686f72223b733a303a22223b733a373a2273756d6d617279223b733a303a22223b733a343a2270617468223b733a34323a22636f6d706f6e656e742f7a6f6f2f6974656d2f726773656664677364666764662d636f70792d636f7079223b733a31323a22656c656d656e745f64617461223b613a323a7b693a303b733a37303a22d196d0bfd0bad0b0d196d0b2d0b0d0bfd196d0b2d0b0d0bfd184d0b2d0bad0bfd184d183d0b2d0bad180d184d183d0bad0b0d180d0b2d196d184d0b0d180d196d0b2d0b5d180223b693a313b733a333a22302e30223b7d7d733a31353a22002a00696e737472756374696f6e73223b613a353a7b693a313b613a333a7b693a303b733a353a227469746c65223b693a313b733a383a227375627469746c65223b693a323b733a323a226964223b7d693a323b613a323a7b693a303b733a373a2273756d6d617279223b693a313b733a343a22626f6479223b7d693a333b613a31303a7b693a303b733a343a226d657461223b693a313b733a31303a226c6973745f7072696365223b693a323b733a31303a2273616c655f7072696365223b693a333b733a343a226c696e6b223b693a343b733a373a226d6574616b6579223b693a353b733a383a226d65746164657363223b693a363b733a31303a226d657461617574686f72223b693a373b733a363a22617574686f72223b693a383b733a31363a22637265617465645f62795f616c696173223b693a393b733a31323a22656c656d656e745f64617461223b7d693a343b613a323a7b693a303b733a343a2270617468223b693a313b733a353a22616c696173223b7d693a353b613a313a7b693a303b733a383a22636f6d6d656e7473223b7d7d733a31313a22002a007461786f6e6f6d79223b613a323a7b733a343a2254797065223b613a313a7b733a373a2241727469636c65223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a373a2241727469636c65223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a383a2243617465676f7279223b613a313a7b733a36343a22d0a4d0b0d180d0bcd0b0d0bad0bed0b3d0b5d0bdd0b5d182d0b8d0bad0b020d0b820d184d0b0d180d0bcd0b0d0bad0bed0b3d0b5d0bdd0bed0bcd0b8d0bad0b0223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a36343a22d0a4d0b0d180d0bcd0b0d0bad0bed0b3d0b5d0bdd0b5d182d0b8d0bad0b020d0b820d184d0b0d180d0bcd0b0d0bad0bed0b3d0b5d0bdd0bed0bcd0b8d0bad0b0223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d7d733a333a2275726c223b733a33393a22696e6465782e7068703f6f7074696f6e3d636f6d5f7a6f6f26766965773d6974656d2669643d36223b733a353a22726f757465223b733a34343a22696e6465782e7068703f6f7074696f6e3d636f6d5f7a6f6f267461736b3d6974656d266974656d5f69643d36223b733a353a227469746c65223b733a32373a22726773656664677364666764662028436f7079292028436f707929223b733a31313a226465736372697074696f6e223b733a303a22223b733a393a227075626c6973686564223b4e3b733a353a227374617465223b623a313b733a363a22616363657373223b733a313a2231223b733a383a226c616e6775616765223b733a313a222a223b733a31383a227075626c6973685f73746172745f64617465223b733a31393a22323031342d30392d31362031313a33303a3033223b733a31363a227075626c6973685f656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a2273746172745f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a383a22656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a226c6973745f7072696365223b4e3b733a31303a2273616c655f7072696365223b4e3b733a373a22747970655f6964223b693a313b733a31353a2264656661756c744c616e6775616765223b733a353a2272752d5255223b7d),
(38, 'index.php?option=com_zoo&view=item&id=7', 'index.php?option=com_zoo&task=item&item_id=7', 'rgsefdgsdfgdf (Copy)', '', '2014-10-03 11:50:31', '27c543e598e860981ad3f5bc491739b6', 1, 1, 1, '*', '2014-09-16 11:30:03', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 1, 0x4f3a31393a2246696e646572496e6465786572526573756c74223a31393a7b733a31313a22002a00656c656d656e7473223b613a31323a7b733a323a226964223b733a313a2237223b733a353a22616c696173223b733a32303a22726773656664677364666764662d636f70792d33223b733a31363a22637265617465645f62795f616c696173223b733a303a22223b733a383a226d6f646966696564223b733a31393a22323031342d31302d30332030383a35303a3233223b733a31313a226d6f6469666965645f6279223b733a333a22343435223b733a31303a2273656172636861626c65223b733a313a2231223b733a363a226c61796f7574223b733a343a226974656d223b733a383a226d65746164617461223b4f3a393a224a5265676973747279223a313a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a353a7b733a353a227469746c65223b733a303a22223b733a31313a226465736372697074696f6e223b733a303a22223b733a383a226b6579776f726473223b733a303a22223b733a363a22726f626f7473223b733a303a22223b733a363a22617574686f72223b733a303a22223b7d7d733a31303a226d657461617574686f72223b733a303a22223b733a373a2273756d6d617279223b733a303a22223b733a343a2270617468223b733a33393a22636f6d706f6e656e742f7a6f6f2f6974656d2f726773656664677364666764662d636f70792d33223b733a31323a22656c656d656e745f64617461223b613a323a7b693a303b733a37303a22d196d0bfd0bad0b0d196d0b2d0b0d0bfd196d0b2d0b0d0bfd184d0b2d0bad0bfd184d183d0b2d0bad180d184d183d0bad0b0d180d0b2d196d184d0b0d180d196d0b2d0b5d180223b693a313b733a333a22352e30223b7d7d733a31353a22002a00696e737472756374696f6e73223b613a353a7b693a313b613a333a7b693a303b733a353a227469746c65223b693a313b733a383a227375627469746c65223b693a323b733a323a226964223b7d693a323b613a323a7b693a303b733a373a2273756d6d617279223b693a313b733a343a22626f6479223b7d693a333b613a31303a7b693a303b733a343a226d657461223b693a313b733a31303a226c6973745f7072696365223b693a323b733a31303a2273616c655f7072696365223b693a333b733a343a226c696e6b223b693a343b733a373a226d6574616b6579223b693a353b733a383a226d65746164657363223b693a363b733a31303a226d657461617574686f72223b693a373b733a363a22617574686f72223b693a383b733a31363a22637265617465645f62795f616c696173223b693a393b733a31323a22656c656d656e745f64617461223b7d693a343b613a323a7b693a303b733a343a2270617468223b693a313b733a353a22616c696173223b7d693a353b613a313a7b693a303b733a383a22636f6d6d656e7473223b7d7d733a31313a22002a007461786f6e6f6d79223b613a333a7b733a343a2254797065223b613a313a7b733a373a2241727469636c65223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a373a2241727469636c65223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a383a2243617465676f7279223b613a313a7b733a36343a22d0a4d0b0d180d0bcd0b0d0bad0bed0b3d0b5d0bdd0b5d182d0b8d0bad0b020d0b820d184d0b0d180d0bcd0b0d0bad0bed0b3d0b5d0bdd0bed0bcd0b8d0bad0b0223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a36343a22d0a4d0b0d180d0bcd0b0d0bad0bed0b3d0b5d0bdd0b5d182d0b8d0bad0b020d0b820d184d0b0d180d0bcd0b0d0bad0bed0b3d0b5d0bdd0bed0bcd0b8d0bad0b0223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a333a22546167223b613a313a7b733a31343a22d09dd0bed0b2d0bed181d182d0b8223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a31343a22d09dd0bed0b2d0bed181d182d0b8223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d7d733a333a2275726c223b733a33393a22696e6465782e7068703f6f7074696f6e3d636f6d5f7a6f6f26766965773d6974656d2669643d37223b733a353a22726f757465223b733a34343a22696e6465782e7068703f6f7074696f6e3d636f6d5f7a6f6f267461736b3d6974656d266974656d5f69643d37223b733a353a227469746c65223b733a32303a22726773656664677364666764662028436f707929223b733a31313a226465736372697074696f6e223b733a303a22223b733a393a227075626c6973686564223b4e3b733a353a227374617465223b623a313b733a363a22616363657373223b733a313a2231223b733a383a226c616e6775616765223b733a313a222a223b733a31383a227075626c6973685f73746172745f64617465223b733a31393a22323031342d30392d31362031313a33303a3033223b733a31363a227075626c6973685f656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a2273746172745f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a383a22656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a226c6973745f7072696365223b4e3b733a31303a2273616c655f7072696365223b4e3b733a373a22747970655f6964223b693a313b733a31353a2264656661756c744c616e6775616765223b733a353a2272752d5255223b7d),
(42, 'index.php?option=com_zoo&view=item&id=4', 'index.php?option=com_zoo&task=item&item_id=4', 'Препарат компании Arena  Pharmaceuticals для лечения  легочной артериальной  гипертензии получил в США статус орфанного', '', '2014-10-03 11:59:56', '91faea437f52bf8d0dbc48e0278b40b1', 1, 1, 1, '*', '2014-09-16 11:30:03', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 1, 0x4f3a31393a2246696e646572496e6465786572526573756c74223a31393a7b733a31313a22002a00656c656d656e7473223b613a31323a7b733a323a226964223b733a313a2234223b733a353a22616c696173223b733a31383a22726773656664677364666764662d636f7079223b733a31363a22637265617465645f62795f616c696173223b733a303a22223b733a383a226d6f646966696564223b733a31393a22323031342d31302d30332030383a35393a3535223b733a31313a226d6f6469666965645f6279223b733a333a22343435223b733a31303a2273656172636861626c65223b733a313a2231223b733a363a226c61796f7574223b733a343a226974656d223b733a383a226d65746164617461223b4f3a393a224a5265676973747279223a313a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a353a7b733a353a227469746c65223b733a303a22223b733a31313a226465736372697074696f6e223b733a303a22223b733a383a226b6579776f726473223b733a303a22223b733a363a22726f626f7473223b733a303a22223b733a363a22617574686f72223b733a303a22223b7d7d733a31303a226d657461617574686f72223b733a303a22223b733a373a2273756d6d617279223b733a303a22223b733a343a2270617468223b733a33373a22636f6d706f6e656e742f7a6f6f2f6974656d2f726773656664677364666764662d636f7079223b733a31323a22656c656d656e745f64617461223b613a323a7b693a303b733a37303a22d196d0bfd0bad0b0d196d0b2d0b0d0bfd196d0b2d0b0d0bfd184d0b2d0bad0bfd184d183d0b2d0bad180d184d183d0bad0b0d180d0b2d196d184d0b0d180d196d0b2d0b5d180223b693a313b733a333a22302e30223b7d7d733a31353a22002a00696e737472756374696f6e73223b613a353a7b693a313b613a333a7b693a303b733a353a227469746c65223b693a313b733a383a227375627469746c65223b693a323b733a323a226964223b7d693a323b613a323a7b693a303b733a373a2273756d6d617279223b693a313b733a343a22626f6479223b7d693a333b613a31303a7b693a303b733a343a226d657461223b693a313b733a31303a226c6973745f7072696365223b693a323b733a31303a2273616c655f7072696365223b693a333b733a343a226c696e6b223b693a343b733a373a226d6574616b6579223b693a353b733a383a226d65746164657363223b693a363b733a31303a226d657461617574686f72223b693a373b733a363a22617574686f72223b693a383b733a31363a22637265617465645f62795f616c696173223b693a393b733a31323a22656c656d656e745f64617461223b7d693a343b613a323a7b693a303b733a343a2270617468223b693a313b733a353a22616c696173223b7d693a353b613a313a7b693a303b733a383a22636f6d6d656e7473223b7d7d733a31313a22002a007461786f6e6f6d79223b613a323a7b733a343a2254797065223b613a313a7b733a373a2241727469636c65223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a373a2241727469636c65223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a383a2243617465676f7279223b613a313a7b733a36343a22d0a4d0b0d180d0bcd0b0d0bad0bed0b3d0b5d0bdd0b5d182d0b8d0bad0b020d0b820d184d0b0d180d0bcd0b0d0bad0bed0b3d0b5d0bdd0bed0bcd0b8d0bad0b0223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a36343a22d0a4d0b0d180d0bcd0b0d0bad0bed0b3d0b5d0bdd0b5d182d0b8d0bad0b020d0b820d184d0b0d180d0bcd0b0d0bad0bed0b3d0b5d0bdd0bed0bcd0b8d0bad0b0223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d7d733a333a2275726c223b733a33393a22696e6465782e7068703f6f7074696f6e3d636f6d5f7a6f6f26766965773d6974656d2669643d34223b733a353a22726f757465223b733a34343a22696e6465782e7068703f6f7074696f6e3d636f6d5f7a6f6f267461736b3d6974656d266974656d5f69643d34223b733a353a227469746c65223b733a3230323a22d09fd180d0b5d0bfd0b0d180d0b0d18220d0bad0bed0bcd0bfd0b0d0bdd0b8d0b8204172656e612020506861726d61636575746963616c7320d0b4d0bbd18f20d0bbd0b5d187d0b5d0bdd0b8d18f2020d0bbd0b5d0b3d0bed187d0bdd0bed0b920d0b0d180d182d0b5d180d0b8d0b0d0bbd18cd0bdd0bed0b92020d0b3d0b8d0bfd0b5d180d182d0b5d0bdd0b7d0b8d0b820d0bfd0bed0bbd183d187d0b8d0bb20d0b220d0a1d0a8d09020d181d182d0b0d182d183d18120d0bed180d184d0b0d0bdd0bdd0bed0b3d0be223b733a31313a226465736372697074696f6e223b733a303a22223b733a393a227075626c6973686564223b4e3b733a353a227374617465223b623a313b733a363a22616363657373223b733a313a2231223b733a383a226c616e6775616765223b733a313a222a223b733a31383a227075626c6973685f73746172745f64617465223b733a31393a22323031342d30392d31362031313a33303a3033223b733a31363a227075626c6973685f656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a2273746172745f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a383a22656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a226c6973745f7072696365223b4e3b733a31303a2273616c655f7072696365223b4e3b733a373a22747970655f6964223b693a313b733a31353a2264656661756c744c616e6775616765223b733a353a2272752d5255223b7d),
(46, 'index.php?option=com_zoo&view=item&id=3', 'index.php?option=com_zoo&task=item&item_id=3', '26-летняя москвичка  переписала  книгу рекордов US Open', '', '2014-10-03 17:38:47', 'ad59b8c4075598efdaebb223bb8fc3e9', 1, 1, 1, '*', '2014-09-16 11:30:03', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 1, 0x4f3a31393a2246696e646572496e6465786572526573756c74223a31393a7b733a31313a22002a00656c656d656e7473223b613a31323a7b733a323a226964223b733a313a2233223b733a353a22616c696173223b733a31333a2272677365666467736466676466223b733a31363a22637265617465645f62795f616c696173223b733a303a22223b733a383a226d6f646966696564223b733a31393a22323031342d31302d30332031343a33383a3435223b733a31313a226d6f6469666965645f6279223b733a333a22343435223b733a31303a2273656172636861626c65223b733a313a2231223b733a363a226c61796f7574223b733a343a226974656d223b733a383a226d65746164617461223b4f3a393a224a5265676973747279223a313a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a353a7b733a353a227469746c65223b733a303a22223b733a31313a226465736372697074696f6e223b733a303a22223b733a383a226b6579776f726473223b733a303a22223b733a363a22726f626f7473223b733a303a22223b733a363a22617574686f72223b733a303a22223b7d7d733a31303a226d657461617574686f72223b733a303a22223b733a373a2273756d6d617279223b733a303a22223b733a343a2270617468223b733a33323a22636f6d706f6e656e742f7a6f6f2f6974656d2f72677365666467736466676466223b733a31323a22656c656d656e745f64617461223b613a323a7b693a303b733a37303a22d196d0bfd0bad0b0d196d0b2d0b0d0bfd196d0b2d0b0d0bfd184d0b2d0bad0bfd184d183d0b2d0bad180d184d183d0bad0b0d180d0b2d196d184d0b0d180d196d0b2d0b5d180223b693a313b733a333a22352e30223b7d7d733a31353a22002a00696e737472756374696f6e73223b613a353a7b693a313b613a333a7b693a303b733a353a227469746c65223b693a313b733a383a227375627469746c65223b693a323b733a323a226964223b7d693a323b613a323a7b693a303b733a373a2273756d6d617279223b693a313b733a343a22626f6479223b7d693a333b613a31303a7b693a303b733a343a226d657461223b693a313b733a31303a226c6973745f7072696365223b693a323b733a31303a2273616c655f7072696365223b693a333b733a343a226c696e6b223b693a343b733a373a226d6574616b6579223b693a353b733a383a226d65746164657363223b693a363b733a31303a226d657461617574686f72223b693a373b733a363a22617574686f72223b693a383b733a31363a22637265617465645f62795f616c696173223b693a393b733a31323a22656c656d656e745f64617461223b7d693a343b613a323a7b693a303b733a343a2270617468223b693a313b733a353a22616c696173223b7d693a353b613a313a7b693a303b733a383a22636f6d6d656e7473223b7d7d733a31313a22002a007461786f6e6f6d79223b613a333a7b733a343a2254797065223b613a313a7b733a373a2241727469636c65223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a373a2241727469636c65223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a383a2243617465676f7279223b613a313a7b733a36343a22d0a4d0b0d180d0bcd0b0d0bad0bed0b3d0b5d0bdd0b5d182d0b8d0bad0b020d0b820d184d0b0d180d0bcd0b0d0bad0bed0b3d0b5d0bdd0bed0bcd0b8d0bad0b0223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a36343a22d0a4d0b0d180d0bcd0b0d0bad0bed0b3d0b5d0bdd0b5d182d0b8d0bad0b020d0b820d184d0b0d180d0bcd0b0d0bad0bed0b3d0b5d0bdd0bed0bcd0b8d0bad0b0223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a333a22546167223b613a353a7b733a33333a22d090d0bad182d183d0b0d0bbd18cd0bdd18bd0b520d0bed0b1d0b7d0bed180d18b223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a33333a22d090d0bad182d183d0b0d0bbd18cd0bdd18bd0b520d0bed0b1d0b7d0bed180d18b223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d733a31343a22d09dd0bed0b2d0bed181d182d0b8223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a31343a22d09dd0bed0b2d0bed181d182d0b8223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d733a34393a22d09ed180d0b8d0b3d0b8d0bdd0b0d0bbd18cd0bdd18bd0b520d0b8d181d181d0bbd0b5d0b4d0bed0b2d0b0d0bdd0b8d18f223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a34393a22d09ed180d0b8d0b3d0b8d0bdd0b0d0bbd18cd0bdd18bd0b520d0b8d181d181d0bbd0b5d0b4d0bed0b2d0b0d0bdd0b8d18f223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d733a36333a22d0a4d0b0d180d0bcd0b0d0bad0bed0b3d0b5d0bdd0b5d182d0b8d187d0b5d181d0bad0b8d0b520d0b8d181d181d0bbd0b5d0b4d0bed0b2d0b0d0bdd0b8d18f223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a36333a22d0a4d0b0d180d0bcd0b0d0bad0bed0b3d0b5d0bdd0b5d182d0b8d187d0b5d181d0bad0b8d0b520d0b8d181d181d0bbd0b5d0b4d0bed0b2d0b0d0bdd0b8d18f223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d733a35353a22d0a4d0b0d180d0bcd0b0d0bad0bed0b3d0b5d0bdd0bed0bcd0bdd18bd0b520d0b8d181d181d0bbd0b5d0b4d0bed0b2d0b0d0bdd0b8d18f223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a35353a22d0a4d0b0d180d0bcd0b0d0bad0bed0b3d0b5d0bdd0bed0bcd0bdd18bd0b520d0b8d181d181d0bbd0b5d0b4d0bed0b2d0b0d0bdd0b8d18f223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d7d733a333a2275726c223b733a33393a22696e6465782e7068703f6f7074696f6e3d636f6d5f7a6f6f26766965773d6974656d2669643d33223b733a353a22726f757465223b733a34343a22696e6465782e7068703f6f7074696f6e3d636f6d5f7a6f6f267461736b3d6974656d266974656d5f69643d33223b733a353a227469746c65223b733a39333a2232362dd0bbd0b5d182d0bdd18fd18f20d0bcd0bed181d0bad0b2d0b8d187d0bad0b02020d0bfd0b5d180d0b5d0bfd0b8d181d0b0d0bbd0b02020d0bad0bdd0b8d0b3d18320d180d0b5d0bad0bed180d0b4d0bed0b2205553204f70656e223b733a31313a226465736372697074696f6e223b733a303a22223b733a393a227075626c6973686564223b4e3b733a353a227374617465223b623a313b733a363a22616363657373223b733a313a2231223b733a383a226c616e6775616765223b733a313a222a223b733a31383a227075626c6973685f73746172745f64617465223b733a31393a22323031342d30392d31362031313a33303a3033223b733a31363a227075626c6973685f656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a2273746172745f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a383a22656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a226c6973745f7072696365223b4e3b733a31303a2273616c655f7072696365223b4e3b733a373a22747970655f6964223b693a313b733a31353a2264656661756c744c616e6775616765223b733a353a2272752d5255223b7d),
(47, 'index.php?option=com_zoo&view=item&id=5', 'index.php?option=com_zoo&task=item&item_id=5', 'Минпромторг разъяснил,  какие ограничения  затронут зарубежные ЛС', '', '2014-10-03 17:40:55', 'b86616f0494acbfdea1ae4f85e7f9c41', 1, 1, 1, '*', '2014-09-16 11:30:03', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 1, 0x4f3a31393a2246696e646572496e6465786572526573756c74223a31393a7b733a31313a22002a00656c656d656e7473223b613a31323a7b733a323a226964223b733a313a2235223b733a353a22616c696173223b733a32303a22726773656664677364666764662d636f70792d32223b733a31363a22637265617465645f62795f616c696173223b733a303a22223b733a383a226d6f646966696564223b733a31393a22323031342d31302d30332031343a34303a3533223b733a31313a226d6f6469666965645f6279223b733a333a22343435223b733a31303a2273656172636861626c65223b733a313a2231223b733a363a226c61796f7574223b733a343a226974656d223b733a383a226d65746164617461223b4f3a393a224a5265676973747279223a313a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a353a7b733a353a227469746c65223b733a303a22223b733a31313a226465736372697074696f6e223b733a303a22223b733a383a226b6579776f726473223b733a303a22223b733a363a22726f626f7473223b733a303a22223b733a363a22617574686f72223b733a303a22223b7d7d733a31303a226d657461617574686f72223b733a303a22223b733a373a2273756d6d617279223b733a303a22223b733a343a2270617468223b733a33393a22636f6d706f6e656e742f7a6f6f2f6974656d2f726773656664677364666764662d636f70792d32223b733a31323a22656c656d656e745f64617461223b613a323a7b693a303b733a37303a22d196d0bfd0bad0b0d196d0b2d0b0d0bfd196d0b2d0b0d0bfd184d0b2d0bad0bfd184d183d0b2d0bad180d184d183d0bad0b0d180d0b2d196d184d0b0d180d196d0b2d0b5d180223b693a313b733a333a22302e30223b7d7d733a31353a22002a00696e737472756374696f6e73223b613a353a7b693a313b613a333a7b693a303b733a353a227469746c65223b693a313b733a383a227375627469746c65223b693a323b733a323a226964223b7d693a323b613a323a7b693a303b733a373a2273756d6d617279223b693a313b733a343a22626f6479223b7d693a333b613a31303a7b693a303b733a343a226d657461223b693a313b733a31303a226c6973745f7072696365223b693a323b733a31303a2273616c655f7072696365223b693a333b733a343a226c696e6b223b693a343b733a373a226d6574616b6579223b693a353b733a383a226d65746164657363223b693a363b733a31303a226d657461617574686f72223b693a373b733a363a22617574686f72223b693a383b733a31363a22637265617465645f62795f616c696173223b693a393b733a31323a22656c656d656e745f64617461223b7d693a343b613a323a7b693a303b733a343a2270617468223b693a313b733a353a22616c696173223b7d693a353b613a313a7b693a303b733a383a22636f6d6d656e7473223b7d7d733a31313a22002a007461786f6e6f6d79223b613a333a7b733a343a2254797065223b613a313a7b733a373a2241727469636c65223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a373a2241727469636c65223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a383a2243617465676f7279223b613a313a7b733a36343a22d0a4d0b0d180d0bcd0b0d0bad0bed0b3d0b5d0bdd0b5d182d0b8d0bad0b020d0b820d184d0b0d180d0bcd0b0d0bad0bed0b3d0b5d0bdd0bed0bcd0b8d0bad0b0223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a36343a22d0a4d0b0d180d0bcd0b0d0bad0bed0b3d0b5d0bdd0b5d182d0b8d0bad0b020d0b820d184d0b0d180d0bcd0b0d0bad0bed0b3d0b5d0bdd0bed0bcd0b8d0bad0b0223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a333a22546167223b613a313a7b733a31343a22d09dd0bed0b2d0bed181d182d0b8223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a31343a22d09dd0bed0b2d0bed181d182d0b8223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d7d733a333a2275726c223b733a33393a22696e6465782e7068703f6f7074696f6e3d636f6d5f7a6f6f26766965773d6974656d2669643d35223b733a353a22726f757465223b733a34343a22696e6465782e7068703f6f7074696f6e3d636f6d5f7a6f6f267461736b3d6974656d266974656d5f69643d35223b733a353a227469746c65223b733a3132313a22d09cd0b8d0bdd0bfd180d0bed0bcd182d0bed180d0b320d180d0b0d0b7d18ad18fd181d0bdd0b8d0bb2c2020d0bad0b0d0bad0b8d0b520d0bed0b3d180d0b0d0bdd0b8d187d0b5d0bdd0b8d18f2020d0b7d0b0d182d180d0bed0bdd183d18220d0b7d0b0d180d183d0b1d0b5d0b6d0bdd18bd0b520d09bd0a1223b733a31313a226465736372697074696f6e223b733a303a22223b733a393a227075626c6973686564223b4e3b733a353a227374617465223b623a313b733a363a22616363657373223b733a313a2231223b733a383a226c616e6775616765223b733a313a222a223b733a31383a227075626c6973685f73746172745f64617465223b733a31393a22323031342d30392d31362031313a33303a3033223b733a31363a227075626c6973685f656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a2273746172745f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a383a22656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a226c6973745f7072696365223b4e3b733a31303a2273616c655f7072696365223b4e3b733a373a22747970655f6964223b693a313b733a31353a2264656661756c744c616e6775616765223b733a353a2272752d5255223b7d),
(48, 'index.php?option=com_zoo&view=item&id=2', 'index.php?option=com_zoo&view=item&layout=item&Itemid=101', 'Фармакогенетика и фармакогеномика', '', '2014-10-03 17:41:31', 'aa7b55d9bfbd2f801ca382222ca8f84e', 1, 1, 1, '*', '2014-09-16 11:29:18', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 1, 0x4f3a31393a2246696e646572496e6465786572526573756c74223a31393a7b733a31313a22002a00656c656d656e7473223b613a31323a7b733a323a226964223b733a313a2232223b733a353a22616c696173223b733a363a22786465627567223b733a31363a22637265617465645f62795f616c696173223b733a303a22223b733a383a226d6f646966696564223b733a31393a22323031342d31302d30332031343a34313a3239223b733a31313a226d6f6469666965645f6279223b733a333a22343435223b733a31303a2273656172636861626c65223b733a313a2231223b733a363a226c61796f7574223b733a343a226974656d223b733a383a226d65746164617461223b4f3a393a224a5265676973747279223a313a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a353a7b733a353a227469746c65223b733a303a22223b733a31313a226465736372697074696f6e223b733a303a22223b733a383a226b6579776f726473223b733a303a22223b733a363a22726f626f7473223b733a303a22223b733a363a22617574686f72223b733a303a22223b7d7d733a31303a226d657461617574686f72223b733a303a22223b733a373a2273756d6d617279223b733a303a22223b733a343a2270617468223b733a303a22223b733a31323a22656c656d656e745f64617461223b613a323a7b693a303b733a3137313a22d09dd0b0d183d187d0bdd0be2dd0bfd180d0b0d0bad182d0b8d187d0b5d181d0bad0b8d0b920d0bcd0b5d0b4d0b8d186d0b8d0bdd181d0bad0b8d0b920d0b6d183d180d0bdd0b0d0bb20c2abd0a4d0b0d180d0bcd0b0d0bad0bed0b3d0b5d0bdd0b5d182d0b8d0bad0b020d0b820d184d0b0d180d0bcd0b0d0bad0bed0b3d0b5d0bdd0bed0bcd0b8d0bad0b0c2bb20d0b8d0b7d0b4d0b0d191d182d181d18f20d181203230313420d0b32e223b693a313b733a3534363a22c2abd0a4d0b0d180d0bcd0b0d0bad0bed0b3d0b5d0bdd0b5d182d0b8d0bad0b020d0b820d184d0b0d180d0bcd0b0d0bad0bed0b3d0b5d0bdd0bed0bcd0b8d0bad0b0c2bb20d0bfd183d0b1d0bbd0b8d0bad183d0b5d18220d0bed180d0b8d0b3d0b8d0bdd0b0d0bbd18cd0bdd18bd0b520d181d182d0b0d182d18cd0b820d0be20d0bfd180d0bed0b2d0b5d0b4d191d0bdd0bdd18bd18520d0bad0bbd0b8d0bdd0b8d187d0b5d181d0bad0b8d1852c20d0bad0bbd0b8d0bdd0b8d0bad0be2dd18dd0bad181d0bfd0b5d180d0b8d0bcd0b5d0bdd182d0b0d0bbd18cd0bdd18bd18520d0b820d184d183d0bdd0b4d0b0d0bcd0b5d0bdd182d0b0d0bbd18cd0bdd18bd18520d0bdd0b0d183d187d0bdd18bd18520d180d0b0d0b1d0bed182d0b0d1852c20d0bed0b1d0b7d0bed180d18b2c20d0bbd0b5d0bad186d0b8d0b82c20d0bed0bfd0b8d181d0b0d0bdd0b8d18f20d0bad0bbd0b8d0bdd0b8d187d0b5d181d0bad0b8d18520d181d0bbd183d187d0b0d0b5d0b22c20d0b020d182d0b0d0bad0b6d0b520d0b2d181d0bfd0bed0bcd0bed0b3d0b0d182d0b5d0bbd18cd0bdd18bd0b520d0bcd0b0d182d0b5d180d0b8d0b0d0bbd18b20d0bfd0be20d0b2d181d0b5d0bc20d0b0d0bad182d183d0b0d0bbd18cd0bdd18bd0bc20d0bfd180d0bed0b1d0bbd0b5d0bcd0b0d0bc20d0bfd0b5d180d181d0bed0bdd0b0d0b8d0b7d0b8d180d0bed0b2d0b0d0bdd0bdd0bed0b920d0bcd0b5d0b4d0b8d186d0b8d0bdd18b223b7d7d733a31353a22002a00696e737472756374696f6e73223b613a353a7b693a313b613a333a7b693a303b733a353a227469746c65223b693a313b733a383a227375627469746c65223b693a323b733a323a226964223b7d693a323b613a323a7b693a303b733a373a2273756d6d617279223b693a313b733a343a22626f6479223b7d693a333b613a31303a7b693a303b733a343a226d657461223b693a313b733a31303a226c6973745f7072696365223b693a323b733a31303a2273616c655f7072696365223b693a333b733a343a226c696e6b223b693a343b733a373a226d6574616b6579223b693a353b733a383a226d65746164657363223b693a363b733a31303a226d657461617574686f72223b693a373b733a363a22617574686f72223b693a383b733a31363a22637265617465645f62795f616c696173223b693a393b733a31323a22656c656d656e745f64617461223b7d693a343b613a323a7b693a303b733a343a2270617468223b693a313b733a353a22616c696173223b7d693a353b613a313a7b693a303b733a383a22636f6d6d656e7473223b7d7d733a31313a22002a007461786f6e6f6d79223b613a313a7b733a343a2254797065223b613a313a7b733a373a224a6f75726e616c223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a373a224a6f75726e616c223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d7d733a333a2275726c223b733a33393a22696e6465782e7068703f6f7074696f6e3d636f6d5f7a6f6f26766965773d6974656d2669643d32223b733a353a22726f757465223b733a35373a22696e6465782e7068703f6f7074696f6e3d636f6d5f7a6f6f26766965773d6974656d266c61796f75743d6974656d264974656d69643d313031223b733a353a227469746c65223b733a36343a22d0a4d0b0d180d0bcd0b0d0bad0bed0b3d0b5d0bdd0b5d182d0b8d0bad0b020d0b820d184d0b0d180d0bcd0b0d0bad0bed0b3d0b5d0bdd0bed0bcd0b8d0bad0b0223b733a31313a226465736372697074696f6e223b733a303a22223b733a393a227075626c6973686564223b4e3b733a353a227374617465223b623a313b733a363a22616363657373223b733a313a2231223b733a383a226c616e6775616765223b733a313a222a223b733a31383a227075626c6973685f73746172745f64617465223b733a31393a22323031342d30392d31362031313a32393a3138223b733a31363a227075626c6973685f656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a2273746172745f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a383a22656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a226c6973745f7072696365223b4e3b733a31303a2273616c655f7072696365223b4e3b733a373a22747970655f6964223b693a313b733a31353a2264656661756c744c616e6775616765223b733a353a2272752d5255223b7d);

-- --------------------------------------------------------

--
-- Структура таблицы `f8ad7_finder_links_terms0`
--

CREATE TABLE IF NOT EXISTS `f8ad7_finder_links_terms0` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `f8ad7_finder_links_terms0`
--

INSERT INTO `f8ad7_finder_links_terms0` (`link_id`, `term_id`, `weight`) VALUES
(37, 139, 0.56004),
(38, 139, 0.56004),
(42, 139, 0.56004),
(46, 139, 0.56004),
(47, 139, 0.56004),
(42, 693, 0.56661),
(42, 694, 2.89),
(42, 695, 3.11661);

-- --------------------------------------------------------

--
-- Структура таблицы `f8ad7_finder_links_terms1`
--

CREATE TABLE IF NOT EXISTS `f8ad7_finder_links_terms1` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `f8ad7_finder_links_terms1`
--

INSERT INTO `f8ad7_finder_links_terms1` (`link_id`, `term_id`, `weight`) VALUES
(37, 528, 0.17),
(42, 714, 0.90661),
(42, 715, 2.89),
(42, 716, 3.4),
(42, 717, 0.79339),
(42, 718, 2.60661),
(42, 719, 3.34339),
(47, 887, 0.22661),
(48, 949, 0.48),
(48, 950, 1.8),
(48, 951, 2.28);

-- --------------------------------------------------------

--
-- Структура таблицы `f8ad7_finder_links_terms2`
--

CREATE TABLE IF NOT EXISTS `f8ad7_finder_links_terms2` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `f8ad7_finder_links_terms2`
--

INSERT INTO `f8ad7_finder_links_terms2` (`link_id`, `term_id`, `weight`) VALUES
(37, 488, 1.2),
(42, 488, 1.2),
(46, 488, 1.2),
(47, 488, 1.2),
(48, 488, 1.7),
(37, 489, 1.88004),
(42, 489, 1.88004),
(46, 489, 1.88004),
(47, 489, 1.88004),
(48, 489, 2.66339),
(37, 490, 2.4),
(42, 490, 2.4),
(46, 490, 2.4),
(47, 490, 2.4),
(48, 490, 3.4),
(37, 491, 1.2),
(42, 491, 1.2),
(46, 491, 1.2),
(47, 491, 1.2),
(48, 491, 1.7),
(42, 708, 0.34),
(42, 709, 2.32339),
(42, 710, 2.83339),
(46, 870, 1.2),
(46, 871, 2.4),
(46, 872, 1.2),
(46, 873, 2.31996),
(48, 1004, 2.4),
(48, 1005, 2.19996),
(48, 1006, 2.28),
(48, 1007, 2.24004),
(48, 1008, 2.4),
(48, 1009, 1.2),
(48, 1010, 2.12004),
(48, 1011, 2.4);

-- --------------------------------------------------------

--
-- Структура таблицы `f8ad7_finder_links_terms3`
--

CREATE TABLE IF NOT EXISTS `f8ad7_finder_links_terms3` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `f8ad7_finder_links_terms3`
--

INSERT INTO `f8ad7_finder_links_terms3` (`link_id`, `term_id`, `weight`) VALUES
(48, 912, 0.56004);

-- --------------------------------------------------------

--
-- Структура таблицы `f8ad7_finder_links_terms4`
--

CREATE TABLE IF NOT EXISTS `f8ad7_finder_links_terms4` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `f8ad7_finder_links_terms4`
--

INSERT INTO `f8ad7_finder_links_terms4` (`link_id`, `term_id`, `weight`) VALUES
(37, 95, 1.2),
(38, 95, 1.2),
(42, 95, 1.2),
(46, 95, 1.2),
(47, 95, 1.2),
(37, 96, 2.8666),
(38, 96, 2.8666),
(42, 96, 2.8666),
(46, 96, 2.8666),
(47, 96, 2.8666),
(37, 97, 3.2),
(38, 97, 3.2),
(42, 97, 3.2),
(46, 97, 3.2),
(47, 97, 3.2),
(42, 142, 3.4668),
(46, 142, 3.4668),
(47, 142, 3.4668),
(37, 142, 4.94019),
(38, 142, 6.41358),
(42, 236, 1.0668),
(47, 236, 1.0668),
(38, 236, 1.97358),
(37, 236, 3.04038),
(42, 238, 6.4),
(47, 238, 6.4),
(37, 238, 9.12),
(38, 238, 11.84),
(37, 413, 0.08004),
(42, 413, 0.08004),
(46, 413, 0.08004),
(47, 413, 0.08004),
(48, 413, 0.35351),
(37, 414, 1.88004),
(42, 414, 1.88004),
(46, 414, 1.88004),
(47, 414, 1.88004),
(48, 414, 2.66339),
(37, 529, 7.41),
(37, 530, 10.0702),
(38, 532, 4.8),
(47, 532, 4.8),
(38, 533, 6.6668),
(47, 533, 6.6668),
(46, 856, 2.88),
(48, 933, 3.84),
(48, 934, 2.28),
(48, 935, 2.31996),
(48, 936, 1.88004),
(48, 937, 2.19996),
(48, 938, 0.63996),
(48, 939, 1.59996),
(48, 940, 1.8);

-- --------------------------------------------------------

--
-- Структура таблицы `f8ad7_finder_links_terms5`
--

CREATE TABLE IF NOT EXISTS `f8ad7_finder_links_terms5` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `f8ad7_finder_links_terms5`
--

INSERT INTO `f8ad7_finder_links_terms5` (`link_id`, `term_id`, `weight`) VALUES
(42, 711, 0.90661),
(42, 712, 2.49339),
(42, 713, 3.4),
(46, 857, 0.56661),
(46, 858, 2.49339),
(46, 859, 2.66339),
(47, 884, 0.56661),
(47, 885, 2.66339),
(47, 886, 3.17339),
(48, 914, 2.4),
(48, 915, 3.84),
(48, 916, 4.8),
(48, 941, 1.2),
(48, 942, 2.28),
(48, 943, 2.4),
(48, 944, 1.75992),
(48, 945, 2.4),
(48, 946, 2.4),
(48, 947, 1.95996),
(48, 948, 2.04),
(48, 1001, 0.39996),
(48, 1002, 2.04),
(48, 1003, 2.4);

-- --------------------------------------------------------

--
-- Структура таблицы `f8ad7_finder_links_terms6`
--

CREATE TABLE IF NOT EXISTS `f8ad7_finder_links_terms6` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `f8ad7_finder_links_terms7`
--

CREATE TABLE IF NOT EXISTS `f8ad7_finder_links_terms7` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `f8ad7_finder_links_terms7`
--

INSERT INTO `f8ad7_finder_links_terms7` (`link_id`, `term_id`, `weight`) VALUES
(42, 721, 0.79339),
(42, 722, 2.21),
(42, 723, 2.43661),
(42, 724, 0.90661),
(42, 725, 2.66339),
(42, 726, 3.00339),
(46, 852, 0.22661),
(46, 853, 2.09661),
(46, 864, 1.13339),
(46, 865, 2.60661),
(46, 866, 3.11661),
(48, 975, 1.2),
(48, 976, 2.28),
(48, 977, 0.15996),
(48, 978, 1.47996),
(48, 979, 1.92),
(48, 980, 0.72),
(48, 981, 2.31996),
(48, 982, 2.4),
(48, 983, 0.87996),
(48, 984, 2.12004),
(48, 985, 2.4),
(48, 986, 0.72),
(48, 987, 2.07996),
(48, 988, 2.36004);

-- --------------------------------------------------------

--
-- Структура таблицы `f8ad7_finder_links_terms8`
--

CREATE TABLE IF NOT EXISTS `f8ad7_finder_links_terms8` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `f8ad7_finder_links_terms8`
--

INSERT INTO `f8ad7_finder_links_terms8` (`link_id`, `term_id`, `weight`) VALUES
(37, 140, 0.5334),
(42, 140, 0.5334),
(46, 140, 0.5334),
(47, 140, 0.5334),
(38, 140, 1.0668),
(37, 141, 3.2),
(42, 141, 3.2),
(46, 141, 3.2),
(47, 141, 3.2),
(38, 141, 6.4),
(37, 237, 3.5334),
(42, 237, 3.5334),
(47, 237, 3.5334),
(38, 237, 7.0668),
(42, 696, 1.7),
(42, 697, 2.77661),
(42, 698, 3.23);

-- --------------------------------------------------------

--
-- Структура таблицы `f8ad7_finder_links_terms9`
--

CREATE TABLE IF NOT EXISTS `f8ad7_finder_links_terms9` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `f8ad7_finder_links_terms9`
--

INSERT INTO `f8ad7_finder_links_terms9` (`link_id`, `term_id`, `weight`) VALUES
(46, 623, 0.48),
(48, 623, 0.48),
(46, 629, 0.96),
(48, 629, 0.96),
(42, 705, 1.24661),
(42, 706, 2.77661),
(42, 707, 2.89),
(42, 720, 1.02),
(42, 727, 0.68),
(42, 728, 2.60661),
(42, 729, 0.34),
(42, 730, 2.26661),
(42, 731, 2.83339),
(46, 863, 2.19996),
(47, 891, 1.24661),
(47, 892, 2.83339),
(47, 893, 3.4),
(48, 913, 0.8),
(48, 929, 0.08004),
(48, 965, 0.08004),
(48, 966, 1.71996),
(48, 967, 2.19996),
(48, 968, 1.71996),
(48, 969, 2.07996),
(48, 970, 0.63996),
(48, 971, 2.00004),
(48, 972, 2.31996),
(48, 973, 1.95996),
(48, 974, 2.04),
(48, 992, 0.08004),
(48, 993, 1.44),
(48, 994, 1.52004),
(48, 995, 0.56004),
(48, 996, 1.56),
(48, 997, 1.8),
(48, 998, 0.48),
(48, 999, 1.52004),
(48, 1000, 2.00004);

-- --------------------------------------------------------

--
-- Структура таблицы `f8ad7_finder_links_termsa`
--

CREATE TABLE IF NOT EXISTS `f8ad7_finder_links_termsa` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `f8ad7_finder_links_termsa`
--

INSERT INTO `f8ad7_finder_links_termsa` (`link_id`, `term_id`, `weight`) VALUES
(42, 692, 0.17),
(46, 860, 1.02),
(46, 861, 2.83339),
(46, 862, 3.17339),
(47, 888, 1.24661),
(47, 889, 2.89),
(47, 890, 3.23),
(48, 952, 0.72),
(48, 953, 1.68),
(48, 954, 1.88004),
(48, 955, 0.87996),
(48, 956, 1.92),
(48, 957, 2.4),
(48, 958, 0.63996);

-- --------------------------------------------------------

--
-- Структура таблицы `f8ad7_finder_links_termsb`
--

CREATE TABLE IF NOT EXISTS `f8ad7_finder_links_termsb` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `f8ad7_finder_links_termsb`
--

INSERT INTO `f8ad7_finder_links_termsb` (`link_id`, `term_id`, `weight`) VALUES
(37, 146, 1.2),
(42, 146, 1.2),
(46, 146, 1.2),
(47, 146, 1.2),
(38, 146, 2.4),
(42, 702, 0.11339),
(42, 703, 1.98339),
(42, 704, 2.38),
(48, 923, 0.32004),
(48, 924, 1.8),
(48, 925, 2.19996),
(48, 926, 1.2),
(48, 927, 2.19996),
(48, 928, 2.31996);

-- --------------------------------------------------------

--
-- Структура таблицы `f8ad7_finder_links_termsc`
--

CREATE TABLE IF NOT EXISTS `f8ad7_finder_links_termsc` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `f8ad7_finder_links_termsc`
--

INSERT INTO `f8ad7_finder_links_termsc` (`link_id`, `term_id`, `weight`) VALUES
(37, 137, 0.36),
(42, 137, 0.36),
(47, 137, 0.36),
(48, 389, 0.17),
(47, 389, 0.4),
(38, 389, 0.8),
(42, 699, 1.36),
(42, 700, 3.06),
(42, 701, 3.4),
(46, 848, 1.02),
(46, 849, 2.77661),
(46, 850, 3.4),
(46, 854, 0.80004),
(46, 855, 1.88004),
(48, 910, 0.48),
(48, 911, 1.44),
(48, 917, 0.08004),
(48, 918, 1.47996),
(48, 919, 2.12004),
(48, 920, 0.80004),
(48, 921, 2.00004),
(48, 922, 2.4);

-- --------------------------------------------------------

--
-- Структура таблицы `f8ad7_finder_links_termsd`
--

CREATE TABLE IF NOT EXISTS `f8ad7_finder_links_termsd` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `f8ad7_finder_links_termsd`
--

INSERT INTO `f8ad7_finder_links_termsd` (`link_id`, `term_id`, `weight`) VALUES
(46, 517, 0.56004),
(47, 517, 0.56004),
(38, 517, 1.68012),
(46, 851, 0.45339),
(48, 930, 0.48),
(48, 931, 2.12004),
(48, 932, 2.19996),
(48, 959, 1.2),
(48, 960, 2.4),
(48, 961, 2.4),
(48, 962, 0.56004),
(48, 963, 1.8),
(48, 964, 2.07996);

-- --------------------------------------------------------

--
-- Структура таблицы `f8ad7_finder_links_termse`
--

CREATE TABLE IF NOT EXISTS `f8ad7_finder_links_termse` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `f8ad7_finder_links_termse`
--

INSERT INTO `f8ad7_finder_links_termse` (`link_id`, `term_id`, `weight`) VALUES
(46, 138, 0.17),
(46, 516, 0.36),
(38, 516, 0.72),
(47, 531, 0.17),
(38, 531, 0.34),
(46, 867, 0.90661),
(46, 868, 2.32339),
(46, 869, 2.60661),
(47, 879, 1.13339),
(47, 880, 2.43661),
(47, 881, 0.90661),
(47, 882, 2.77661),
(47, 883, 2.94661),
(47, 894, 1.02),
(47, 895, 2.55),
(47, 896, 3.23),
(48, 989, 0.56004),
(48, 990, 1.76004),
(48, 991, 2.04);

-- --------------------------------------------------------

--
-- Структура таблицы `f8ad7_finder_links_termsf`
--

CREATE TABLE IF NOT EXISTS `f8ad7_finder_links_termsf` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `f8ad7_finder_links_termsf`
--

INSERT INTO `f8ad7_finder_links_termsf` (`link_id`, `term_id`, `weight`) VALUES
(37, 143, 0.4),
(42, 143, 0.4),
(46, 143, 0.4),
(47, 143, 0.4),
(38, 143, 0.8),
(37, 144, 2.5334),
(42, 144, 2.5334),
(46, 144, 2.5334),
(47, 144, 2.5334),
(38, 144, 5.0668),
(37, 145, 3.4666),
(42, 145, 3.4666),
(46, 145, 3.4666),
(47, 145, 3.4666),
(38, 145, 6.9332);

-- --------------------------------------------------------

--
-- Структура таблицы `f8ad7_finder_taxonomy`
--

CREATE TABLE IF NOT EXISTS `f8ad7_finder_taxonomy` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `state` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `access` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  KEY `state` (`state`),
  KEY `ordering` (`ordering`),
  KEY `access` (`access`),
  KEY `idx_parent_published` (`parent_id`,`state`,`access`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=68 ;

--
-- Дамп данных таблицы `f8ad7_finder_taxonomy`
--

INSERT INTO `f8ad7_finder_taxonomy` (`id`, `parent_id`, `title`, `state`, `access`, `ordering`) VALUES
(1, 0, 'ROOT', 0, 0, 0),
(2, 1, 'Type', 1, 1, 0),
(4, 1, 'Tag', 1, 1, 0),
(7, 1, 'Category', 1, 1, 0),
(21, 2, 'Article', 1, 1, 0),
(54, 4, 'Новости', 1, 1, 0),
(55, 7, 'Фармакогенетика и фармакогеномика', 1, 1, 0),
(63, 4, 'Актуальные обзоры', 1, 1, 0),
(64, 4, 'Оригинальные исследования', 1, 1, 0),
(65, 4, 'Фармакогенетические исследования', 1, 1, 0),
(66, 4, 'Фармакогеномные исследования', 1, 1, 0),
(67, 2, 'Journal', 1, 1, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `f8ad7_finder_taxonomy_map`
--

CREATE TABLE IF NOT EXISTS `f8ad7_finder_taxonomy_map` (
  `link_id` int(10) unsigned NOT NULL,
  `node_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`node_id`),
  KEY `link_id` (`link_id`),
  KEY `node_id` (`node_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `f8ad7_finder_taxonomy_map`
--

INSERT INTO `f8ad7_finder_taxonomy_map` (`link_id`, `node_id`) VALUES
(37, 21),
(37, 55),
(38, 21),
(38, 54),
(38, 55),
(42, 21),
(42, 55),
(46, 21),
(46, 54),
(46, 55),
(46, 63),
(46, 64),
(46, 65),
(46, 66),
(47, 21),
(47, 54),
(47, 55),
(48, 67);

-- --------------------------------------------------------

--
-- Структура таблицы `f8ad7_finder_terms`
--

CREATE TABLE IF NOT EXISTS `f8ad7_finder_terms` (
  `term_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '0',
  `soundex` varchar(75) NOT NULL,
  `links` int(10) NOT NULL DEFAULT '0',
  `language` char(3) NOT NULL DEFAULT '',
  PRIMARY KEY (`term_id`),
  UNIQUE KEY `idx_term` (`term`),
  KEY `idx_term_phrase` (`term`,`phrase`),
  KEY `idx_stem_phrase` (`stem`,`phrase`),
  KEY `idx_soundex_phrase` (`soundex`,`phrase`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1037 ;

--
-- Дамп данных таблицы `f8ad7_finder_terms`
--

INSERT INTO `f8ad7_finder_terms` (`term_id`, `term`, `stem`, `common`, `phrase`, `weight`, `soundex`, `links`, `language`) VALUES
(95, 'component', 'component', 0, 0, 0.6, 'C5153', 6, '*'),
(96, 'component zoo', 'component zoo', 0, 1, 1.4333, 'C51532', 6, '*'),
(97, 'component zoo item', 'component zoo item', 0, 1, 1.6, 'C5153235', 6, '*'),
(137, '0.0', '0.0', 0, 0, 0.3, '', 4, '*'),
(138, '3', '3', 0, 0, 0.1, '', 2, '*'),
(139, 'article', 'article', 0, 0, 0.4667, 'A6324', 6, '*'),
(140, 'item', 'item', 0, 0, 0.2667, 'I350', 6, '*'),
(141, 'item rgsefdgsdfgdf', 'item rgsefdgsdfgdf', 0, 1, 1.6, 'I356213231231', 6, '*'),
(142, 'rgsefdgsdfgdf', 'rgsefdgsdfgdf', 0, 0, 0.8667, 'R213231231', 6, '*'),
(143, 'zoo', 'zoo', 0, 0, 0.2, 'Z000', 7, '*'),
(144, 'zoo item', 'zoo item', 0, 1, 1.2667, 'Z350', 7, '*'),
(145, 'zoo item rgsefdgsdfgdf', 'zoo item rgsefdgsdfgdf', 0, 1, 1.7333, 'Z356213231231', 7, '*'),
(146, 'іпкаівапівапфвкпфувкрфукарвіфарівер', 'іпкаівапівапфвкпфувкрфукарвіфарівер', 0, 0, 1, 'і000', 6, '*'),
(236, 'copy', 'copy', 0, 0, 0.2667, 'C100', 4, '*'),
(237, 'item rgsefdgsdfgdf copy', 'item rgsefdgsdfgdf copy', 0, 1, 1.7667, 'I35621323123121', 4, '*'),
(238, 'rgsefdgsdfgdf copy', 'rgsefdgsdfgdf copy', 0, 1, 1.6, 'R21323123121', 4, '*'),
(389, '2', '2', 0, 0, 0.1, '', 3, '*'),
(413, 'и', 'и', 0, 0, 0.0667, 'и000', 5, '*'),
(414, 'и фармакогеномика', 'и фармакогеномика', 0, 1, 1.5667, 'и000', 5, '*'),
(488, 'фармакогенетика', 'фармакогенетика', 0, 0, 1, 'ф000', 5, '*'),
(489, 'фармакогенетика и', 'фармакогенетика и', 0, 1, 1.5667, 'ф000', 5, '*'),
(490, 'фармакогенетика и фармакогеномика', 'фармакогенетика и фармакогеномика', 0, 1, 2, 'ф000', 5, '*'),
(491, 'фармакогеномика', 'фармакогеномика', 0, 0, 1, 'ф000', 5, '*'),
(516, '5.0', '5.0', 0, 0, 0.3, '', 2, '*'),
(517, 'новости', 'новости', 0, 0, 0.4667, 'н000', 3, '*'),
(528, '6', '6', 0, 0, 0.1, '', 1, '*'),
(529, 'copy copy', 'copy copy', 0, 1, 1.3, 'C121', 1, '*'),
(530, 'rgsefdgsdfgdf copy copy', 'rgsefdgsdfgdf copy copy', 0, 1, 1.7667, 'R2132312312121', 1, '*'),
(531, '5', '5', 0, 0, 0.1, '', 2, '*'),
(532, 'copy 2', 'copy 2', 0, 1, 1.2, 'C100', 2, '*'),
(533, 'rgsefdgsdfgdf copy 2', 'rgsefdgsdfgdf copy 2', 0, 1, 1.6667, 'R21323123121', 2, '*'),
(623, 'обзоры', 'обзоры', 0, 0, 0.4, 'о000', 2, '*'),
(629, 'оригинальные', 'оригинальные', 0, 0, 0.8, 'о000', 2, '*'),
(692, '4', '4', 0, 0, 0.1, '', 1, '*'),
(693, 'arena', 'arena', 0, 0, 0.3333, 'A650', 1, '*'),
(694, 'arena pharmaceuticals', 'arena pharmaceuticals', 0, 1, 1.7, 'A6516523242', 1, '*'),
(695, 'arena pharmaceuticals для', 'arena pharmaceuticals для', 0, 1, 1.8333, 'A6516523242', 1, '*'),
(696, 'pharmaceuticals', 'pharmaceuticals', 0, 0, 1, 'P6523242', 1, '*'),
(697, 'pharmaceuticals для', 'pharmaceuticals для', 0, 1, 1.6333, 'P6523242', 1, '*'),
(698, 'pharmaceuticals для лечения', 'pharmaceuticals для лечения', 0, 1, 1.9, 'P6523242', 1, '*'),
(699, 'артериальной', 'артериальной', 0, 0, 0.8, 'а000', 1, '*'),
(700, 'артериальной гипертензии', 'артериальной гипертензии', 0, 1, 1.8, 'а000', 1, '*'),
(701, 'артериальной гипертензии получил', 'артериальной гипертензии получил', 0, 1, 2, 'а000', 1, '*'),
(702, 'в', 'в', 0, 0, 0.0667, 'в000', 1, '*'),
(703, 'в сша', 'в сша', 0, 1, 1.1667, 'в000', 1, '*'),
(704, 'в сша статус', 'в сша статус', 0, 1, 1.4, 'в000', 1, '*'),
(705, 'гипертензии', 'гипертензии', 0, 0, 0.7333, 'г000', 1, '*'),
(706, 'гипертензии получил', 'гипертензии получил', 0, 1, 1.6333, 'г000', 1, '*'),
(707, 'гипертензии получил в', 'гипертензии получил в', 0, 1, 1.7, 'г000', 1, '*'),
(708, 'для', 'для', 0, 0, 0.2, 'д000', 1, '*'),
(709, 'для лечения', 'для лечения', 0, 1, 1.3667, 'д000', 1, '*'),
(710, 'для лечения легочной', 'для лечения легочной', 0, 1, 1.6667, 'д000', 1, '*'),
(711, 'компании', 'компании', 0, 0, 0.5333, 'к000', 1, '*'),
(712, 'компании arena', 'компании arena', 0, 1, 1.4667, 'к650', 1, '*'),
(713, 'компании arena pharmaceuticals', 'компании arena pharmaceuticals', 0, 1, 2, 'к6516523242', 1, '*'),
(714, 'легочной', 'легочной', 0, 0, 0.5333, 'л000', 1, '*'),
(715, 'легочной артериальной', 'легочной артериальной', 0, 1, 1.7, 'л000', 1, '*'),
(716, 'легочной артериальной гипертензии', 'легочной артериальной гипертензии', 0, 1, 2, 'л000', 1, '*'),
(717, 'лечения', 'лечения', 0, 0, 0.4667, 'л000', 1, '*'),
(718, 'лечения легочной', 'лечения легочной', 0, 1, 1.5333, 'л000', 1, '*'),
(719, 'лечения легочной артериальной', 'лечения легочной артериальной', 0, 1, 1.9667, 'л000', 1, '*'),
(720, 'орфанного', 'орфанного', 0, 0, 0.6, 'о000', 1, '*'),
(721, 'получил', 'получил', 0, 0, 0.4667, 'п000', 1, '*'),
(722, 'получил в', 'получил в', 0, 1, 1.3, 'п000', 1, '*'),
(723, 'получил в сша', 'получил в сша', 0, 1, 1.4333, 'п000', 1, '*'),
(724, 'препарат', 'препарат', 0, 0, 0.5333, 'п000', 1, '*'),
(725, 'препарат компании', 'препарат компании', 0, 1, 1.5667, 'п000', 1, '*'),
(726, 'препарат компании arena', 'препарат компании arena', 0, 1, 1.7667, 'п650', 1, '*'),
(727, 'статус', 'статус', 0, 0, 0.4, 'с000', 1, '*'),
(728, 'статус орфанного', 'статус орфанного', 0, 1, 1.5333, 'с000', 1, '*'),
(729, 'сша', 'сша', 0, 0, 0.2, 'с000', 1, '*'),
(730, 'сша статус', 'сша статус', 0, 1, 1.3333, 'с000', 1, '*'),
(731, 'сша статус орфанного', 'сша статус орфанного', 0, 1, 1.6667, 'с000', 1, '*'),
(848, '26-летняя', '26-летняя', 0, 0, 0.6, 'л000', 1, '*'),
(849, '26-летняя москвичка', '26-летняя москвичка', 0, 1, 1.6333, 'л000', 1, '*'),
(850, '26-летняя москвичка переписала', '26-летняя москвичка переписала', 0, 1, 2, 'л000', 1, '*'),
(851, 'open', 'open', 0, 0, 0.2667, 'O150', 1, '*'),
(852, 'us', 'us', 0, 0, 0.1333, 'U200', 1, '*'),
(853, 'us open', 'us open', 0, 1, 1.2333, 'U215', 1, '*'),
(854, 'актуальные', 'актуальные', 0, 0, 0.6667, 'а000', 1, '*'),
(855, 'актуальные обзоры', 'актуальные обзоры', 0, 1, 1.5667, 'а000', 1, '*'),
(856, 'исследования', 'исследования', 0, 0, 0.8, 'и000', 1, '*'),
(857, 'книгу', 'книгу', 0, 0, 0.3333, 'к000', 1, '*'),
(858, 'книгу рекордов', 'книгу рекордов', 0, 1, 1.4667, 'к000', 1, '*'),
(859, 'книгу рекордов us', 'книгу рекордов us', 0, 1, 1.5667, 'к200', 1, '*'),
(860, 'москвичка', 'москвичка', 0, 0, 0.6, 'м000', 1, '*'),
(861, 'москвичка переписала', 'москвичка переписала', 0, 1, 1.6667, 'м000', 1, '*'),
(862, 'москвичка переписала книгу', 'москвичка переписала книгу', 0, 1, 1.8667, 'м000', 1, '*'),
(863, 'оригинальные исследования', 'оригинальные исследования', 0, 1, 1.8333, 'о000', 1, '*'),
(864, 'переписала', 'переписала', 0, 0, 0.6667, 'п000', 1, '*'),
(865, 'переписала книгу', 'переписала книгу', 0, 1, 1.5333, 'п000', 1, '*'),
(866, 'переписала книгу рекордов', 'переписала книгу рекордов', 0, 1, 1.8333, 'п000', 1, '*'),
(867, 'рекордов', 'рекордов', 0, 0, 0.5333, 'р000', 1, '*'),
(868, 'рекордов us', 'рекордов us', 0, 1, 1.3667, 'р200', 1, '*'),
(869, 'рекордов us open', 'рекордов us open', 0, 1, 1.5333, 'р215', 1, '*'),
(870, 'фармакогенетические', 'фармакогенетические', 0, 0, 1, 'ф000', 1, '*'),
(871, 'фармакогенетические исследования', 'фармакогенетические исследования', 0, 1, 2, 'ф000', 1, '*'),
(872, 'фармакогеномные', 'фармакогеномные', 0, 0, 1, 'ф000', 1, '*'),
(873, 'фармакогеномные исследования', 'фармакогеномные исследования', 0, 1, 1.9333, 'ф000', 1, '*'),
(879, 'зарубежные', 'зарубежные', 0, 0, 0.6667, 'з000', 1, '*'),
(880, 'зарубежные лс', 'зарубежные лс', 0, 1, 1.4333, 'з000', 1, '*'),
(881, 'затронут', 'затронут', 0, 0, 0.5333, 'з000', 1, '*'),
(882, 'затронут зарубежные', 'затронут зарубежные', 0, 1, 1.6333, 'з000', 1, '*'),
(883, 'затронут зарубежные лс', 'затронут зарубежные лс', 0, 1, 1.7333, 'з000', 1, '*'),
(884, 'какие', 'какие', 0, 0, 0.3333, 'к000', 1, '*'),
(885, 'какие ограничения', 'какие ограничения', 0, 1, 1.5667, 'к000', 1, '*'),
(886, 'какие ограничения затронут', 'какие ограничения затронут', 0, 1, 1.8667, 'к000', 1, '*'),
(887, 'лс', 'лс', 0, 0, 0.1333, 'л000', 1, '*'),
(888, 'минпромторг', 'минпромторг', 0, 0, 0.7333, 'м000', 1, '*'),
(889, 'минпромторг разъяснил', 'минпромторг разъяснил', 0, 1, 1.7, 'м000', 1, '*'),
(890, 'минпромторг разъяснил какие', 'минпромторг разъяснил какие', 0, 1, 1.9, 'м000', 1, '*'),
(891, 'ограничения', 'ограничения', 0, 0, 0.7333, 'о000', 1, '*'),
(892, 'ограничения затронут', 'ограничения затронут', 0, 1, 1.6667, 'о000', 1, '*'),
(893, 'ограничения затронут зарубежные', 'ограничения затронут зарубежные', 0, 1, 2, 'о000', 1, '*'),
(894, 'разъяснил', 'разъяснил', 0, 0, 0.6, 'р000', 1, '*'),
(895, 'разъяснил какие', 'разъяснил какие', 0, 1, 1.5, 'р000', 1, '*'),
(896, 'разъяснил какие ограничения', 'разъяснил какие ограничения', 0, 1, 1.9, 'р000', 1, '*'),
(910, '2014', '2014', 0, 0, 0.4, '', 1, '*'),
(911, '2014 г', '2014 г', 0, 1, 1.2, 'г000', 1, '*'),
(912, 'journal', 'journal', 0, 0, 0.4667, 'J654', 1, '*'),
(913, 'xdebug', 'xdebug', 0, 0, 0.4, 'X312', 1, '*'),
(914, '«фармакогенетика', '«фармакогенетика', 0, 0, 1, 'ф000', 1, '*'),
(915, '«фармакогенетика и', '«фармакогенетика и', 0, 1, 1.6, 'ф000', 1, '*'),
(916, '«фармакогенетика и фармакогеномика»', '«фармакогенетика и фармакогеномика»', 0, 1, 2, 'ф000', 1, '*'),
(917, 'а', 'а', 0, 0, 0.0667, 'а000', 1, '*'),
(918, 'а также', 'а также', 0, 1, 1.2333, 'а000', 1, '*'),
(919, 'а также вспомогательные', 'а также вспомогательные', 0, 1, 1.7667, 'а000', 1, '*'),
(920, 'актуальным', 'актуальным', 0, 0, 0.6667, 'а000', 1, '*'),
(921, 'актуальным проблемам', 'актуальным проблемам', 0, 1, 1.6667, 'а000', 1, '*'),
(922, 'актуальным проблемам персонаизированной', 'актуальным проблемам персонаизированной', 0, 1, 2, 'а000', 1, '*'),
(923, 'всем', 'всем', 0, 0, 0.2667, 'в000', 1, '*'),
(924, 'всем актуальным', 'всем актуальным', 0, 1, 1.5, 'в000', 1, '*'),
(925, 'всем актуальным проблемам', 'всем актуальным проблемам', 0, 1, 1.8333, 'в000', 1, '*'),
(926, 'вспомогательные', 'вспомогательные', 0, 0, 1, 'в000', 1, '*'),
(927, 'вспомогательные материалы', 'вспомогательные материалы', 0, 1, 1.8333, 'в000', 1, '*'),
(928, 'вспомогательные материалы по', 'вспомогательные материалы по', 0, 1, 1.9333, 'в000', 1, '*'),
(929, 'г', 'г', 0, 0, 0.0667, 'г000', 1, '*'),
(930, 'журнал', 'журнал', 0, 0, 0.4, 'ж000', 1, '*'),
(931, 'журнал «фармакогенетика', 'журнал «фармакогенетика', 0, 1, 1.7667, 'ж000', 1, '*'),
(932, 'журнал «фармакогенетика и', 'журнал «фармакогенетика и', 0, 1, 1.8333, 'ж000', 1, '*'),
(933, 'и фармакогеномика»', 'и фармакогеномика»', 0, 1, 1.6, 'и000', 1, '*'),
(934, 'и фармакогеномика» издаётся', 'и фармакогеномика» издаётся', 0, 1, 1.9, 'и000', 1, '*'),
(935, 'и фармакогеномика» публикует', 'и фармакогеномика» публикует', 0, 1, 1.9333, 'и000', 1, '*'),
(936, 'и фундаментальных', 'и фундаментальных', 0, 1, 1.5667, 'и000', 1, '*'),
(937, 'и фундаментальных научных', 'и фундаментальных научных', 0, 1, 1.8333, 'и000', 1, '*'),
(938, 'издаётся', 'издаётся', 0, 0, 0.5333, 'и000', 1, '*'),
(939, 'издаётся с', 'издаётся с', 0, 1, 1.3333, 'и000', 1, '*'),
(940, 'издаётся с 2014', 'издаётся с 2014', 0, 1, 1.5, 'и000', 1, '*'),
(941, 'клинико-экспериментальных', 'клинико-экспериментальных', 0, 0, 1, 'к000', 1, '*'),
(942, 'клинико-экспериментальных и', 'клинико-экспериментальных и', 0, 1, 1.9, 'к000', 1, '*'),
(943, 'клинико-экспериментальных и фундаментальных', 'клинико-экспериментальных и фундаментальных', 0, 1, 2, 'к000', 1, '*'),
(944, 'клинических', 'клинических', 0, 0, 0.7333, 'к000', 1, '*'),
(945, 'клинических клинико-экспериментальных', 'клинических клинико-экспериментальных', 0, 1, 2, 'к000', 1, '*'),
(946, 'клинических клинико-экспериментальных и', 'клинических клинико-экспериментальных и', 0, 1, 2, 'к000', 1, '*'),
(947, 'клинических случаев', 'клинических случаев', 0, 1, 1.6333, 'к000', 1, '*'),
(948, 'клинических случаев а', 'клинических случаев а', 0, 1, 1.7, 'к000', 1, '*'),
(949, 'лекции', 'лекции', 0, 0, 0.4, 'л000', 1, '*'),
(950, 'лекции описания', 'лекции описания', 0, 1, 1.5, 'л000', 1, '*'),
(951, 'лекции описания клинических', 'лекции описания клинических', 0, 1, 1.9, 'л000', 1, '*'),
(952, 'материалы', 'материалы', 0, 0, 0.6, 'м000', 1, '*'),
(953, 'материалы по', 'материалы по', 0, 1, 1.4, 'м000', 1, '*'),
(954, 'материалы по всем', 'материалы по всем', 0, 1, 1.5667, 'м000', 1, '*'),
(955, 'медицинский', 'медицинский', 0, 0, 0.7333, 'м000', 1, '*'),
(956, 'медицинский журнал', 'медицинский журнал', 0, 1, 1.6, 'м000', 1, '*'),
(957, 'медицинский журнал «фармакогенетика', 'медицинский журнал «фармакогенетика', 0, 1, 2, 'м000', 1, '*'),
(958, 'медицины', 'медицины', 0, 0, 0.5333, 'м000', 1, '*'),
(959, 'научно-практический', 'научно-практический', 0, 0, 1, 'н000', 1, '*'),
(960, 'научно-практический медицинский', 'научно-практический медицинский', 0, 1, 2, 'н000', 1, '*'),
(961, 'научно-практический медицинский журнал', 'научно-практический медицинский журнал', 0, 1, 2, 'н000', 1, '*'),
(962, 'научных', 'научных', 0, 0, 0.4667, 'н000', 1, '*'),
(963, 'научных работах', 'научных работах', 0, 1, 1.5, 'н000', 1, '*'),
(964, 'научных работах обзоры', 'научных работах обзоры', 0, 1, 1.7333, 'н000', 1, '*'),
(965, 'о', 'о', 0, 0, 0.0667, 'о000', 1, '*'),
(966, 'о проведённых', 'о проведённых', 0, 1, 1.4333, 'о000', 1, '*'),
(967, 'о проведённых клинических', 'о проведённых клинических', 0, 1, 1.8333, 'о000', 1, '*'),
(968, 'обзоры лекции', 'обзоры лекции', 0, 1, 1.4333, 'о000', 1, '*'),
(969, 'обзоры лекции описания', 'обзоры лекции описания', 0, 1, 1.7333, 'о000', 1, '*'),
(970, 'описания', 'описания', 0, 0, 0.5333, 'о000', 1, '*'),
(971, 'описания клинических', 'описания клинических', 0, 1, 1.6667, 'о000', 1, '*'),
(972, 'описания клинических случаев', 'описания клинических случаев', 0, 1, 1.9333, 'о000', 1, '*'),
(973, 'оригинальные статьи', 'оригинальные статьи', 0, 1, 1.6333, 'о000', 1, '*'),
(974, 'оригинальные статьи о', 'оригинальные статьи о', 0, 1, 1.7, 'о000', 1, '*'),
(975, 'персонаизированной', 'персонаизированной', 0, 0, 1, 'п000', 1, '*'),
(976, 'персонаизированной медицины', 'персонаизированной медицины', 0, 1, 1.9, 'п000', 1, '*'),
(977, 'по', 'по', 0, 0, 0.1333, 'п000', 1, '*'),
(978, 'по всем', 'по всем', 0, 1, 1.2333, 'п000', 1, '*'),
(979, 'по всем актуальным', 'по всем актуальным', 0, 1, 1.6, 'п000', 1, '*'),
(980, 'проблемам', 'проблемам', 0, 0, 0.6, 'п000', 1, '*'),
(981, 'проблемам персонаизированной', 'проблемам персонаизированной', 0, 1, 1.9333, 'п000', 1, '*'),
(982, 'проблемам персонаизированной медицины', 'проблемам персонаизированной медицины', 0, 1, 2, 'п000', 1, '*'),
(983, 'проведённых', 'проведённых', 0, 0, 0.7333, 'п000', 1, '*'),
(984, 'проведённых клинических', 'проведённых клинических', 0, 1, 1.7667, 'п000', 1, '*'),
(985, 'проведённых клинических клинико-экспериментальных', 'проведённых клинических клинико-экспериментальных', 0, 1, 2, 'п000', 1, '*'),
(986, 'публикует', 'публикует', 0, 0, 0.6, 'п000', 1, '*'),
(987, 'публикует оригинальные', 'публикует оригинальные', 0, 1, 1.7333, 'п000', 1, '*'),
(988, 'публикует оригинальные статьи', 'публикует оригинальные статьи', 0, 1, 1.9667, 'п000', 1, '*'),
(989, 'работах', 'работах', 0, 0, 0.4667, 'р000', 1, '*'),
(990, 'работах обзоры', 'работах обзоры', 0, 1, 1.4667, 'р000', 1, '*'),
(991, 'работах обзоры лекции', 'работах обзоры лекции', 0, 1, 1.7, 'р000', 1, '*'),
(992, 'с', 'с', 0, 0, 0.0667, 'с000', 1, '*'),
(993, 'с 2014', 'с 2014', 0, 1, 1.2, 'с000', 1, '*'),
(994, 'с 2014 г', 'с 2014 г', 0, 1, 1.2667, 'с000', 1, '*'),
(995, 'случаев', 'случаев', 0, 0, 0.4667, 'с000', 1, '*'),
(996, 'случаев а', 'случаев а', 0, 1, 1.3, 'с000', 1, '*'),
(997, 'случаев а также', 'случаев а также', 0, 1, 1.5, 'с000', 1, '*'),
(998, 'статьи', 'статьи', 0, 0, 0.4, 'с000', 1, '*'),
(999, 'статьи о', 'статьи о', 0, 1, 1.2667, 'с000', 1, '*'),
(1000, 'статьи о проведённых', 'статьи о проведённых', 0, 1, 1.6667, 'с000', 1, '*'),
(1001, 'также', 'также', 0, 0, 0.3333, 'т000', 1, '*'),
(1002, 'также вспомогательные', 'также вспомогательные', 0, 1, 1.7, 'т000', 1, '*'),
(1003, 'также вспомогательные материалы', 'также вспомогательные материалы', 0, 1, 2, 'т000', 1, '*'),
(1004, 'фармакогеномика»', 'фармакогеномика»', 0, 0, 1, 'ф000', 1, '*'),
(1005, 'фармакогеномика» издаётся', 'фармакогеномика» издаётся', 0, 1, 1.8333, 'ф000', 1, '*'),
(1006, 'фармакогеномика» издаётся с', 'фармакогеномика» издаётся с', 0, 1, 1.9, 'ф000', 1, '*'),
(1007, 'фармакогеномика» публикует', 'фармакогеномика» публикует', 0, 1, 1.8667, 'ф000', 1, '*'),
(1008, 'фармакогеномика» публикует оригинальные', 'фармакогеномика» публикует оригинальные', 0, 1, 2, 'ф000', 1, '*'),
(1009, 'фундаментальных', 'фундаментальных', 0, 0, 1, 'ф000', 1, '*'),
(1010, 'фундаментальных научных', 'фундаментальных научных', 0, 1, 1.7667, 'ф000', 1, '*'),
(1011, 'фундаментальных научных работах', 'фундаментальных научных работах', 0, 1, 2, 'ф000', 1, '*');

-- --------------------------------------------------------

--
-- Структура таблицы `f8ad7_finder_terms_common`
--

CREATE TABLE IF NOT EXISTS `f8ad7_finder_terms_common` (
  `term` varchar(75) NOT NULL,
  `language` varchar(3) NOT NULL,
  KEY `idx_word_lang` (`term`,`language`),
  KEY `idx_lang` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `f8ad7_finder_terms_common`
--

INSERT INTO `f8ad7_finder_terms_common` (`term`, `language`) VALUES
('a', 'en'),
('about', 'en'),
('after', 'en'),
('ago', 'en'),
('all', 'en'),
('am', 'en'),
('an', 'en'),
('and', 'en'),
('ani', 'en'),
('any', 'en'),
('are', 'en'),
('aren''t', 'en'),
('as', 'en'),
('at', 'en'),
('be', 'en'),
('but', 'en'),
('by', 'en'),
('for', 'en'),
('from', 'en'),
('get', 'en'),
('go', 'en'),
('how', 'en'),
('if', 'en'),
('in', 'en'),
('into', 'en'),
('is', 'en'),
('isn''t', 'en'),
('it', 'en'),
('its', 'en'),
('me', 'en'),
('more', 'en'),
('most', 'en'),
('must', 'en'),
('my', 'en'),
('new', 'en'),
('no', 'en'),
('none', 'en'),
('not', 'en'),
('noth', 'en'),
('nothing', 'en'),
('of', 'en'),
('off', 'en'),
('often', 'en'),
('old', 'en'),
('on', 'en'),
('onc', 'en'),
('once', 'en'),
('onli', 'en'),
('only', 'en'),
('or', 'en'),
('other', 'en'),
('our', 'en'),
('ours', 'en'),
('out', 'en'),
('over', 'en'),
('page', 'en'),
('she', 'en'),
('should', 'en'),
('small', 'en'),
('so', 'en'),
('some', 'en'),
('than', 'en'),
('thank', 'en'),
('that', 'en'),
('the', 'en'),
('their', 'en'),
('theirs', 'en'),
('them', 'en'),
('then', 'en'),
('there', 'en'),
('these', 'en'),
('they', 'en'),
('this', 'en'),
('those', 'en'),
('thus', 'en'),
('time', 'en'),
('times', 'en'),
('to', 'en'),
('too', 'en'),
('true', 'en'),
('under', 'en'),
('until', 'en'),
('up', 'en'),
('upon', 'en'),
('use', 'en'),
('user', 'en'),
('users', 'en'),
('veri', 'en'),
('version', 'en'),
('very', 'en'),
('via', 'en'),
('want', 'en'),
('was', 'en'),
('way', 'en'),
('were', 'en'),
('what', 'en'),
('when', 'en'),
('where', 'en'),
('whi', 'en'),
('which', 'en'),
('who', 'en'),
('whom', 'en'),
('whose', 'en'),
('why', 'en'),
('wide', 'en'),
('will', 'en'),
('with', 'en'),
('within', 'en'),
('without', 'en'),
('would', 'en'),
('yes', 'en'),
('yet', 'en'),
('you', 'en'),
('your', 'en'),
('yours', 'en');

-- --------------------------------------------------------

--
-- Структура таблицы `f8ad7_finder_tokens`
--

CREATE TABLE IF NOT EXISTS `f8ad7_finder_tokens` (
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '1',
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `language` char(3) NOT NULL DEFAULT '',
  KEY `idx_word` (`term`),
  KEY `idx_context` (`context`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `f8ad7_finder_tokens_aggregate`
--

CREATE TABLE IF NOT EXISTS `f8ad7_finder_tokens_aggregate` (
  `term_id` int(10) unsigned NOT NULL,
  `map_suffix` char(1) NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `term_weight` float unsigned NOT NULL,
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `context_weight` float unsigned NOT NULL,
  `total_weight` float unsigned NOT NULL,
  `language` char(3) NOT NULL DEFAULT '',
  KEY `token` (`term`),
  KEY `keyword_id` (`term_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `f8ad7_finder_types`
--

CREATE TABLE IF NOT EXISTS `f8ad7_finder_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `mime` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Дамп данных таблицы `f8ad7_finder_types`
--

INSERT INTO `f8ad7_finder_types` (`id`, `title`, `mime`) VALUES
(1, 'ZOO Item', ''),
(2, 'Tag', ''),
(3, 'Category', ''),
(4, 'Contact', ''),
(5, 'Article', ''),
(6, 'News Feed', ''),
(7, 'Web Link', '');

-- --------------------------------------------------------

--
-- Структура таблицы `f8ad7_jsecurelog`
--

CREATE TABLE IF NOT EXISTS `f8ad7_jsecurelog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL,
  `ip` varchar(16) NOT NULL,
  `userid` int(11) NOT NULL DEFAULT '0',
  `code` varchar(255) NOT NULL,
  `change_variable` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `f8ad7_k2_attachments`
--

CREATE TABLE IF NOT EXISTS `f8ad7_k2_attachments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `itemID` int(11) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `titleAttribute` text NOT NULL,
  `hits` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `itemID` (`itemID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `f8ad7_k2_categories`
--

CREATE TABLE IF NOT EXISTS `f8ad7_k2_categories` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `parent` int(11) DEFAULT '0',
  `extraFieldsGroup` int(11) NOT NULL,
  `published` smallint(6) NOT NULL DEFAULT '0',
  `access` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `image` varchar(255) NOT NULL,
  `params` text NOT NULL,
  `trash` smallint(6) NOT NULL DEFAULT '0',
  `plugins` text NOT NULL,
  `language` char(7) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `category` (`published`,`access`,`trash`),
  KEY `parent` (`parent`),
  KEY `ordering` (`ordering`),
  KEY `published` (`published`),
  KEY `access` (`access`),
  KEY `trash` (`trash`),
  KEY `language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `f8ad7_k2_comments`
--

CREATE TABLE IF NOT EXISTS `f8ad7_k2_comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `itemID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `userName` varchar(255) NOT NULL,
  `commentDate` datetime NOT NULL,
  `commentText` text NOT NULL,
  `commentEmail` varchar(255) NOT NULL,
  `commentURL` varchar(255) NOT NULL,
  `published` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `itemID` (`itemID`),
  KEY `userID` (`userID`),
  KEY `published` (`published`),
  KEY `latestComments` (`published`,`commentDate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `f8ad7_k2_extra_fields`
--

CREATE TABLE IF NOT EXISTS `f8ad7_k2_extra_fields` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `type` varchar(255) NOT NULL,
  `group` int(11) NOT NULL,
  `published` tinyint(4) NOT NULL,
  `ordering` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `group` (`group`),
  KEY `published` (`published`),
  KEY `ordering` (`ordering`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `f8ad7_k2_extra_fields_groups`
--

CREATE TABLE IF NOT EXISTS `f8ad7_k2_extra_fields_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `f8ad7_k2_items`
--

CREATE TABLE IF NOT EXISTS `f8ad7_k2_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `catid` int(11) NOT NULL,
  `published` smallint(6) NOT NULL DEFAULT '0',
  `introtext` mediumtext NOT NULL,
  `fulltext` mediumtext NOT NULL,
  `video` text,
  `gallery` varchar(255) DEFAULT NULL,
  `extra_fields` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `extra_fields_search` text NOT NULL,
  `created` datetime NOT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL,
  `checked_out` int(10) unsigned NOT NULL,
  `checked_out_time` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `publish_up` datetime NOT NULL,
  `publish_down` datetime NOT NULL,
  `trash` smallint(6) NOT NULL DEFAULT '0',
  `access` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `featured` smallint(6) NOT NULL DEFAULT '0',
  `featured_ordering` int(11) NOT NULL DEFAULT '0',
  `image_caption` text NOT NULL,
  `image_credits` varchar(255) NOT NULL,
  `video_caption` text NOT NULL,
  `video_credits` varchar(255) NOT NULL,
  `hits` int(10) unsigned NOT NULL,
  `params` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `metakey` text NOT NULL,
  `plugins` text NOT NULL,
  `language` char(7) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `item` (`published`,`publish_up`,`publish_down`,`trash`,`access`),
  KEY `catid` (`catid`),
  KEY `created_by` (`created_by`),
  KEY `ordering` (`ordering`),
  KEY `featured` (`featured`),
  KEY `featured_ordering` (`featured_ordering`),
  KEY `hits` (`hits`),
  KEY `created` (`created`),
  KEY `language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `f8ad7_k2_rating`
--

CREATE TABLE IF NOT EXISTS `f8ad7_k2_rating` (
  `itemID` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(11) unsigned NOT NULL DEFAULT '0',
  `rating_count` int(11) unsigned NOT NULL DEFAULT '0',
  `lastip` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`itemID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `f8ad7_k2_tags`
--

CREATE TABLE IF NOT EXISTS `f8ad7_k2_tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `published` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `published` (`published`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `f8ad7_k2_tags_xref`
--

CREATE TABLE IF NOT EXISTS `f8ad7_k2_tags_xref` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tagID` int(11) NOT NULL,
  `itemID` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tagID` (`tagID`),
  KEY `itemID` (`itemID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `f8ad7_k2_users`
--

CREATE TABLE IF NOT EXISTS `f8ad7_k2_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userID` int(11) NOT NULL,
  `userName` varchar(255) DEFAULT NULL,
  `gender` enum('m','f') NOT NULL DEFAULT 'm',
  `description` text NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `group` int(11) NOT NULL DEFAULT '0',
  `plugins` text NOT NULL,
  `ip` varchar(15) NOT NULL,
  `hostname` varchar(255) NOT NULL,
  `notes` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `userID` (`userID`),
  KEY `group` (`group`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `f8ad7_k2_users`
--

INSERT INTO `f8ad7_k2_users` (`id`, `userID`, `userName`, `gender`, `description`, `image`, `url`, `group`, `plugins`, `ip`, `hostname`, `notes`) VALUES
(1, 445, 'Super User', 'm', '', NULL, NULL, 1, '', '127.0.0.1', 'localhost', '');

-- --------------------------------------------------------

--
-- Структура таблицы `f8ad7_k2_user_groups`
--

CREATE TABLE IF NOT EXISTS `f8ad7_k2_user_groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `permissions` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `f8ad7_languages`
--

CREATE TABLE IF NOT EXISTS `f8ad7_languages` (
  `lang_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `lang_code` char(7) NOT NULL,
  `title` varchar(50) NOT NULL,
  `title_native` varchar(50) NOT NULL,
  `sef` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `description` varchar(512) NOT NULL,
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `sitename` varchar(1024) NOT NULL DEFAULT '',
  `published` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang_id`),
  UNIQUE KEY `idx_sef` (`sef`),
  UNIQUE KEY `idx_image` (`image`),
  UNIQUE KEY `idx_langcode` (`lang_code`),
  KEY `idx_access` (`access`),
  KEY `idx_ordering` (`ordering`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Дамп данных таблицы `f8ad7_languages`
--

INSERT INTO `f8ad7_languages` (`lang_id`, `lang_code`, `title`, `title_native`, `sef`, `image`, `description`, `metakey`, `metadesc`, `sitename`, `published`, `access`, `ordering`) VALUES
(1, 'en-GB', 'English (UK)', 'English (UK)', 'en', 'en', '', '', '', '', 1, 1, 1),
(2, 'ru-RU', 'Russian', 'Russian', 'ru', 'ru', '', '', '', '', 1, 1, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `f8ad7_menu`
--

CREATE TABLE IF NOT EXISTS `f8ad7_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) NOT NULL COMMENT 'The type of menu this item belongs to. FK to #__menu_types.menutype',
  `title` varchar(255) NOT NULL COMMENT 'The display title of the menu item.',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'The SEF alias of the menu item.',
  `note` varchar(255) NOT NULL DEFAULT '',
  `path` varchar(1024) NOT NULL COMMENT 'The computed path of the menu item based on the alias field.',
  `link` varchar(1024) NOT NULL COMMENT 'The actually link the menu item refers to.',
  `type` varchar(16) NOT NULL COMMENT 'The type of link: Component, URL, Alias, Separator',
  `published` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The published state of the menu link.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '1' COMMENT 'The parent menu item in the menu tree.',
  `level` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The relative level in the tree.',
  `component_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__extensions.id',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__users.id',
  `checked_out_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'The time the menu item was checked out.',
  `browserNav` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The click behaviour of the link.',
  `access` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The access level required to view the menu item.',
  `img` varchar(255) NOT NULL COMMENT 'The image of the menu item.',
  `template_style_id` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL COMMENT 'JSON encoded data for the menu item.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `home` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Indicates if this menu item is the home or default page.',
  `language` char(7) NOT NULL DEFAULT '',
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_client_id_parent_id_alias_language` (`client_id`,`parent_id`,`alias`,`language`),
  KEY `idx_componentid` (`component_id`,`menutype`,`published`,`access`),
  KEY `idx_menutype` (`menutype`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_path` (`path`(255)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=196 ;

--
-- Дамп данных таблицы `f8ad7_menu`
--

INSERT INTO `f8ad7_menu` (`id`, `menutype`, `title`, `alias`, `note`, `path`, `link`, `type`, `published`, `parent_id`, `level`, `component_id`, `checked_out`, `checked_out_time`, `browserNav`, `access`, `img`, `template_style_id`, `params`, `lft`, `rgt`, `home`, `language`, `client_id`) VALUES
(1, '', 'Menu_Item_Root', 'root', '', '', '', '', 1, 0, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, '', 0, '', 0, 207, 0, '*', 0),
(2, 'menu', 'com_banners', 'Banners', '', 'Banners', 'index.php?option=com_banners', 'component', 0, 1, 1, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 1, 10, 0, '*', 1),
(3, 'menu', 'com_banners', 'Banners', '', 'Banners/Banners', 'index.php?option=com_banners', 'component', 0, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 2, 3, 0, '*', 1),
(4, 'menu', 'com_banners_categories', 'Categories', '', 'Banners/Categories', 'index.php?option=com_categories&extension=com_banners', 'component', 0, 2, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-cat', 0, '', 4, 5, 0, '*', 1),
(5, 'menu', 'com_banners_clients', 'Clients', '', 'Banners/Clients', 'index.php?option=com_banners&view=clients', 'component', 0, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-clients', 0, '', 6, 7, 0, '*', 1),
(6, 'menu', 'com_banners_tracks', 'Tracks', '', 'Banners/Tracks', 'index.php?option=com_banners&view=tracks', 'component', 0, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-tracks', 0, '', 8, 9, 0, '*', 1),
(7, 'menu', 'com_contact', 'Contacts', '', 'Contacts', 'index.php?option=com_contact', 'component', 0, 1, 1, 8, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 11, 16, 0, '*', 1),
(8, 'menu', 'com_contact', 'Contacts', '', 'Contacts/Contacts', 'index.php?option=com_contact', 'component', 0, 7, 2, 8, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 12, 13, 0, '*', 1),
(9, 'menu', 'com_contact_categories', 'Categories', '', 'Contacts/Categories', 'index.php?option=com_categories&extension=com_contact', 'component', 0, 7, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact-cat', 0, '', 14, 15, 0, '*', 1),
(10, 'menu', 'com_messages', 'Messaging', '', 'Messaging', 'index.php?option=com_messages', 'component', 0, 1, 1, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages', 0, '', 17, 22, 0, '*', 1),
(11, 'menu', 'com_messages_add', 'New Private Message', '', 'Messaging/New Private Message', 'index.php?option=com_messages&task=message.add', 'component', 0, 10, 2, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages-add', 0, '', 18, 19, 0, '*', 1),
(12, 'menu', 'com_messages_read', 'Read Private Message', '', 'Messaging/Read Private Message', 'index.php?option=com_messages', 'component', 0, 10, 2, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages-read', 0, '', 20, 21, 0, '*', 1),
(13, 'menu', 'com_newsfeeds', 'News Feeds', '', 'News Feeds', 'index.php?option=com_newsfeeds', 'component', 0, 1, 1, 17, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 23, 28, 0, '*', 1),
(14, 'menu', 'com_newsfeeds_feeds', 'Feeds', '', 'News Feeds/Feeds', 'index.php?option=com_newsfeeds', 'component', 0, 13, 2, 17, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 24, 25, 0, '*', 1),
(15, 'menu', 'com_newsfeeds_categories', 'Categories', '', 'News Feeds/Categories', 'index.php?option=com_categories&extension=com_newsfeeds', 'component', 0, 13, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds-cat', 0, '', 26, 27, 0, '*', 1),
(16, 'menu', 'com_redirect', 'Redirect', '', 'Redirect', 'index.php?option=com_redirect', 'component', 0, 1, 1, 24, 0, '0000-00-00 00:00:00', 0, 0, 'class:redirect', 0, '', 29, 30, 0, '*', 1),
(17, 'menu', 'com_search', 'Basic Search', '', 'Basic Search', 'index.php?option=com_search', 'component', 0, 1, 1, 19, 0, '0000-00-00 00:00:00', 0, 0, 'class:search', 0, '', 31, 32, 0, '*', 1),
(18, 'menu', 'com_weblinks', 'Weblinks', '', 'Weblinks', 'index.php?option=com_weblinks', 'component', 0, 1, 1, 21, 0, '0000-00-00 00:00:00', 0, 0, 'class:weblinks', 0, '', 33, 38, 0, '*', 1),
(19, 'menu', 'com_weblinks_links', 'Links', '', 'Weblinks/Links', 'index.php?option=com_weblinks', 'component', 0, 18, 2, 21, 0, '0000-00-00 00:00:00', 0, 0, 'class:weblinks', 0, '', 34, 35, 0, '*', 1),
(20, 'menu', 'com_weblinks_categories', 'Categories', '', 'Weblinks/Categories', 'index.php?option=com_categories&extension=com_weblinks', 'component', 0, 18, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:weblinks-cat', 0, '', 36, 37, 0, '*', 1),
(21, 'menu', 'com_finder', 'Smart Search', '', 'Smart Search', 'index.php?option=com_finder', 'component', 0, 1, 1, 27, 0, '0000-00-00 00:00:00', 0, 0, 'class:finder', 0, '', 39, 40, 0, '*', 1),
(22, 'menu', 'com_joomlaupdate', 'Joomla! Update', '', 'Joomla! Update', 'index.php?option=com_joomlaupdate', 'component', 1, 1, 1, 28, 0, '0000-00-00 00:00:00', 0, 0, 'class:joomlaupdate', 0, '', 41, 42, 0, '*', 1),
(23, 'main', 'com_tags', 'Tags', '', 'Tags', 'index.php?option=com_tags', 'component', 0, 1, 1, 29, 0, '0000-00-00 00:00:00', 0, 1, 'class:tags', 0, '', 43, 44, 0, '', 1),
(24, 'main', 'com_postinstall', 'Post-installation messages', '', 'Post-installation messages', 'index.php?option=com_postinstall', 'component', 0, 1, 1, 32, 0, '0000-00-00 00:00:00', 0, 1, 'class:postinstall', 0, '', 45, 46, 0, '*', 1),
(101, 'topmenu', 'Главная', 'home', '', 'home', 'index.php?option=com_zoo&view=item&layout=item', 'component', 1, 1, 1, 10031, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"item_id":"2","application":"3","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":1,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 47, 48, 1, '*', 0),
(102, 'main', 'COM_JSECURE_AUTHENTICATION', 'com-jsecure-authentication', '', 'com-jsecure-authentication', 'index.php?option=com_jsecure', 'component', 0, 1, 1, 10003, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_jsecure/images/jSecure_icon_16x16.png', 0, '', 49, 58, 0, '', 1),
(103, 'main', 'BASIC_CONFIGURATION', 'basic-configuration', '', 'com-jsecure-authentication/basic-configuration', 'index.php?option=com_jsecure&task=basic', 'component', 0, 102, 2, 10003, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '', 50, 51, 0, '', 1),
(104, 'main', 'ADVANCED_CONFIGURATION', 'advanced-configuration', '', 'com-jsecure-authentication/advanced-configuration', 'index.php?option=com_jsecure&task=advanced', 'component', 0, 102, 2, 10003, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '', 52, 53, 0, '', 1),
(105, 'main', 'VIEW_LOG', 'view-log', '', 'com-jsecure-authentication/view-log', 'index.php?option=com_jsecure&task=log', 'component', 0, 102, 2, 10003, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '', 54, 55, 0, '', 1),
(106, 'main', 'HELP', 'help', '', 'com-jsecure-authentication/help', 'index.php?option=com_jsecure&task=help', 'component', 0, 102, 2, 10003, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '', 56, 57, 0, '', 1),
(107, 'main', 'JCE', 'jce', '', 'jce', 'index.php?option=com_jce', 'component', 0, 1, 1, 10006, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_jce/media/img/menu/logo.png', 0, '', 59, 68, 0, '', 1),
(108, 'main', 'WF_MENU_CPANEL', 'wf-menu-cpanel', '', 'jce/wf-menu-cpanel', 'index.php?option=com_jce', 'component', 0, 107, 2, 10006, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_jce/media/img/menu/jce-cpanel.png', 0, '', 60, 61, 0, '', 1),
(109, 'main', 'WF_MENU_CONFIG', 'wf-menu-config', '', 'jce/wf-menu-config', 'index.php?option=com_jce&view=config', 'component', 0, 107, 2, 10006, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_jce/media/img/menu/jce-config.png', 0, '', 62, 63, 0, '', 1),
(110, 'main', 'WF_MENU_PROFILES', 'wf-menu-profiles', '', 'jce/wf-menu-profiles', 'index.php?option=com_jce&view=profiles', 'component', 0, 107, 2, 10006, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_jce/media/img/menu/jce-profiles.png', 0, '', 64, 65, 0, '', 1),
(111, 'main', 'WF_MENU_INSTALL', 'wf-menu-install', '', 'jce/wf-menu-install', 'index.php?option=com_jce&view=installer', 'component', 0, 107, 2, 10006, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_jce/media/img/menu/jce-install.png', 0, '', 66, 67, 0, '', 1),
(112, 'main', 'COM_XMAP_TITLE', 'com-xmap-title', '', 'com-xmap-title', 'index.php?option=com_xmap', 'component', 0, 1, 1, 10007, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_xmap/images/xmap-favicon.png', 0, '', 69, 70, 0, '', 1),
(113, 'topmenu', 'Карта сайта', 'map', '', 'map', 'index.php?option=com_xmap&view=html&id=1', 'component', -2, 1, 1, 10007, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"include_css":"0","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 111, 112, 0, '*', 0),
(114, 'main', 'COM_DJIMAGESLIDER', 'com-djimageslider', '', 'com-djimageslider', 'index.php?option=com_djimageslider', 'component', 0, 1, 1, 10016, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_djimageslider/assets/icon-16-djimageslider.png', 0, '', 71, 76, 0, '', 1),
(115, 'main', 'COM_DJIMAGESLIDER_SLIDES', 'com-djimageslider-slides', '', 'com-djimageslider/com-djimageslider-slides', 'index.php?option=com_djimageslider&view=items', 'component', 0, 114, 2, 10016, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_djimageslider/assets/icon-16-menu-slides.png', 0, '', 72, 73, 0, '', 1),
(116, 'main', 'COM_DJIMAGESLIDER_CATEGORIES', 'com-djimageslider-categories', '', 'com-djimageslider/com-djimageslider-categories', 'index.php?option=com_categories&extension=com_djimageslider', 'component', 0, 114, 2, 10016, 0, '0000-00-00 00:00:00', 0, 1, 'class:category', 0, '', 74, 75, 0, '', 1),
(133, 'topmenu', 'Метки', 'tags', '', 'tags', 'index.php?option=com_tags&view=tags', 'component', -2, 1, 1, 29, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"tag_columns":4,"all_tags_description":"","all_tags_show_description_image":"","all_tags_description_image":"","all_tags_orderby":"","all_tags_orderby_direction":"","all_tags_show_tag_image":"","all_tags_show_tag_description":"","all_tags_tag_maximum_characters":0,"all_tags_show_tag_hits":"","maximum":200,"filter_field":"","show_pagination_limit":"","show_pagination":"","show_pagination_results":"","show_feed_link":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 109, 110, 0, '*', 0),
(144, 'main', 'com_zoo', 'com-zoo', '', 'com-zoo', 'index.php?option=com_zoo', 'component', 0, 1, 1, 10031, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_zoo/assets/images/zoo_16.png', 0, '', 131, 132, 0, '', 1),
(145, 'main', 'COM_WIDGETKIT', 'com-widgetkit', '', 'com-widgetkit', 'index.php?option=com_widgetkit', 'component', 0, 1, 1, 10038, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_widgetkit/images/widgetkit_16.png', 0, '', 133, 134, 0, '', 1),
(146, 'left-nav', 'Редколлегия', '2014-09-17-09-39-38', '', '2014-09-17-09-39-38', '/', 'url', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"left_nav_item","menu_image":"","menu_text":1}', 135, 136, 0, '*', 0),
(147, 'left-nav', 'Журналы', '2014-09-17-09-40-13', '', '2014-09-17-09-40-13', '/', 'url', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"left_nav_item","menu_image":"","menu_text":1}', 137, 138, 0, '*', 0),
(148, 'left-nav', 'Авторы', '2014-09-17-09-40-52', '', '2014-09-17-09-40-52', '/', 'url', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"left_nav_item","menu_image":"","menu_text":1}', 139, 140, 0, '*', 0),
(149, 'left-nav', 'Архив новостей', '2014-09-17-09-41-42', '', '2014-09-17-09-41-42', '/', 'url', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"left_nav_item","menu_image":"","menu_text":1}', 141, 142, 0, '*', 0),
(150, 'left-nav', 'Терминология', '2014-09-17-09-42-19', '', '2014-09-17-09-42-19', '/', 'url', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"left_nav_item","menu_image":"","menu_text":1}', 143, 144, 0, '*', 0),
(151, 'left-nav', 'Партнеры', '2014-09-17-09-42-41', '', '2014-09-17-09-42-41', '/', 'url', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"left_nav_item","menu_image":"","menu_text":1}', 145, 146, 0, '*', 0),
(152, 'left-nav', 'Спонсорам', '2014-09-17-09-43-02', '', '2014-09-17-09-43-02', '/', 'url', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"left_nav_item","menu_image":"","menu_text":1}', 147, 148, 0, '*', 0),
(153, 'left-nav', 'Ссылки', '2014-09-17-09-43-27', '', '2014-09-17-09-43-27', '/', 'url', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"left_nav_item","menu_image":"","menu_text":1}', 149, 150, 0, '*', 0),
(154, 'left-nav', 'Подписка', '2014-09-17-09-43-52', '', '2014-09-17-09-43-52', '/', 'url', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"left_nav_item","menu_image":"","menu_text":1}', 151, 152, 0, '*', 0),
(155, 'left-nav', 'Контакты', '2014-09-17-09-44-11', '', '2014-09-17-09-44-11', '/', 'url', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"left_nav_item","menu_image":"","menu_text":1}', 153, 154, 0, '*', 0),
(170, 'main', 'AcyMailing', 'acymailing', '', 'acymailing', 'index.php?option=com_acymailing', 'component', 0, 1, 1, 10061, 0, '0000-00-00 00:00:00', 0, 1, '../media/com_acymailing/images/icons/icon-16-acymailing.png', 0, '', 155, 172, 0, '', 1),
(171, 'main', 'Users', 'users', '', 'acymailing/users', 'index.php?option=com_acymailing&ctrl=subscriber', 'component', 0, 170, 2, 10061, 0, '0000-00-00 00:00:00', 0, 1, '../media/com_acymailing/images/icons/icon-16-users.png', 0, '', 156, 157, 0, '', 1),
(172, 'main', 'Lists', 'lists', '', 'acymailing/lists', 'index.php?option=com_acymailing&ctrl=list', 'component', 0, 170, 2, 10061, 0, '0000-00-00 00:00:00', 0, 1, '../media/com_acymailing/images/icons/icon-16-acylist.png', 0, '', 158, 159, 0, '', 1),
(173, 'main', 'Newsletters', 'newsletters', '', 'acymailing/newsletters', 'index.php?option=com_acymailing&ctrl=newsletter', 'component', 0, 170, 2, 10061, 0, '0000-00-00 00:00:00', 0, 1, '../media/com_acymailing/images/icons/icon-16-newsletter.png', 0, '', 160, 161, 0, '', 1),
(174, 'main', 'Templates', 'templates', '', 'acymailing/templates', 'index.php?option=com_acymailing&ctrl=template', 'component', 0, 170, 2, 10061, 0, '0000-00-00 00:00:00', 0, 1, '../media/com_acymailing/images/icons/icon-16-acytemplate.png', 0, '', 162, 163, 0, '', 1),
(175, 'main', 'Queue', 'queue', '', 'acymailing/queue', 'index.php?option=com_acymailing&ctrl=queue', 'component', 0, 170, 2, 10061, 0, '0000-00-00 00:00:00', 0, 1, '../media/com_acymailing/images/icons/icon-16-process.png', 0, '', 164, 165, 0, '', 1),
(176, 'main', 'Statistics', 'statistics', '', 'acymailing/statistics', 'index.php?option=com_acymailing&ctrl=stats', 'component', 0, 170, 2, 10061, 0, '0000-00-00 00:00:00', 0, 1, '../media/com_acymailing/images/icons/icon-16-stats.png', 0, '', 166, 167, 0, '', 1),
(177, 'main', 'Configuration', 'configuration', '', 'acymailing/configuration', 'index.php?option=com_acymailing&ctrl=cpanel', 'component', 0, 170, 2, 10061, 0, '0000-00-00 00:00:00', 0, 1, '../media/com_acymailing/images/icons/icon-16-acyconfig.png', 0, '', 168, 169, 0, '', 1),
(178, 'main', 'Update_About', 'update-about', '', 'acymailing/update-about', 'index.php?option=com_acymailing&ctrl=update', 'component', 0, 170, 2, 10061, 0, '0000-00-00 00:00:00', 0, 1, '../media/com_acymailing/images/icons/icon-16-update.png', 0, '', 170, 171, 0, '', 1),
(179, 'top-nav', 'Главная', '2014-09-18-15-14-21', '', '2014-09-18-15-14-21', '/', 'url', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 173, 174, 0, '*', 0),
(180, 'top-nav', 'Новости', '2014-09-18-15-14-47', '', '2014-09-18-15-14-47', '/', 'url', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 175, 176, 0, '*', 0),
(181, 'top-nav', 'Статьи', '2014-09-18-15-15-00', '', '2014-09-18-15-15-00', '/', 'url', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 177, 178, 0, '*', 0),
(182, 'top-nav', 'Библиотека', '2014-09-18-15-15-16', '', '2014-09-18-15-15-16', '/', 'url', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 179, 180, 0, '*', 0),
(183, 'top-nav', 'Мероприятия', '2014-09-18-15-15-32', '', '2014-09-18-15-15-32', '/', 'url', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 181, 182, 0, '*', 0),
(184, 'top-nav', 'Препараты', '2014-09-18-15-16-12', '', '2014-09-18-15-16-12', '/', 'url', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 183, 184, 0, '*', 0),
(185, 'main', 'COM_K2', 'com-k2', '', 'com-k2', 'index.php?option=com_k2', 'component', 0, 1, 1, 10014, 0, '0000-00-00 00:00:00', 0, 1, '../media/k2/assets/images/system/k2_16x16.png', 0, '', 185, 206, 0, '', 1),
(186, 'main', 'K2_ITEMS', 'k2-items', '', 'com-k2/k2-items', 'index.php?option=com_k2&view=items', 'component', 0, 185, 2, 10014, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '', 186, 187, 0, '', 1),
(187, 'main', 'K2_CATEGORIES', 'k2-categories', '', 'com-k2/k2-categories', 'index.php?option=com_k2&view=categories', 'component', 0, 185, 2, 10014, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '', 188, 189, 0, '', 1),
(188, 'main', 'K2_TAGS', 'k2-tags', '', 'com-k2/k2-tags', 'index.php?option=com_k2&view=tags', 'component', 0, 185, 2, 10014, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '', 190, 191, 0, '', 1),
(189, 'main', 'K2_COMMENTS', 'k2-comments', '', 'com-k2/k2-comments', 'index.php?option=com_k2&view=comments', 'component', 0, 185, 2, 10014, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '', 192, 193, 0, '', 1),
(190, 'main', 'K2_USERS', 'k2-users', '', 'com-k2/k2-users', 'index.php?option=com_k2&view=users', 'component', 0, 185, 2, 10014, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '', 194, 195, 0, '', 1),
(191, 'main', 'K2_USER_GROUPS', 'k2-user-groups', '', 'com-k2/k2-user-groups', 'index.php?option=com_k2&view=usergroups', 'component', 0, 185, 2, 10014, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '', 196, 197, 0, '', 1),
(192, 'main', 'K2_EXTRA_FIELDS', 'k2-extra-fields', '', 'com-k2/k2-extra-fields', 'index.php?option=com_k2&view=extrafields', 'component', 0, 185, 2, 10014, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '', 198, 199, 0, '', 1),
(193, 'main', 'K2_EXTRA_FIELD_GROUPS', 'k2-extra-field-groups', '', 'com-k2/k2-extra-field-groups', 'index.php?option=com_k2&view=extrafieldsgroups', 'component', 0, 185, 2, 10014, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '', 200, 201, 0, '', 1),
(194, 'main', 'K2_MEDIA_MANAGER', 'k2-media-manager', '', 'com-k2/k2-media-manager', 'index.php?option=com_k2&view=media', 'component', 0, 185, 2, 10014, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '', 202, 203, 0, '', 1),
(195, 'main', 'K2_INFORMATION', 'k2-information', '', 'com-k2/k2-information', 'index.php?option=com_k2&view=info', 'component', 0, 185, 2, 10014, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '', 204, 205, 0, '', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `f8ad7_menu_types`
--

CREATE TABLE IF NOT EXISTS `f8ad7_menu_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) NOT NULL,
  `title` varchar(48) NOT NULL,
  `description` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_menutype` (`menutype`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Дамп данных таблицы `f8ad7_menu_types`
--

INSERT INTO `f8ad7_menu_types` (`id`, `menutype`, `title`, `description`) VALUES
(2, 'topmenu', 'Верхнее меню (первого уровня)', 'Верхнее меню (первого уровня) сайта'),
(3, 'left-nav', 'Левое меню', ''),
(4, 'top-nav', 'Верхнее меню', '');

-- --------------------------------------------------------

--
-- Структура таблицы `f8ad7_messages`
--

CREATE TABLE IF NOT EXISTS `f8ad7_messages` (
  `message_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id_from` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id_to` int(10) unsigned NOT NULL DEFAULT '0',
  `folder_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `priority` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `message` text NOT NULL,
  PRIMARY KEY (`message_id`),
  KEY `useridto_state` (`user_id_to`,`state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `f8ad7_messages_cfg`
--

CREATE TABLE IF NOT EXISTS `f8ad7_messages_cfg` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `cfg_name` varchar(100) NOT NULL DEFAULT '',
  `cfg_value` varchar(255) NOT NULL DEFAULT '',
  UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `f8ad7_modules`
--

CREATE TABLE IF NOT EXISTS `f8ad7_modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(100) NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `position` varchar(50) NOT NULL DEFAULT '',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `module` varchar(50) DEFAULT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `showtitle` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `published` (`published`,`access`),
  KEY `newsfeeds` (`module`,`published`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=130 ;

--
-- Дамп данных таблицы `f8ad7_modules`
--

INSERT INTO `f8ad7_modules` (`id`, `asset_id`, `title`, `note`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `published`, `module`, `access`, `showtitle`, `params`, `client_id`, `language`) VALUES
(2, 56, 'Вход', '', '', 1, 'login', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '', 1, '*'),
(3, 57, 'Популярные статьи', '', '', 3, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_popular', 3, 1, '{"count":"5","catid":"","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"0","automatic_title":"1"}', 1, '*'),
(4, 58, 'Недавно добавленные статьи', '', '', 4, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_latest', 3, 1, '{"count":"5","ordering":"c_dsc","catid":"","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"0","automatic_title":"1"}', 1, '*'),
(8, 59, 'Панель инструментов', '', '', 1, 'toolbar', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_toolbar', 3, 1, '', 1, '*'),
(9, 60, 'Быстрые иконки', '', '', 1, 'icon', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_quickicon', 3, 1, '', 1, '*'),
(10, 61, 'Зарегистрированные пользователи', '', '', 2, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_logged', 3, 1, '{"count":"5","name":"1","layout":"_:default","moduleclass_sfx":"","cache":"0","automatic_title":"1"}', 1, '*'),
(12, 62, 'Меню администратора', '', '', 1, 'menu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 3, 1, '{"layout":"","moduleclass_sfx":"","shownew":"1","showhelp":"1","cache":"0"}', 1, '*'),
(13, 63, 'Подменю администратора', '', '', 1, 'submenu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_submenu', 3, 1, '', 1, '*'),
(14, 64, 'Статус пользователя', '', '', 2, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_status', 3, 1, '', 1, '*'),
(15, 65, 'Заголовок', '', '', 1, 'title', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_title', 3, 1, '', 1, '*'),
(16, 50, 'Авторизация', '', '', 1, 'login', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_login', 1, 0, '{"pretext":"","posttext":"","login":"","logout":"","greeting":"1","name":"0","usesecure":"0","usetext":"0","layout":"_:default","moduleclass_sfx":"","cache":"0","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(17, 51, 'Хлебные крошки', '', '', 1, 'breadcrumb', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_breadcrumbs', 1, 0, '{"showHere":"0","showHome":"1","homeText":"\\u0413\\u043b\\u0430\\u0432\\u043d\\u0430\\u044f","showLast":"1","separator":"\\/","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(79, 68, 'Мультиязычность', '', '', 1, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_multilangstatus', 3, 1, '{"layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(86, 69, 'Версия Joomla', '', '', 1, 'footer', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_version', 3, 1, '{"format":"short","product":"1","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(87, 58, 'Слайдер', '', '', 1, 'slider', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_djimageslider', 1, 0, '{"slider_source":"1","slider_type":"2","link_image":"1","image_folder":"images\\/sampledata\\/fruitshop","link":"","category":"8","show_title":"0","show_desc":"1","show_readmore":"0","readmore_text":"","link_title":"1","link_desc":"1","limit_desc":"","image_width":"978","image_height":"386","fit_to":"0","visible_images":"1","space_between_images":"10","max_images":"20","sort_by":"1","effect":"Linear","autoplay":"0","show_buttons":"0","show_arrows":"0","show_custom_nav":"1","desc_width":"560","desc_bottom":"20","desc_horizontal":"0","left_arrow":"","right_arrow":"","play_button":"","pause_button":"","arrows_top":"200","arrows_horizontal":"20","effect_type":"easeIn","duration":"","delay":"","preload":"800","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(88, 239, 'Верхнее меню', '', '', 0, 'topmenu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_menu', 1, 0, '{"menutype":"topmenu","base":"","startLevel":"1","endLevel":"0","showAllChildren":"0","tag_id":"","class_sfx":"","window_open":"","layout":"_:default","moduleclass_sfx":"_menu","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(92, 243, 'Поиск', '', '', 0, 'seargh', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_search', 1, 0, '{"label":"","width":"20","text":"","button":"1","button_pos":"right","imagebutton":"0","button_text":"","opensearch":"1","opensearch_title":"","set_itemid":"0","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(93, 244, 'Новости', '', '', 0, 'footer_b', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_articles_latest', 1, 1, '{"catid":[""],"count":"7","show_featured":"","ordering":"c_dsc","user_id":"0","layout":"_:default","moduleclass_sfx":" red c_icon fh","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(94, 245, 'Популярные', '', '', 0, 'footer_a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_articles_popular', 1, 1, '{"catid":[""],"count":"7","show_front":"1","layout":"_:default","moduleclass_sfx":" blue b_icon fh","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(95, 246, 'Joomla RSS', '', '', 0, 'right', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_feed', 1, 1, '{"rssurl":"http:\\/\\/joomla.ru\\/news?format=feed&type=rss","rssrtl":"0","rsstitle":"0","rssdesc":"1","rssimage":"0","rssitems":"5","rssitemdesc":"0","word_count":"50","layout":"_:default","moduleclass_sfx":" red c_icon","cache":"1","cache_time":"900","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(96, 247, 'Новости RedSoft', '', '', 0, 'right', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_feed', 1, 1, '{"rssurl":"http:\\/\\/redsoft.ru\\/blog?format=feed&type=rss","rssrtl":"0","rsstitle":"0","rssdesc":"1","rssimage":"0","rssitems":"5","rssitemdesc":"0","word_count":"50","layout":"_:default","moduleclass_sfx":" green c_icon","cache":"1","cache_time":"900","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(97, 248, 'Соц закладки', '', '<div class="icon_social">\r\n<a target="_blank" href="https://twitter.com/Joomall" title="Twitter" class="tw"><span>tw</span></a> \r\n<a target="_blank" href="https://plus.google.com/101342576863150067537" title="Google+" class="gp"><span>gp</span></a> \r\n<a target="_blank" href="http://www.facebook.com/groups/joomla.ru/" title="Facebook" class="fb"><span>fb</span></a> \r\n<a target="_blank" href="http://vk.com/joomla_ru" title="Вконтакте" class="vk"><span>vk</span></a>\r\n</div>', 0, 'social', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(98, 249, 'Скачать:', '', '<ul>\r\n<li><a href="http://joomla.ru/downloads/joomla" target="_blank">Joomla 3.x.x</a></li>\r\n<li><a href="http://joomall.org/template" target="_blank">Шаблоны Joomla</a></li>\r\n<li><a href="http://joomall.org/extensions" target="_blank">Расширения Joomla</a></li>\r\n</ul>', 0, 'footer_c', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 1, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":" green a_icon fh","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(99, 250, 'Хостинг для joomla', '', '', 0, 'bottom_a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_banners', 1, 0, '{"target":"1","count":"5","cid":"2","catid":[""],"tag_search":"0","ordering":"0","header_text":"","footer_text":"","layout":"_:default","moduleclass_sfx":" nopadding","cache":"1","cache_time":"900","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(100, 251, 'Баннер редсофт', '', '', 0, 'header_a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_banners', 1, 0, '{"target":"1","count":"5","cid":"1","catid":[""],"tag_search":"0","ordering":"0","header_text":"","footer_text":"","layout":"_:default","moduleclass_sfx":" nopadding","cache":"1","cache_time":"900","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(102, 254, 'ZOO Category', '', '', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_zoocategory', 1, 1, '', 0, '*'),
(103, 255, 'ZOO Comment', '', '', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_zoocomment', 1, 1, '', 0, '*'),
(104, 256, 'ZOO Item', '', '', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_zooitem', 1, 1, '', 0, '*'),
(105, 257, 'ZOO Quick Icons', '', '', 4, 'icon', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_zooquickicon', 1, 1, '', 1, '*'),
(106, 258, 'ZOO Tag', '', '', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_zootag', 1, 1, '', 0, '*'),
(107, 259, 'Widgetkit', '', '', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_widgetkit', 1, 1, '', 0, '*'),
(108, 260, 'Widgetkit Twitter', '', '', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_widgetkit_twitter', 1, 1, '', 0, '*'),
(109, 271, 'trdgsergsergsed', '', '', 1, 'position-1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_zoocategory', 1, 1, '{"theme":"flatlist","category":"","application":"1","depth":"0","add_count":"1","menu_item":"","moduleclass_sfx":"","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(110, 277, 'Left nav', '', '', 1, 'left_nav', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '{"menutype":"left-nav","base":"","startLevel":"1","endLevel":"0","showAllChildren":"1","tag_id":"","class_sfx":"_left","window_open":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(113, 283, 'AcyMailing Module', '', '', 1, 'newsletter', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_acymailing', 1, 1, '{"effect":"mootools-slide","lists":"None","hiddenlists":"All","displaymode":"vertical","listschecked":"All","checkmode":"0","dropdown":"0","overlay":"0","link":"1","listposition":"before","customfields":"name,email","nametext":"","emailtext":"","fieldsize":"80%","displayfields":"0","introtext":"","finaltext":"","showsubscribe":"1","subscribetext":"","subscribetextreg":"","showunsubscribe":"0","unsubscribetext":"","redirectmode":"0","redirectlink":"","redirectlinkunsub":"","showterms":"0","showtermspopup":"1","termscontent":"0","mootoolsintro":"","mootoolsbutton":"","boxwidth":"250","boxheight":"200","moduleclass_sfx":"","textalign":"none","loggedin":"1","cache":"0","includejs":"header","itemid":"","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(114, 284, 'Top nav', '', '', 1, 'top_nav', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '{"menutype":"top-nav","base":"","startLevel":"1","endLevel":"0","showAllChildren":"1","tag_id":"","class_sfx":"_top","window_open":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(115, 285, 'Bot nav ', '', '', 1, 'bot_nav', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '{"menutype":"top-nav","base":"","startLevel":"1","endLevel":"0","showAllChildren":"1","tag_id":"","class_sfx":"_bot","window_open":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(116, 286, 'Google translate', '', '<div id="google_translate_element"></div>\r\n', 1, 'languages', 445, '2014-09-18 16:32:19', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(117, 288, 'K2 Comments', '', '', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_k2_comments', 1, 1, '', 0, '*'),
(118, 289, 'K2 Content', '', '', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_k2_content', 1, 1, '', 0, '*'),
(119, 290, 'K2 Tools', '', '', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_k2_tools', 1, 1, '', 0, '*'),
(120, 291, 'K2 Users', '', '', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_k2_users', 1, 1, '', 0, '*'),
(121, 292, 'K2 User', '', '', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_k2_user', 1, 1, '', 0, '*'),
(122, 293, 'K2 Quick Icons (admin)', '', '', 0, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_k2_quickicons', 1, 1, '', 1, '*'),
(123, 294, 'K2 Stats (admin)', '', '', 0, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_k2_stats', 1, 1, '', 1, '*'),
(124, 295, 'Вход', '', '', 1, 'authorization', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '{"pretext":"","posttext":"","login":"","logout":"","greeting":"0","name":"0","usesecure":"0","usetext":"0","layout":"_:default","moduleclass_sfx":"","cache":"0","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(125, 296, 'Logo', '', '<img src="/templates/che/lib/img/logo.gif">', 1, 'logo', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(126, 297, 'Поиск', '', '', 1, 'search', 445, '2014-09-22 12:38:05', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_search', 1, 1, '{"label":"","width":"20","text":"","button":"1","button_pos":"right","imagebutton":"1","button_text":"","opensearch":"1","opensearch_title":"","set_itemid":"0","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"search_mod","style":"0"}', 0, '*'),
(127, 298, 'fdhgdfgh', '', '', 1, 'bot_nav', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_zooitem', 1, 1, '{"theme":"list","layout":"default","media_position":"left","application":"3","mode":"item","type":"article-2","category":"","item_id":"2","subcategories":"0","count":"4","order":["_itemname","",""],"moduleclass_sfx":"","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(128, 299, 'Теги тест', '', '', 1, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_zootag', 1, 1, '{"theme":"cloud","mode":"all","type":"article","category":"","application":"3","subcategories":"0","count":"100","order":"acount","menu_item":"179","moduleclass_sfx":"","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(129, 300, 'Топ за неделю', '', '', 1, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_zooitem', 1, 1, '{"theme":"list","layout":"default","media_position":"left","application":"3","mode":"categories","type":"article-2","category":"3","item_id":"3","subcategories":"0","count":"5","order":["_itemhits","","","_reversed"],"moduleclass_sfx":"","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*');

-- --------------------------------------------------------

--
-- Структура таблицы `f8ad7_modules_menu`
--

CREATE TABLE IF NOT EXISTS `f8ad7_modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`moduleid`,`menuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `f8ad7_modules_menu`
--

INSERT INTO `f8ad7_modules_menu` (`moduleid`, `menuid`) VALUES
(1, 0),
(2, 0),
(3, 0),
(4, 0),
(6, 0),
(7, 0),
(8, 0),
(9, 0),
(10, 0),
(12, 0),
(13, 0),
(14, 0),
(15, 0),
(16, 0),
(17, 113),
(17, 117),
(17, 118),
(17, 119),
(17, 120),
(17, 121),
(17, 122),
(17, 123),
(17, 124),
(17, 125),
(17, 127),
(17, 128),
(17, 129),
(17, 130),
(17, 131),
(17, 132),
(17, 140),
(17, 141),
(79, 0),
(86, 0),
(87, 101),
(87, 134),
(87, 135),
(87, 136),
(87, 137),
(87, 138),
(87, 139),
(88, 0),
(89, 0),
(90, 0),
(91, 117),
(91, 118),
(91, 119),
(91, 120),
(91, 121),
(91, 122),
(91, 123),
(91, 124),
(91, 125),
(92, 0),
(93, -137),
(93, -136),
(93, -135),
(93, -134),
(94, -137),
(94, -136),
(94, -135),
(94, -134),
(95, 101),
(95, 113),
(95, 117),
(95, 118),
(95, 119),
(95, 120),
(95, 121),
(95, 122),
(95, 123),
(95, 124),
(95, 125),
(95, 126),
(95, 129),
(95, 130),
(95, 131),
(96, 101),
(96, 113),
(96, 117),
(96, 118),
(96, 119),
(96, 120),
(96, 121),
(96, 122),
(96, 123),
(96, 124),
(96, 125),
(96, 126),
(96, 129),
(96, 130),
(96, 131),
(97, 0),
(98, -137),
(98, -136),
(98, -135),
(98, -134),
(99, -137),
(99, -136),
(99, -135),
(99, -134),
(100, -137),
(100, -136),
(100, -135),
(100, -134),
(101, 101),
(101, 113),
(101, 117),
(101, 118),
(101, 119),
(101, 120),
(101, 121),
(101, 122),
(101, 123),
(101, 124),
(101, 125),
(101, 126),
(105, 0),
(109, 0),
(110, 0),
(113, 0),
(114, 0),
(115, 0),
(116, 0),
(122, 0),
(123, 0),
(124, 0),
(125, 0),
(126, 0),
(127, 0),
(128, 0),
(129, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `f8ad7_newsfeeds`
--

CREATE TABLE IF NOT EXISTS `f8ad7_newsfeeds` (
  `catid` int(11) NOT NULL DEFAULT '0',
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `link` varchar(200) NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `numarticles` int(10) unsigned NOT NULL DEFAULT '1',
  `cache_time` int(10) unsigned NOT NULL DEFAULT '3600',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rtl` tinyint(4) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `description` text NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `images` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `f8ad7_overrider`
--

CREATE TABLE IF NOT EXISTS `f8ad7_overrider` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `constant` varchar(255) NOT NULL,
  `string` text NOT NULL,
  `file` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `f8ad7_postinstall_messages`
--

CREATE TABLE IF NOT EXISTS `f8ad7_postinstall_messages` (
  `postinstall_message_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `extension_id` bigint(20) NOT NULL DEFAULT '700' COMMENT 'FK to #__extensions',
  `title_key` varchar(255) NOT NULL DEFAULT '' COMMENT 'Lang key for the title',
  `description_key` varchar(255) NOT NULL DEFAULT '' COMMENT 'Lang key for description',
  `action_key` varchar(255) NOT NULL DEFAULT '',
  `language_extension` varchar(255) NOT NULL DEFAULT 'com_postinstall' COMMENT 'Extension holding lang keys',
  `language_client_id` tinyint(3) NOT NULL DEFAULT '1',
  `type` varchar(10) NOT NULL DEFAULT 'link' COMMENT 'Message type - message, link, action',
  `action_file` varchar(255) DEFAULT '' COMMENT 'RAD URI to the PHP file containing action method',
  `action` varchar(255) DEFAULT '' COMMENT 'Action method name or URL',
  `condition_file` varchar(255) DEFAULT NULL COMMENT 'RAD URI to file holding display condition method',
  `condition_method` varchar(255) DEFAULT NULL COMMENT 'Display condition method, must return boolean',
  `version_introduced` varchar(50) NOT NULL DEFAULT '3.2.0' COMMENT 'Version when this message was introduced',
  `enabled` tinyint(3) NOT NULL DEFAULT '1',
  PRIMARY KEY (`postinstall_message_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Дамп данных таблицы `f8ad7_postinstall_messages`
--

INSERT INTO `f8ad7_postinstall_messages` (`postinstall_message_id`, `extension_id`, `title_key`, `description_key`, `action_key`, `language_extension`, `language_client_id`, `type`, `action_file`, `action`, `condition_file`, `condition_method`, `version_introduced`, `enabled`) VALUES
(1, 700, 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_TITLE', 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_BODY', 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_ACTION', 'plg_twofactorauth_totp', 1, 'action', 'site://plugins/twofactorauth/totp/postinstall/actions.php', 'twofactorauth_postinstall_action', 'site://plugins/twofactorauth/totp/postinstall/actions.php', 'twofactorauth_postinstall_condition', '3.2.0', 1),
(2, 700, 'COM_CPANEL_MSG_EACCELERATOR_TITLE', 'COM_CPANEL_MSG_EACCELERATOR_BODY', 'COM_CPANEL_MSG_EACCELERATOR_BUTTON', 'com_cpanel', 1, 'action', 'admin://components/com_admin/postinstall/eaccelerator.php', 'admin_postinstall_eaccelerator_action', 'admin://components/com_admin/postinstall/eaccelerator.php', 'admin_postinstall_eaccelerator_condition', '3.2.0', 1),
(3, 700, 'COM_CPANEL_WELCOME_BEGINNERS_TITLE', 'COM_CPANEL_WELCOME_BEGINNERS_MESSAGE', '', 'com_cpanel', 1, 'message', '', '', '', '', '3.2.0', 1),
(4, 700, 'COM_CPANEL_MSG_PHPVERSION_TITLE', 'COM_CPANEL_MSG_PHPVERSION_BODY', '', 'com_cpanel', 1, 'message', '', '', 'admin://components/com_admin/postinstall/phpversion.php', 'admin_postinstall_phpversion_condition', '3.2.2', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `f8ad7_redirect_links`
--

CREATE TABLE IF NOT EXISTS `f8ad7_redirect_links` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `old_url` varchar(255) NOT NULL,
  `new_url` varchar(255) NOT NULL,
  `referer` varchar(150) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(4) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_link_old` (`old_url`),
  KEY `idx_link_modifed` (`modified_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `f8ad7_schemas`
--

CREATE TABLE IF NOT EXISTS `f8ad7_schemas` (
  `extension_id` int(11) NOT NULL,
  `version_id` varchar(20) NOT NULL,
  PRIMARY KEY (`extension_id`,`version_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `f8ad7_schemas`
--

INSERT INTO `f8ad7_schemas` (`extension_id`, `version_id`) VALUES
(700, '3.3.0-2014-04-02');

-- --------------------------------------------------------

--
-- Структура таблицы `f8ad7_session`
--

CREATE TABLE IF NOT EXISTS `f8ad7_session` (
  `session_id` varchar(200) NOT NULL DEFAULT '',
  `client_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `guest` tinyint(4) unsigned DEFAULT '1',
  `time` varchar(14) DEFAULT '',
  `data` mediumtext,
  `userid` int(11) DEFAULT '0',
  `username` varchar(150) DEFAULT '',
  PRIMARY KEY (`session_id`),
  KEY `userid` (`userid`),
  KEY `time` (`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `f8ad7_session`
--

INSERT INTO `f8ad7_session` (`session_id`, `client_id`, `guest`, `time`, `data`, `userid`, `username`) VALUES
('fki6m37brg2t7j7be9e76u8cj4', 0, 1, '1412350267', '__default|a:8:{s:15:"session.counter";i:67;s:19:"session.timer.start";i:1412344576;s:18:"session.timer.last";i:1412350220;s:17:"session.timer.now";i:1412350266;s:22:"session.client.browser";s:133:"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/37.0.2062.94 Chrome/37.0.2062.94 Safari/537.36";s:8:"registry";O:9:"JRegistry":1:{s:7:"\\0\\0\\0data";O:8:"stdClass":0:{}}s:4:"user";O:5:"JUser":26:{s:9:"\\0\\0\\0isRoot";b:0;s:2:"id";i:0;s:4:"name";N;s:8:"username";N;s:5:"email";N;s:8:"password";N;s:14:"password_clear";s:0:"";s:5:"block";N;s:9:"sendEmail";i:0;s:12:"registerDate";N;s:13:"lastvisitDate";N;s:10:"activation";N;s:6:"params";N;s:6:"groups";a:1:{i:0;s:1:"9";}s:5:"guest";i:1;s:13:"lastResetTime";N;s:10:"resetCount";N;s:12:"requireReset";N;s:10:"\\0\\0\\0_params";O:9:"JRegistry":1:{s:7:"\\0\\0\\0data";O:8:"stdClass":0:{}}s:14:"\\0\\0\\0_authGroups";a:2:{i:0;i:1;i:1;i:9;}s:14:"\\0\\0\\0_authLevels";a:3:{i:0;i:1;i:1;i:1;i:2;i:5;}s:15:"\\0\\0\\0_authActions";N;s:12:"\\0\\0\\0_errorMsg";N;s:10:"\\0\\0\\0_errors";a:0:{}s:3:"aid";i:0;s:10:"superadmin";N;}s:13:"session.token";s:32:"74cba765a4335a9e987cd1de87652102";}', 0, ''),
('pf56ncskl1ab8oqgu155t2ki94', 1, 0, '1412349105', '__default|a:9:{s:15:"session.counter";i:119;s:19:"session.timer.start";i:1412344275;s:18:"session.timer.last";i:1412349104;s:17:"session.timer.now";i:1412349104;s:22:"session.client.browser";s:133:"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/37.0.2062.94 Chrome/37.0.2062.94 Safari/537.36";s:8:"registry";O:9:"JRegistry":1:{s:7:"\\0\\0\\0data";O:8:"stdClass":4:{s:11:"application";O:8:"stdClass":1:{s:4:"lang";s:0:"";}s:13:"com_installer";O:8:"stdClass":2:{s:7:"message";s:0:"";s:17:"extension_message";s:0:"";}s:11:"com_modules";O:8:"stdClass":3:{s:7:"modules";O:8:"stdClass":1:{s:6:"filter";O:8:"stdClass":1:{s:18:"client_id_previous";i:0;}}s:4:"edit";O:8:"stdClass":1:{s:6:"module";O:8:"stdClass":2:{s:2:"id";a:0:{}s:4:"data";N;}}s:3:"add";O:8:"stdClass":1:{s:6:"module";O:8:"stdClass":2:{s:12:"extension_id";N;s:6:"params";N;}}}s:18:"com_zooapplication";i:3;}}s:4:"user";O:5:"JUser":29:{s:9:"\\0\\0\\0isRoot";b:1;s:2:"id";s:3:"445";s:4:"name";s:10:"Super User";s:8:"username";s:4:"root";s:5:"email";s:18:"chevil92@gmail.com";s:8:"password";s:60:"$2y$10$71M5MHRnZkrN/brxhgzzIOLyNwyCG33qwnZPi66.Hv3NYiwN/638i";s:14:"password_clear";s:0:"";s:5:"block";s:1:"0";s:9:"sendEmail";s:1:"1";s:12:"registerDate";s:19:"2014-09-15 13:41:46";s:13:"lastvisitDate";s:19:"2014-10-03 06:52:16";s:10:"activation";s:1:"0";s:6:"params";s:0:"";s:6:"groups";a:1:{i:8;s:1:"8";}s:5:"guest";i:0;s:13:"lastResetTime";s:19:"0000-00-00 00:00:00";s:10:"resetCount";s:1:"0";s:12:"requireReset";N;s:10:"\\0\\0\\0_params";O:9:"JRegistry":1:{s:7:"\\0\\0\\0data";O:8:"stdClass":0:{}}s:14:"\\0\\0\\0_authGroups";a:2:{i:0;i:1;i:1;i:8;}s:14:"\\0\\0\\0_authLevels";a:5:{i:0;i:1;i:1;i:1;i:2;i:2;i:3;i:3;i:4;i:6;}s:15:"\\0\\0\\0_authActions";N;s:12:"\\0\\0\\0_errorMsg";N;s:10:"\\0\\0\\0_errors";a:0:{}s:3:"aid";i:0;s:6:"otpKey";s:0:"";s:4:"otep";s:0:"";s:10:"superadmin";b:1;s:3:"gid";i:1000;}s:13:"session.token";s:32:"86f9c2d9d56878f329d170014a8892f0";s:20:"com_media.return_url";s:99:"index.php?option=com_media&view=images&tmpl=component&fieldid=&e_name=image-select-0&asset=&author=";}__wf|a:1:{s:13:"session.token";s:32:"97999a2fcfe25701dce293295672ede8";}', 445, 'root');

-- --------------------------------------------------------

--
-- Структура таблицы `f8ad7_tags`
--

CREATE TABLE IF NOT EXISTS `f8ad7_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `metadesc` varchar(1024) NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `tag_idx` (`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_path` (`path`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Дамп данных таблицы `f8ad7_tags`
--

INSERT INTO `f8ad7_tags` (`id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `created_by_alias`, `modified_user_id`, `modified_time`, `images`, `urls`, `hits`, `language`, `version`, `publish_up`, `publish_down`) VALUES
(1, 0, 0, 23, 0, '', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '', '', '', '', 445, '2011-01-01 00:00:01', '', 0, '0000-00-00 00:00:00', '', '', 0, '*', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 1, 1, 2, 1, 'sites', 'Портфолио', 'sites', '', '', 1, 445, '2014-09-21 12:32:04', 1, '{"tag_layout":"","tag_link_class":"label label-info","image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '', '', '{"author":"","robots":""}', 445, '2014-03-16 18:24:37', '', 0, '0000-00-00 00:00:00', '', '', 0, '*', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 1, 3, 4, 1, 'vnutrennij-proekt', 'Внутренний проект', 'vnutrennij-proekt', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"tag_layout":"","tag_link_class":"label label-info","image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '', '', '{"author":"","robots":""}', 445, '2014-03-16 18:24:55', '', 0, '0000-00-00 00:00:00', '', '', 0, '*', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 1, 5, 6, 1, 'components', 'Компонент joomla!', 'components', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"tag_layout":"","tag_link_class":"label label-info","image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '', '', '{"author":"","robots":""}', 445, '2014-03-16 18:25:06', '', 0, '0000-00-00 00:00:00', '', '', 0, '*', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 1, 7, 8, 1, 'modules', 'Модули joomla!', 'modules', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"tag_layout":"","tag_link_class":"label label-info","image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '', '', '{"author":"","robots":""}', 445, '2014-03-16 18:25:16', '', 0, '0000-00-00 00:00:00', '', '', 0, '*', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 1, 9, 10, 1, 'utility-modules', 'Вспомогательные модули', 'utility-modules', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"tag_layout":"","tag_link_class":"label label-info","image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '', '', '{"author":"","robots":""}', 445, '2014-03-16 18:26:10', '', 0, '0000-00-00 00:00:00', '', '', 0, '*', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 1, 11, 12, 1, 'display-modules', 'Модули отображения информации', 'display-modules', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"tag_layout":"","tag_link_class":"label label-info","image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '', '', '{"author":"","robots":""}', 445, '2014-03-16 18:26:21', '', 0, '0000-00-00 00:00:00', '', '', 0, '*', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 1, 13, 14, 1, 'articles-modules', 'Модули отображения контента', 'articles-modules', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"tag_layout":"","tag_link_class":"label label-info","image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '', '', '{"author":"","robots":""}', 445, '2014-03-16 18:26:30', '', 0, '0000-00-00 00:00:00', '', '', 0, '*', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 1, 15, 16, 1, 'user-modules', 'Модули информации о пользователях', 'user-modules', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"tag_layout":"","tag_link_class":"label label-info","image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '', '', '{"author":"","robots":""}', 445, '2014-03-16 18:26:42', '', 0, '0000-00-00 00:00:00', '', '', 0, '*', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 1, 17, 18, 1, 'navigation-modules', 'Модули навигации', 'navigation-modules', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"tag_layout":"","tag_link_class":"label label-info","image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '', '', '{"author":"","robots":""}', 445, '2014-03-16 18:26:52', '', 0, '0000-00-00 00:00:00', '', '', 0, '*', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 1, 19, 20, 1, 'plugins', 'Плагины joomla!', 'plugins', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"tag_layout":"","tag_link_class":"label label-info","image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '', '', '{"author":"","robots":""}', 445, '2014-03-16 18:27:02', '', 0, '0000-00-00 00:00:00', '', '', 0, '*', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 1, 21, 22, 1, 'extensions', 'Расширения joomla!', 'extensions', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"tag_layout":"","tag_link_class":"label label-info","image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '', '', '{"author":"","robots":""}', 445, '2014-03-16 18:27:11', '', 0, '0000-00-00 00:00:00', '', '', 1, '*', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Структура таблицы `f8ad7_template_styles`
--

CREATE TABLE IF NOT EXISTS `f8ad7_template_styles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `template` varchar(50) NOT NULL DEFAULT '',
  `client_id` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `home` char(7) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_template` (`template`),
  KEY `idx_home` (`home`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Дамп данных таблицы `f8ad7_template_styles`
--

INSERT INTO `f8ad7_template_styles` (`id`, `template`, `client_id`, `home`, `title`, `params`) VALUES
(4, 'beez3', 0, '0', 'Beez3 - Default', '{"wrapperSmall":"53","wrapperLarge":"72","logo":"images\\/joomla_black.gif","sitetitle":"Joomla!","sitedescription":"Open Source Content Management","navposition":"left","templatecolor":"personal","html5":"0"}'),
(5, 'hathor', 1, '0', 'Hathor - Default', '{"showSiteName":"0","colourChoice":"","boldText":"0"}'),
(7, 'protostar', 0, '0', 'protostar - Default', '{"templateColor":"","logoFile":"","googleFont":"1","googleFontName":"Open+Sans","fluidContainer":"0"}'),
(8, 'isis', 1, '0', 'isis - Default', '{"templateColor":"","logoFile":""}'),
(9, 'rsmetro', 0, '0', 'RSMetro - Default', '{"logoFile":"images\\/logo.png","sitetitle":"","sitedescription":"","googleFont":"1","googleFontName":"Segoe UI"}'),
(10, 'red_isis', 1, '1', 'red_isis - Default', '{"templateColor":"#13294A","headerColor":"#184A7D","sidebarColor":"#0088CC","logoFile":"","admin_menus":"1","displayHeader":"1","statusFixed":"1","stickyToolbar":"1"}'),
(11, 'site-on', 0, '0', 'site-on - По умолчанию', '{}'),
(12, 'che', 0, '1', 'journal - По умолчанию', '{}');

-- --------------------------------------------------------

--
-- Структура таблицы `f8ad7_ucm_base`
--

CREATE TABLE IF NOT EXISTS `f8ad7_ucm_base` (
  `ucm_id` int(10) unsigned NOT NULL,
  `ucm_item_id` int(10) NOT NULL,
  `ucm_type_id` int(11) NOT NULL,
  `ucm_language_id` int(11) NOT NULL,
  PRIMARY KEY (`ucm_id`),
  KEY `idx_ucm_item_id` (`ucm_item_id`),
  KEY `idx_ucm_type_id` (`ucm_type_id`),
  KEY `idx_ucm_language_id` (`ucm_language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `f8ad7_ucm_content`
--

CREATE TABLE IF NOT EXISTS `f8ad7_ucm_content` (
  `core_content_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `core_type_alias` varchar(255) NOT NULL DEFAULT '' COMMENT 'FK to the content types table',
  `core_title` varchar(255) NOT NULL,
  `core_alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `core_body` mediumtext NOT NULL,
  `core_state` tinyint(1) NOT NULL DEFAULT '0',
  `core_checked_out_time` varchar(255) NOT NULL DEFAULT '',
  `core_checked_out_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `core_access` int(10) unsigned NOT NULL DEFAULT '0',
  `core_params` text NOT NULL,
  `core_featured` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `core_metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `core_created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `core_created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `core_created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_modified_user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Most recent user that modified',
  `core_modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_language` char(7) NOT NULL,
  `core_publish_up` datetime NOT NULL,
  `core_publish_down` datetime NOT NULL,
  `core_content_item_id` int(10) unsigned DEFAULT NULL COMMENT 'ID from the individual type table',
  `asset_id` int(10) unsigned DEFAULT NULL COMMENT 'FK to the #__assets table.',
  `core_images` text NOT NULL,
  `core_urls` text NOT NULL,
  `core_hits` int(10) unsigned NOT NULL DEFAULT '0',
  `core_version` int(10) unsigned NOT NULL DEFAULT '1',
  `core_ordering` int(11) NOT NULL DEFAULT '0',
  `core_metakey` text NOT NULL,
  `core_metadesc` text NOT NULL,
  `core_catid` int(10) unsigned NOT NULL DEFAULT '0',
  `core_xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `core_type_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`core_content_id`),
  KEY `tag_idx` (`core_state`,`core_access`),
  KEY `idx_access` (`core_access`),
  KEY `idx_alias` (`core_alias`),
  KEY `idx_language` (`core_language`),
  KEY `idx_title` (`core_title`),
  KEY `idx_modified_time` (`core_modified_time`),
  KEY `idx_created_time` (`core_created_time`),
  KEY `idx_content_type` (`core_type_alias`),
  KEY `idx_core_modified_user_id` (`core_modified_user_id`),
  KEY `idx_core_checked_out_user_id` (`core_checked_out_user_id`),
  KEY `idx_core_created_user_id` (`core_created_user_id`),
  KEY `idx_core_type_id` (`core_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Contains core content data in name spaced fields' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `f8ad7_ucm_history`
--

CREATE TABLE IF NOT EXISTS `f8ad7_ucm_history` (
  `version_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ucm_item_id` int(10) unsigned NOT NULL,
  `ucm_type_id` int(10) unsigned NOT NULL,
  `version_note` varchar(255) NOT NULL DEFAULT '' COMMENT 'Optional version name',
  `save_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `character_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Number of characters in this version.',
  `sha1_hash` varchar(50) NOT NULL DEFAULT '' COMMENT 'SHA1 hash of the version_data column.',
  `version_data` mediumtext NOT NULL COMMENT 'json-encoded string of version data',
  `keep_forever` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0=auto delete; 1=keep',
  PRIMARY KEY (`version_id`),
  KEY `idx_ucm_item_id` (`ucm_type_id`,`ucm_item_id`),
  KEY `idx_save_date` (`save_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `f8ad7_updates`
--

CREATE TABLE IF NOT EXISTS `f8ad7_updates` (
  `update_id` int(11) NOT NULL AUTO_INCREMENT,
  `update_site_id` int(11) DEFAULT '0',
  `extension_id` int(11) DEFAULT '0',
  `name` varchar(100) DEFAULT '',
  `description` text NOT NULL,
  `element` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `folder` varchar(20) DEFAULT '',
  `client_id` tinyint(3) DEFAULT '0',
  `version` varchar(32) DEFAULT '',
  `data` text NOT NULL,
  `detailsurl` text NOT NULL,
  `infourl` text NOT NULL,
  `extra_query` varchar(1000) DEFAULT '',
  PRIMARY KEY (`update_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Available Updates' AUTO_INCREMENT=60 ;

--
-- Дамп данных таблицы `f8ad7_updates`
--

INSERT INTO `f8ad7_updates` (`update_id`, `update_site_id`, `extension_id`, `name`, `description`, `element`, `type`, `folder`, `client_id`, `version`, `data`, `detailsurl`, `infourl`, `extra_query`) VALUES
(1, 3, 0, 'Afrikaans', '', 'pkg_af-ZA', 'package', '', 0, '3.2.0.2', '', 'http://update.joomla.org/language/details3/af-ZA_details.xml', '', ''),
(2, 3, 0, 'Arabic Unitag', '', 'pkg_ar-AA', 'package', '', 0, '3.3.6.1', '', 'http://update.joomla.org/language/details3/ar-AA_details.xml', '', ''),
(3, 3, 0, 'Belarusian', '', 'pkg_be-BY', 'package', '', 0, '3.2.1.1', '', 'http://update.joomla.org/language/details3/be-BY_details.xml', '', ''),
(4, 3, 0, 'Bulgarian', '', 'pkg_bg-BG', 'package', '', 0, '3.3.0.1', '', 'http://update.joomla.org/language/details3/bg-BG_details.xml', '', ''),
(5, 3, 0, 'Catalan', '', 'pkg_ca-ES', 'package', '', 0, '3.3.4.1', '', 'http://update.joomla.org/language/details3/ca-ES_details.xml', '', ''),
(6, 3, 0, 'Chinese Simplified', '', 'pkg_zh-CN', 'package', '', 0, '3.3.1.1', '', 'http://update.joomla.org/language/details3/zh-CN_details.xml', '', ''),
(7, 3, 0, 'Croatian', '', 'pkg_hr-HR', 'package', '', 0, '3.3.6.1', '', 'http://update.joomla.org/language/details3/hr-HR_details.xml', '', ''),
(8, 3, 0, 'Czech', '', 'pkg_cs-CZ', 'package', '', 0, '3.3.6.2', '', 'http://update.joomla.org/language/details3/cs-CZ_details.xml', '', ''),
(9, 3, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '3.3.5.1', '', 'http://update.joomla.org/language/details3/da-DK_details.xml', '', ''),
(10, 3, 0, 'Malay', '', 'pkg_ms-MY', 'package', '', 0, '3.3.1.1', '', 'http://update.joomla.org/language/details3/ms-MY_details.xml', '', ''),
(11, 3, 0, 'Dutch', '', 'pkg_nl-NL', 'package', '', 0, '3.3.6.1', '', 'http://update.joomla.org/language/details3/nl-NL_details.xml', '', ''),
(12, 3, 0, 'Romanian', '', 'pkg_ro-RO', 'package', '', 0, '3.3.3.1', '', 'http://update.joomla.org/language/details3/ro-RO_details.xml', '', ''),
(13, 3, 0, 'Estonian', '', 'pkg_et-EE', 'package', '', 0, '3.3.4.1', '', 'http://update.joomla.org/language/details3/et-EE_details.xml', '', ''),
(14, 3, 0, 'Flemish', '', 'pkg_nl-BE', 'package', '', 0, '3.3.6.1', '', 'http://update.joomla.org/language/details3/nl-BE_details.xml', '', ''),
(15, 3, 0, 'Italian', '', 'pkg_it-IT', 'package', '', 0, '3.3.6.1', '', 'http://update.joomla.org/language/details3/it-IT_details.xml', '', ''),
(16, 3, 0, 'Chinese Traditional', '', 'pkg_zh-TW', 'package', '', 0, '3.3.3.1', '', 'http://update.joomla.org/language/details3/zh-TW_details.xml', '', ''),
(17, 3, 0, 'Korean', '', 'pkg_ko-KR', 'package', '', 0, '3.2.3.1', '', 'http://update.joomla.org/language/details3/ko-KR_details.xml', '', ''),
(18, 3, 0, 'French', '', 'pkg_fr-FR', 'package', '', 0, '3.3.6.2', '', 'http://update.joomla.org/language/details3/fr-FR_details.xml', '', ''),
(19, 3, 0, 'Latvian', '', 'pkg_lv-LV', 'package', '', 0, '3.3.4.1', '', 'http://update.joomla.org/language/details3/lv-LV_details.xml', '', ''),
(20, 3, 0, 'Galician', '', 'pkg_gl-ES', 'package', '', 0, '3.3.1.2', '', 'http://update.joomla.org/language/details3/gl-ES_details.xml', '', ''),
(21, 3, 0, 'Macedonian', '', 'pkg_mk-MK', 'package', '', 0, '3.3.6.1', '', 'http://update.joomla.org/language/details3/mk-MK_details.xml', '', ''),
(22, 3, 0, 'German', '', 'pkg_de-DE', 'package', '', 0, '3.3.6.1', '', 'http://update.joomla.org/language/details3/de-DE_details.xml', '', ''),
(23, 3, 0, 'Norwegian Bokmal', '', 'pkg_nb-NO', 'package', '', 0, '3.2.2.1', '', 'http://update.joomla.org/language/details3/nb-NO_details.xml', '', ''),
(24, 3, 0, 'Greek', '', 'pkg_el-GR', 'package', '', 0, '3.3.3.1', '', 'http://update.joomla.org/language/details3/el-GR_details.xml', '', ''),
(25, 3, 0, 'Persian', '', 'pkg_fa-IR', 'package', '', 0, '3.3.6.1', '', 'http://update.joomla.org/language/details3/fa-IR_details.xml', '', ''),
(26, 3, 0, 'Japanese', '', 'pkg_ja-JP', 'package', '', 0, '3.3.6.1', '', 'http://update.joomla.org/language/details3/ja-JP_details.xml', '', ''),
(27, 3, 0, 'Polish', '', 'pkg_pl-PL', 'package', '', 0, '3.3.4.1', '', 'http://update.joomla.org/language/details3/pl-PL_details.xml', '', ''),
(28, 3, 0, 'Hebrew', '', 'pkg_he-IL', 'package', '', 0, '3.1.1.1', '', 'http://update.joomla.org/language/details3/he-IL_details.xml', '', ''),
(29, 3, 0, 'Portuguese', '', 'pkg_pt-PT', 'package', '', 0, '3.3.3.1', '', 'http://update.joomla.org/language/details3/pt-PT_details.xml', '', ''),
(30, 3, 0, 'EnglishAU', '', 'pkg_en-AU', 'package', '', 0, '3.3.1.1', '', 'http://update.joomla.org/language/details3/en-AU_details.xml', '', ''),
(31, 3, 0, 'Russian', '', 'pkg_ru-RU', 'package', '', 0, '3.3.3.1', '', 'http://update.joomla.org/language/details3/ru-RU_details.xml', '', ''),
(32, 3, 0, 'EnglishUS', '', 'pkg_en-US', 'package', '', 0, '3.3.1.1', '', 'http://update.joomla.org/language/details3/en-US_details.xml', '', ''),
(33, 3, 0, 'Slovak', '', 'pkg_sk-SK', 'package', '', 0, '3.3.5.1', '', 'http://update.joomla.org/language/details3/sk-SK_details.xml', '', ''),
(34, 3, 0, 'Hungarian', '', 'pkg_hu-HU', 'package', '', 0, '3.3.3.1', '', 'http://update.joomla.org/language/details3/hu-HU_details.xml', '', ''),
(35, 3, 0, 'Swedish', '', 'pkg_sv-SE', 'package', '', 0, '3.3.3.3', '', 'http://update.joomla.org/language/details3/sv-SE_details.xml', '', ''),
(36, 3, 0, 'Syriac', '', 'pkg_sy-IQ', 'package', '', 0, '3.3.4.1', '', 'http://update.joomla.org/language/details3/sy-IQ_details.xml', '', ''),
(37, 3, 0, 'Tamil', '', 'pkg_ta-IN', 'package', '', 0, '3.3.6.1', '', 'http://update.joomla.org/language/details3/ta-IN_details.xml', '', ''),
(38, 3, 0, 'Thai', '', 'pkg_th-TH', 'package', '', 0, '3.3.6.1', '', 'http://update.joomla.org/language/details3/th-TH_details.xml', '', ''),
(39, 3, 0, 'Thai', '', 'pkg_th-TH', 'package', '', 0, '3.3.6.1', '', 'http://update.joomla.org/language/details3/th-TH_details.xml', '', ''),
(40, 3, 0, 'Turkish', '', 'pkg_tr-TR', 'package', '', 0, '3.3.5.1', '', 'http://update.joomla.org/language/details3/tr-TR_details.xml', '', ''),
(41, 3, 0, 'Ukrainian', '', 'pkg_uk-UA', 'package', '', 0, '3.3.3.15', '', 'http://update.joomla.org/language/details3/uk-UA_details.xml', '', ''),
(42, 3, 0, 'Uyghur', '', 'pkg_ug-CN', 'package', '', 0, '3.3.0.1', '', 'http://update.joomla.org/language/details3/ug-CN_details.xml', '', ''),
(43, 3, 0, 'Albanian', '', 'pkg_sq-AL', 'package', '', 0, '3.1.1.1', '', 'http://update.joomla.org/language/details3/sq-AL_details.xml', '', ''),
(44, 3, 0, 'Portuguese Brazil', '', 'pkg_pt-BR', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/pt-BR_details.xml', '', ''),
(45, 3, 0, 'Serbian Latin', '', 'pkg_sr-YU', 'package', '', 0, '3.3.4.1', '', 'http://update.joomla.org/language/details3/sr-YU_details.xml', '', ''),
(46, 3, 0, 'Spanish', '', 'pkg_es-ES', 'package', '', 0, '3.3.4.1', '', 'http://update.joomla.org/language/details3/es-ES_details.xml', '', ''),
(47, 3, 0, 'Bosnian', '', 'pkg_bs-BA', 'package', '', 0, '3.3.3.1', '', 'http://update.joomla.org/language/details3/bs-BA_details.xml', '', ''),
(48, 3, 0, 'Serbian Cyrillic', '', 'pkg_sr-RS', 'package', '', 0, '3.3.6.1', '', 'http://update.joomla.org/language/details3/sr-RS_details.xml', '', ''),
(49, 3, 0, 'Vietnamese', '', 'pkg_vi-VN', 'package', '', 0, '3.2.1.1', '', 'http://update.joomla.org/language/details3/vi-VN_details.xml', '', ''),
(50, 3, 0, 'Vietnamese', '', 'pkg_vi-VN', 'package', '', 0, '3.2.1.1', '', 'http://update.joomla.org/language/details3/vi-VN_details.xml', '', ''),
(51, 3, 0, 'Bahasa Indonesia', '', 'pkg_id-ID', 'package', '', 0, '3.3.0.2', '', 'http://update.joomla.org/language/details3/id-ID_details.xml', '', ''),
(52, 3, 0, 'Finnish', '', 'pkg_fi-FI', 'package', '', 0, '3.3.4.1', '', 'http://update.joomla.org/language/details3/fi-FI_details.xml', '', ''),
(53, 3, 0, 'Swahili', '', 'pkg_sw-KE', 'package', '', 0, '3.3.5.1', '', 'http://update.joomla.org/language/details3/sw-KE_details.xml', '', ''),
(54, 3, 0, 'Montenegrin', '', 'pkg_srp-ME', 'package', '', 0, '3.3.1.1', '', 'http://update.joomla.org/language/details3/srp-ME_details.xml', '', ''),
(55, 3, 0, 'EnglishCA', '', 'pkg_en-CA', 'package', '', 0, '3.3.3.1', '', 'http://update.joomla.org/language/details3/en-CA_details.xml', '', ''),
(56, 3, 0, 'FrenchCA', '', 'pkg_fr-CA', 'package', '', 0, '3.3.3.1', '', 'http://update.joomla.org/language/details3/fr-CA_details.xml', '', ''),
(57, 3, 0, 'Welsh', '', 'pkg_cy-GB', 'package', '', 0, '3.3.0.1', '', 'http://update.joomla.org/language/details3/cy-GB_details.xml', '', ''),
(58, 3, 0, 'Sinhala', '', 'pkg_si-LK', 'package', '', 0, '3.3.1.1', '', 'http://update.joomla.org/language/details3/si-LK_details.xml', '', ''),
(59, 6, 10061, 'AcyMailing Starter', 'Latest version of AcyMailing Starter', 'com_acymailing', 'component', '', 1, '4.8.0', '', 'http://www.acyba.com/component/updateme/updatexml/component-acymailing/level-Starter/file-extension.xml', 'http://www.acyba.com', '');

-- --------------------------------------------------------

--
-- Структура таблицы `f8ad7_update_sites`
--

CREATE TABLE IF NOT EXISTS `f8ad7_update_sites` (
  `update_site_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `location` text NOT NULL,
  `enabled` int(11) DEFAULT '0',
  `last_check_timestamp` bigint(20) DEFAULT '0',
  `extra_query` varchar(1000) DEFAULT '',
  PRIMARY KEY (`update_site_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Update Sites' AUTO_INCREMENT=8 ;

--
-- Дамп данных таблицы `f8ad7_update_sites`
--

INSERT INTO `f8ad7_update_sites` (`update_site_id`, `name`, `type`, `location`, `enabled`, `last_check_timestamp`, `extra_query`) VALUES
(1, 'Joomla Core', 'collection', 'http://update.joomla.org/core/list.xml', 0, 0, ''),
(2, 'Joomla Extension Directory', 'collection', 'http://update.joomla.org/jed/list.xml', 1, 1412344283, ''),
(3, 'Accredited Joomla! Translations', 'collection', 'http://update.joomla.org/language/translationlist_3.xml', 1, 1412344283, ''),
(4, 'WebInstaller Update Site', 'extension', 'http://appscdn.joomla.org/webapps/jedapps/webinstaller.xml', 1, 1412344281, ''),
(6, 'AcyMailing', 'extension', 'http://www.acyba.com/component/updateme/updatexml/component-acymailing/level-Starter/file-extension.xml', 1, 1412344281, ''),
(7, 'K2 Updates', 'extension', 'http://getk2.org/update.xml', 1, 1412344281, '');

-- --------------------------------------------------------

--
-- Структура таблицы `f8ad7_update_sites_extensions`
--

CREATE TABLE IF NOT EXISTS `f8ad7_update_sites_extensions` (
  `update_site_id` int(11) NOT NULL DEFAULT '0',
  `extension_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`update_site_id`,`extension_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Links extensions to update sites';

--
-- Дамп данных таблицы `f8ad7_update_sites_extensions`
--

INSERT INTO `f8ad7_update_sites_extensions` (`update_site_id`, `extension_id`) VALUES
(1, 700),
(2, 700),
(3, 600),
(4, 10019),
(6, 10061),
(7, 10078);

-- --------------------------------------------------------

--
-- Структура таблицы `f8ad7_usergroups`
--

CREATE TABLE IF NOT EXISTS `f8ad7_usergroups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Adjacency List Reference Id',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `title` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_usergroup_parent_title_lookup` (`parent_id`,`title`),
  KEY `idx_usergroup_title_lookup` (`title`),
  KEY `idx_usergroup_adjacency_lookup` (`parent_id`),
  KEY `idx_usergroup_nested_set_lookup` (`lft`,`rgt`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Дамп данных таблицы `f8ad7_usergroups`
--

INSERT INTO `f8ad7_usergroups` (`id`, `parent_id`, `lft`, `rgt`, `title`) VALUES
(1, 0, 1, 18, 'Public'),
(2, 1, 8, 15, 'Registered'),
(3, 2, 9, 14, 'Author'),
(4, 3, 10, 13, 'Editor'),
(5, 4, 11, 12, 'Publisher'),
(6, 1, 4, 7, 'Manager'),
(7, 6, 5, 6, 'Administrator'),
(8, 1, 16, 17, 'Super Users'),
(9, 1, 2, 3, 'Guest');

-- --------------------------------------------------------

--
-- Структура таблицы `f8ad7_users`
--

CREATE TABLE IF NOT EXISTS `f8ad7_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `username` varchar(150) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `block` tinyint(4) NOT NULL DEFAULT '0',
  `sendEmail` tinyint(4) DEFAULT '0',
  `registerDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activation` varchar(100) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `lastResetTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Date of last password reset',
  `resetCount` int(11) NOT NULL DEFAULT '0' COMMENT 'Count of password resets since lastResetTime',
  `otpKey` varchar(1000) NOT NULL DEFAULT '' COMMENT 'Two factor authentication encrypted keys',
  `otep` varchar(1000) NOT NULL DEFAULT '' COMMENT 'One time emergency passwords',
  PRIMARY KEY (`id`),
  KEY `idx_name` (`name`),
  KEY `idx_block` (`block`),
  KEY `username` (`username`),
  KEY `email` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=446 ;

--
-- Дамп данных таблицы `f8ad7_users`
--

INSERT INTO `f8ad7_users` (`id`, `name`, `username`, `email`, `password`, `block`, `sendEmail`, `registerDate`, `lastvisitDate`, `activation`, `params`, `lastResetTime`, `resetCount`, `otpKey`, `otep`) VALUES
(445, 'Super User', 'root', 'chevil92@gmail.com', '$2y$10$71M5MHRnZkrN/brxhgzzIOLyNwyCG33qwnZPi66.Hv3NYiwN/638i', 0, 1, '2014-09-15 13:41:46', '2014-10-03 13:51:18', '0', '', '0000-00-00 00:00:00', 0, '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `f8ad7_user_keys`
--

CREATE TABLE IF NOT EXISTS `f8ad7_user_keys` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `series` varchar(255) NOT NULL,
  `invalid` tinyint(4) NOT NULL,
  `time` varchar(200) NOT NULL,
  `uastring` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `series` (`series`),
  UNIQUE KEY `series_2` (`series`),
  UNIQUE KEY `series_3` (`series`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `f8ad7_user_notes`
--

CREATE TABLE IF NOT EXISTS `f8ad7_user_notes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(100) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL,
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `review_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_category_id` (`catid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `f8ad7_user_profiles`
--

CREATE TABLE IF NOT EXISTS `f8ad7_user_profiles` (
  `user_id` int(11) NOT NULL,
  `profile_key` varchar(100) NOT NULL,
  `profile_value` varchar(255) NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `idx_user_id_profile_key` (`user_id`,`profile_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Simple user profile storage table';

-- --------------------------------------------------------

--
-- Структура таблицы `f8ad7_user_usergroup_map`
--

CREATE TABLE IF NOT EXISTS `f8ad7_user_usergroup_map` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__users.id',
  `group_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__usergroups.id',
  PRIMARY KEY (`user_id`,`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `f8ad7_user_usergroup_map`
--

INSERT INTO `f8ad7_user_usergroup_map` (`user_id`, `group_id`) VALUES
(445, 8);

-- --------------------------------------------------------

--
-- Структура таблицы `f8ad7_viewlevels`
--

CREATE TABLE IF NOT EXISTS `f8ad7_viewlevels` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `title` varchar(100) NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_assetgroup_title_lookup` (`title`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Дамп данных таблицы `f8ad7_viewlevels`
--

INSERT INTO `f8ad7_viewlevels` (`id`, `title`, `ordering`, `rules`) VALUES
(1, 'Public', 0, '[1]'),
(2, 'Registered', 1, '[6,2,8]'),
(3, 'Special', 2, '[6,3,8]'),
(5, 'Guest', 0, '[9]'),
(6, 'Super Users', 0, '[8]');

-- --------------------------------------------------------

--
-- Структура таблицы `f8ad7_weblinks`
--

CREATE TABLE IF NOT EXISTS `f8ad7_weblinks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `catid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(250) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `url` varchar(250) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `hits` int(11) NOT NULL DEFAULT '0',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `access` int(11) NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `language` char(7) NOT NULL DEFAULT '',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if link is featured.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `images` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `f8ad7_wf_profiles`
--

CREATE TABLE IF NOT EXISTS `f8ad7_wf_profiles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `users` text NOT NULL,
  `types` text NOT NULL,
  `components` text NOT NULL,
  `area` tinyint(3) NOT NULL,
  `device` varchar(255) NOT NULL,
  `rows` text NOT NULL,
  `plugins` text NOT NULL,
  `published` tinyint(3) NOT NULL,
  `ordering` int(11) NOT NULL,
  `checked_out` tinyint(3) NOT NULL,
  `checked_out_time` datetime NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Дамп данных таблицы `f8ad7_wf_profiles`
--

INSERT INTO `f8ad7_wf_profiles` (`id`, `name`, `description`, `users`, `types`, `components`, `area`, `device`, `rows`, `plugins`, `published`, `ordering`, `checked_out`, `checked_out_time`, `params`) VALUES
(1, 'Default', 'Default Profile for all users', '', '6,7,3,4,5,8', '', 0, 'desktop,tablet,phone', 'bold,italic,underline,strikethrough,justifyfull,justifycenter,justifyleft,justifyright,lists,formatselect,styleselect,link,unlink,anchor,article;fullscreen,preview,visualblocks,source,removeformat,cleanup,clipboard,table,imgmanager', 'lists,link,anchor,article,fullscreen,preview,visualblocks,source,cleanup,clipboard,table,imgmanager,browser,contextmenu,inlinepopups,media', 1, 1, 0, '0000-00-00 00:00:00', '{"editor":{"statusbar_location":"none"}}'),
(2, 'Front End', 'Sample Front-end Profile', '', '3,4,5', '', 1, 'desktop,tablet,phone', 'help,newdocument,undo,redo,spacer,bold,italic,underline,strikethrough,justifyfull,justifycenter,justifyleft,justifyright,spacer,formatselect,styleselect;clipboard,searchreplace,indent,outdent,lists,cleanup,charmap,removeformat,hr,sub,sup,textcase,nonbreaking,visualchars,visualblocks;fullscreen,preview,print,visualaid,style,xhtmlxtras,anchor,unlink,link,imgmanager,spellchecker,article', 'charmap,contextmenu,inlinepopups,help,clipboard,searchreplace,fullscreen,preview,print,style,textcase,nonbreaking,visualchars,visualblocks,xhtmlxtras,imgmanager,anchor,link,spellchecker,article,lists', 0, 2, 0, '0000-00-00 00:00:00', ''),
(3, 'Blogger', 'Simple Blogging Profile', '', '3,4,5,6,8,7', '', 0, 'desktop,tablet,phone', 'bold,italic,strikethrough,lists,blockquote,spacer,justifyleft,justifycenter,justifyright,spacer,link,unlink,imgmanager,article,spellchecker,fullscreen,kitchensink;formatselect,underline,justifyfull,forecolor,clipboard,removeformat,charmap,indent,outdent,undo,redo,help', 'link,imgmanager,article,spellchecker,fullscreen,kitchensink,clipboard,contextmenu,inlinepopups,lists', 0, 3, 0, '0000-00-00 00:00:00', '{"editor":{"toggle":"0"}}'),
(4, 'Mobile', 'Sample Mobile Profile', '', '3,4,5,6,8,7', '', 0, 'tablet,phone', 'undo,redo,spacer,bold,italic,underline,formatselect,spacer,justifyleft,justifycenter,justifyfull,justifyright,spacer,fullscreen,kitchensink;styleselect,lists,spellchecker,article,link,unlink', 'fullscreen,kitchensink,spellchecker,article,link,inlinepopups,lists', 0, 4, 0, '0000-00-00 00:00:00', '{"editor":{"toolbar_theme":"mobile","resizing":"0","resize_horizontal":"0","resizing_use_cookie":"0","toggle":"0","links":{"popups":{"default":"","jcemediabox":{"enable":"0"},"window":{"enable":"0"}}}}}');

-- --------------------------------------------------------

--
-- Структура таблицы `f8ad7_widgetkit_widget`
--

CREATE TABLE IF NOT EXISTS `f8ad7_widgetkit_widget` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) NOT NULL,
  `style` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content` longtext NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `f8ad7_xmap_items`
--

CREATE TABLE IF NOT EXISTS `f8ad7_xmap_items` (
  `uid` varchar(100) NOT NULL,
  `itemid` int(11) NOT NULL,
  `view` varchar(10) NOT NULL,
  `sitemap_id` int(11) NOT NULL,
  `properties` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`uid`,`itemid`,`view`,`sitemap_id`),
  KEY `uid` (`uid`,`itemid`),
  KEY `view` (`view`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `f8ad7_xmap_sitemap`
--

CREATE TABLE IF NOT EXISTS `f8ad7_xmap_sitemap` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `introtext` text,
  `metadesc` text,
  `metakey` text,
  `attribs` text,
  `selections` text,
  `excluded_items` text,
  `is_default` int(1) DEFAULT '0',
  `state` int(2) DEFAULT NULL,
  `access` int(11) DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `count_xml` int(11) DEFAULT NULL,
  `count_html` int(11) DEFAULT NULL,
  `views_xml` int(11) DEFAULT NULL,
  `views_html` int(11) DEFAULT NULL,
  `lastvisit_xml` int(11) DEFAULT NULL,
  `lastvisit_html` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `f8ad7_xmap_sitemap`
--

INSERT INTO `f8ad7_xmap_sitemap` (`id`, `title`, `alias`, `introtext`, `metadesc`, `metakey`, `attribs`, `selections`, `excluded_items`, `is_default`, `state`, `access`, `created`, `count_xml`, `count_html`, `views_xml`, `views_html`, `lastvisit_xml`, `lastvisit_html`) VALUES
(1, 'Карта сайта', 'map', '', NULL, NULL, '{"showintro":"1","show_menutitle":"0","classname":"","columns":"","exlinks":"img_blue.gif","compress_xml":"1","beautify_xml":"1","include_link":"1","news_publication_name":""}', '{"mainmenu":{"priority":"0.5","changefreq":"weekly","ordering":0}}', NULL, 1, 1, 1, '2014-03-09 18:34:55', 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `f8ad7_zoo_application`
--

CREATE TABLE IF NOT EXISTS `f8ad7_zoo_application` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `name` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `application_group` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Дамп данных таблицы `f8ad7_zoo_application`
--

INSERT INTO `f8ad7_zoo_application` (`id`, `asset_id`, `name`, `alias`, `application_group`, `description`, `params`) VALUES
(3, 276, 'journal', 'journal', 'blog', '', ' {\n	"group": "blog",\n	"template": "default",\n	"global.config.items_per_page": "15",\n	"global.config.item_order":  {\n		"0": "_itemname",\n		"1": "",\n		"2": ""\n	},\n	"global.config.show_feed_link": "1",\n	"global.config.feed_title": "",\n	"global.config.alternate_feed_link": "",\n	"global.template.show_title": "1",\n	"global.template.show_description": "1",\n	"global.template.show_image": "1",\n	"global.template.alignment": "left",\n	"global.template.items_cols": "1",\n	"global.template.items_order": "0",\n	"global.template.teaseritem_media_alignment": "left",\n	"global.template.item_media_alignment": "left",\n	"global.comments.enable_comments": "0",\n	"global.comments.require_name_and_mail": "1",\n	"global.comments.registered_users_only": "0",\n	"global.comments.approved": "0",\n	"global.comments.time_between_user_posts": "120",\n	"global.comments.email_notification": "",\n	"global.comments.email_reply_notification": "0",\n	"global.comments.avatar": "1",\n	"global.comments.order": "ASC",\n	"global.comments.max_depth": "5",\n	"global.comments.facebook_enable": "0",\n	"global.comments.facebook_app_id": "",\n	"global.comments.facebook_app_secret": "",\n	"global.comments.twitter_enable": "0",\n	"global.comments.twitter_consumer_key": "",\n	"global.comments.twitter_consumer_secret": "",\n	"global.comments.akismet_enable": "0",\n	"global.comments.akismet_api_key": "",\n	"global.comments.mollom_enable": "0",\n	"global.comments.mollom_public_key": "",\n	"global.comments.mollom_private_key": "",\n	"global.comments.captcha_guest_only": "1",\n	"global.comments.blacklist": ""\n}');

-- --------------------------------------------------------

--
-- Структура таблицы `f8ad7_zoo_category`
--

CREATE TABLE IF NOT EXISTS `f8ad7_zoo_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `application_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `parent` int(11) NOT NULL,
  `ordering` int(11) NOT NULL,
  `published` tinyint(1) NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ALIAS_INDEX` (`alias`),
  KEY `PUBLISHED_INDEX` (`published`),
  KEY `APPLICATIONID_ID_INDEX` (`application_id`,`published`,`id`),
  KEY `APPLICATIONID_ID_INDEX2` (`application_id`,`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Дамп данных таблицы `f8ad7_zoo_category`
--

INSERT INTO `f8ad7_zoo_category` (`id`, `application_id`, `name`, `alias`, `description`, `parent`, `ordering`, `published`, `params`) VALUES
(3, 3, 'Фармакогенетика и фармакогеномика', 'xdebug', '', 0, 1, 1, ' {\n	"content.subtitle": "",\n	"content.image": "",\n	"content.image_width": "",\n	"content.image_height": "",\n	"metadata.title": "",\n	"metadata.description": "",\n	"metadata.keywords": "",\n	"metadata.robots": "",\n	"metadata.author": ""\n}');

-- --------------------------------------------------------

--
-- Структура таблицы `f8ad7_zoo_category_item`
--

CREATE TABLE IF NOT EXISTS `f8ad7_zoo_category_item` (
  `category_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`item_id`),
  KEY `ITEMID_INDEX` (`item_id`),
  KEY `CATEGORYID_INDEX` (`category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `f8ad7_zoo_category_item`
--

INSERT INTO `f8ad7_zoo_category_item` (`category_id`, `item_id`) VALUES
(3, 3),
(3, 4),
(3, 5),
(3, 6),
(3, 7);

-- --------------------------------------------------------

--
-- Структура таблицы `f8ad7_zoo_comment`
--

CREATE TABLE IF NOT EXISTS `f8ad7_zoo_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `user_type` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `ip` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `content` text NOT NULL,
  `state` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `STATE_INDEX` (`state`),
  KEY `CREATED_INDEX` (`created`),
  KEY `ITEMID_INDEX` (`item_id`),
  KEY `AUTHOR_INDEX` (`author`),
  KEY `ITEMID_STATE_INDEX` (`item_id`,`state`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `f8ad7_zoo_item`
--

CREATE TABLE IF NOT EXISTS `f8ad7_zoo_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `application_id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `modified_by` int(11) NOT NULL,
  `publish_up` datetime NOT NULL,
  `publish_down` datetime NOT NULL,
  `priority` int(11) NOT NULL,
  `hits` int(11) NOT NULL,
  `state` tinyint(3) NOT NULL,
  `access` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_by_alias` varchar(255) NOT NULL,
  `searchable` int(11) NOT NULL,
  `elements` longtext NOT NULL,
  `params` longtext NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ALIAS_INDEX` (`alias`),
  KEY `PUBLISH_INDEX` (`publish_up`,`publish_down`),
  KEY `STATE_INDEX` (`state`),
  KEY `ACCESS_INDEX` (`access`),
  KEY `CREATED_BY_INDEX` (`created_by`),
  KEY `NAME_INDEX` (`name`),
  KEY `APPLICATIONID_INDEX` (`application_id`),
  KEY `TYPE_INDEX` (`type`),
  KEY `MULTI_INDEX` (`application_id`,`access`,`state`,`publish_up`,`publish_down`),
  KEY `MULTI_INDEX2` (`id`,`access`,`state`,`publish_up`,`publish_down`),
  KEY `ID_APPLICATION_INDEX` (`id`,`application_id`),
  FULLTEXT KEY `SEARCH_FULLTEXT` (`name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Дамп данных таблицы `f8ad7_zoo_item`
--

INSERT INTO `f8ad7_zoo_item` (`id`, `application_id`, `type`, `name`, `alias`, `created`, `modified`, `modified_by`, `publish_up`, `publish_down`, `priority`, `hits`, `state`, `access`, `created_by`, `created_by_alias`, `searchable`, `elements`, `params`) VALUES
(2, 3, 'article', 'Фармакогенетика и фармакогеномика', 'xdebug', '2014-09-16 11:29:18', '2014-10-03 14:41:29', 445, '2014-09-16 11:29:18', '0000-00-00 00:00:00', 0, 548, 1, 1, 445, '', 1, ' {\n	"b96603c6-d06a-4d72-ac39-1e5b374d79ac":  {\n		"0":  {\n			"value": "<p>\\u041d\\u0430\\u0443\\u0447\\u043d\\u043e-\\u043f\\u0440\\u0430\\u043a\\u0442\\u0438\\u0447\\u0435\\u0441\\u043a\\u0438\\u0439 \\u043c\\u0435\\u0434\\u0438\\u0446\\u0438\\u043d\\u0441\\u043a\\u0438\\u0439 \\u0436\\u0443\\u0440\\u043d\\u0430\\u043b \\u00ab\\u0424\\u0430\\u0440\\u043c\\u0430\\u043a\\u043e\\u0433\\u0435\\u043d\\u0435\\u0442\\u0438\\u043a\\u0430 \\u0438 \\u0444\\u0430\\u0440\\u043c\\u0430\\u043a\\u043e\\u0433\\u0435\\u043d\\u043e\\u043c\\u0438\\u043a\\u0430\\u00bb \\u0438\\u0437\\u0434\\u0430\\u0451\\u0442\\u0441\\u044f \\u0441 2014 \\u0433.<\\/p>"\n		}\n	},\n	"c4e7ae4e-ff94-4e71-8d5d-b1fec7599585":  {\n		"0":  {\n			"value": "<p>\\u00ab\\u0424\\u0430\\u0440\\u043c\\u0430\\u043a\\u043e\\u0433\\u0435\\u043d\\u0435\\u0442\\u0438\\u043a\\u0430 \\u0438 \\u0444\\u0430\\u0440\\u043c\\u0430\\u043a\\u043e\\u0433\\u0435\\u043d\\u043e\\u043c\\u0438\\u043a\\u0430\\u00bb \\u043f\\u0443\\u0431\\u043b\\u0438\\u043a\\u0443\\u0435\\u0442 \\u043e\\u0440\\u0438\\u0433\\u0438\\u043d\\u0430\\u043b\\u044c\\u043d\\u044b\\u0435 \\u0441\\u0442\\u0430\\u0442\\u044c\\u0438 \\u043e \\u043f\\u0440\\u043e\\u0432\\u0435\\u0434\\u0451\\u043d\\u043d\\u044b\\u0445 \\u043a\\u043b\\u0438\\u043d\\u0438\\u0447\\u0435\\u0441\\u043a\\u0438\\u0445, \\u043a\\u043b\\u0438\\u043d\\u0438\\u043a\\u043e-\\u044d\\u043a\\u0441\\u043f\\u0435\\u0440\\u0438\\u043c\\u0435\\u043d\\u0442\\u0430\\u043b\\u044c\\u043d\\u044b\\u0445 \\u0438 \\u0444\\u0443\\u043d\\u0434\\u0430\\u043c\\u0435\\u043d\\u0442\\u0430\\u043b\\u044c\\u043d\\u044b\\u0445 \\u043d\\u0430\\u0443\\u0447\\u043d\\u044b\\u0445 \\u0440\\u0430\\u0431\\u043e\\u0442\\u0430\\u0445, \\u043e\\u0431\\u0437\\u043e\\u0440\\u044b, \\u043b\\u0435\\u043a\\u0446\\u0438\\u0438, \\u043e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u044f \\u043a\\u043b\\u0438\\u043d\\u0438\\u0447\\u0435\\u0441\\u043a\\u0438\\u0445 \\u0441\\u043b\\u0443\\u0447\\u0430\\u0435\\u0432, \\u0430 \\u0442\\u0430\\u043a\\u0436\\u0435 \\u0432\\u0441\\u043f\\u043e\\u043c\\u043e\\u0433\\u0430\\u0442\\u0435\\u043b\\u044c\\u043d\\u044b\\u0435 \\u043c\\u0430\\u0442\\u0435\\u0440\\u0438\\u0430\\u043b\\u044b \\u043f\\u043e \\u0432\\u0441\\u0435\\u043c \\u0430\\u043a\\u0442\\u0443\\u0430\\u043b\\u044c\\u043d\\u044b\\u043c \\u043f\\u0440\\u043e\\u0431\\u043b\\u0435\\u043c\\u0430\\u043c \\u043f\\u0435\\u0440\\u0441\\u043e\\u043d\\u0430\\u0438\\u0437\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d\\u043d\\u043e\\u0439 \\u043c\\u0435\\u0434\\u0438\\u0446\\u0438\\u043d\\u044b<\\/p>"\n		}\n	},\n	"bf587f28-0a72-4be7-88a1-91a14e77039e":  {\n		"file": "images\\/logo_journal.jpg",\n		"title": "",\n		"link": "",\n		"target": "0",\n		"rel": "",\n		"lightbox_image": "",\n		"spotlight_effect": "",\n		"caption": "",\n		"width": 519,\n		"height": 405\n	},\n	"1f398852-24ca-42e0-abf1-f9a3d91eba41":  {\n		"value": "128"\n	},\n	"ef09011d-e155-4af0-92c3-1c962e966248":  {\n		"value": "129"\n	},\n	"28f03c2c-57b1-4901-9554-fd9e8f52b08e":  {\n		"item":  {\n			"0": "4",\n			"1": "3",\n			"2": "5"\n		}\n	},\n	"d0cbb42c-38fc-4beb-9480-2d4e82604557":  {\n		"value": ""\n	},\n	"856b73ba-fe61-40d1-8b0a-ea0fb6e2018d":  {\n\n	}\n}', ' {\n	"metadata.title": "",\n	"metadata.description": "",\n	"metadata.keywords": "",\n	"metadata.robots": "",\n	"metadata.author": "",\n	"config.enable_comments": "1",\n	"config.primary_category": ""\n}'),
(3, 3, 'article-2', '26-летняя москвичка  переписала  книгу рекордов US Open', 'rgsefdgsdfgdf', '2014-09-16 11:30:03', '2014-10-03 14:38:45', 445, '2014-09-16 11:30:03', '0000-00-00 00:00:00', 0, 24, 1, 1, 445, '', 1, ' {\n	"28f0c0d8-e8d9-4fa4-a3d1-b8979ff4263d":  {\n		"file": "images\\/art1.jpg",\n		"title": "",\n		"link": "",\n		"target": "0",\n		"rel": "",\n		"lightbox_image": "",\n		"spotlight_effect": "",\n		"caption": "",\n		"width": 233,\n		"height": 116\n	},\n	"89335a61-ea45-4fad-b16f-488154d4f8e2":  {\n		"0":  {\n			"value": "<p>\\u0456\\u043f\\u043a\\u0430\\u0456\\u0432\\u0430\\u043f\\u0456\\u0432\\u0430\\u043f\\u0444\\u0432\\u043a\\u043f\\u0444\\u0443\\u0432\\u043a\\u0440\\u0444\\u0443\\u043a\\u0430\\u0440\\u0432\\u0456\\u0444\\u0430\\u0440\\u0456\\u0432\\u0435\\u0440<\\/p>"\n		}\n	},\n	"b9bab2fd-a9cc-47ac-8473-71d232f2bfb6":  {\n		"votes": "1",\n		"value": "5.0000"\n	}\n}', ' {\n	"metadata.title": "",\n	"metadata.description": "",\n	"metadata.keywords": "",\n	"metadata.robots": "",\n	"metadata.author": "",\n	"config.enable_comments": "1",\n	"config.primary_category": "3"\n}'),
(4, 3, 'article-2', 'Препарат компании Arena  Pharmaceuticals для лечения  легочной артериальной  гипертензии получил в США статус орфанного', 'rgsefdgsdfgdf-copy', '2014-09-27 16:03:16', '2014-10-03 08:59:55', 445, '2014-09-16 11:30:03', '0000-00-00 00:00:00', 0, 2, 1, 1, 445, '', 1, ' {\n	"28f0c0d8-e8d9-4fa4-a3d1-b8979ff4263d":  {\n		"file": "images\\/art2.jpg",\n		"title": "",\n		"link": "",\n		"target": "0",\n		"rel": "",\n		"lightbox_image": "",\n		"spotlight_effect": "",\n		"caption": "",\n		"width": 239,\n		"height": 135\n	},\n	"89335a61-ea45-4fad-b16f-488154d4f8e2":  {\n		"0":  {\n			"value": "<p>\\u0456\\u043f\\u043a\\u0430\\u0456\\u0432\\u0430\\u043f\\u0456\\u0432\\u0430\\u043f\\u0444\\u0432\\u043a\\u043f\\u0444\\u0443\\u0432\\u043a\\u0440\\u0444\\u0443\\u043a\\u0430\\u0440\\u0432\\u0456\\u0444\\u0430\\u0440\\u0456\\u0432\\u0435\\u0440<\\/p>"\n		}\n	},\n	"b9bab2fd-a9cc-47ac-8473-71d232f2bfb6":  {\n		"votes": 0,\n		"value": 0\n	}\n}', ' {\n	"metadata.title": "",\n	"metadata.description": "",\n	"metadata.keywords": "",\n	"metadata.robots": "",\n	"metadata.author": "",\n	"config.enable_comments": "1",\n	"config.primary_category": "3"\n}'),
(5, 3, 'article-2', 'Минпромторг разъяснил,  какие ограничения  затронут зарубежные ЛС', 'rgsefdgsdfgdf-copy-2', '2014-10-03 08:50:17', '2014-10-03 14:40:53', 445, '2014-09-16 11:30:03', '0000-00-00 00:00:00', 0, 3, 1, 1, 445, '', 1, ' {\n	"28f0c0d8-e8d9-4fa4-a3d1-b8979ff4263d":  {\n		"file": "images\\/art3.jpg",\n		"title": "",\n		"link": "",\n		"target": "0",\n		"rel": "",\n		"lightbox_image": "",\n		"spotlight_effect": "",\n		"caption": "",\n		"width": 276,\n		"height": 128\n	},\n	"89335a61-ea45-4fad-b16f-488154d4f8e2":  {\n		"0":  {\n			"value": "<p>\\u0456\\u043f\\u043a\\u0430\\u0456\\u0432\\u0430\\u043f\\u0456\\u0432\\u0430\\u043f\\u0444\\u0432\\u043a\\u043f\\u0444\\u0443\\u0432\\u043a\\u0440\\u0444\\u0443\\u043a\\u0430\\u0440\\u0432\\u0456\\u0444\\u0430\\u0440\\u0456\\u0432\\u0435\\u0440<\\/p>"\n		}\n	},\n	"b9bab2fd-a9cc-47ac-8473-71d232f2bfb6":  {\n		"votes": 0,\n		"value": 0\n	}\n}', ' {\n	"metadata.title": "",\n	"metadata.description": "",\n	"metadata.keywords": "",\n	"metadata.robots": "",\n	"metadata.author": "",\n	"config.enable_comments": "1",\n	"config.primary_category": "3"\n}'),
(6, 3, 'article-2', 'rgsefdgsdfgdf (Copy) (Copy)', 'rgsefdgsdfgdf-copy-copy', '2014-10-03 08:50:23', '2014-10-03 08:50:23', 445, '2014-09-16 11:30:03', '0000-00-00 00:00:00', 0, 0, 1, 1, 445, '', 1, ' {\n	"28f0c0d8-e8d9-4fa4-a3d1-b8979ff4263d":  {\n		"file": "images\\/logo.png",\n		"title": "",\n		"link": "",\n		"target": "0",\n		"rel": "",\n		"lightbox_image": "",\n		"spotlight_effect": "",\n		"caption": "",\n		"width": 227,\n		"height": 46\n	},\n	"89335a61-ea45-4fad-b16f-488154d4f8e2":  {\n		"0":  {\n			"value": "<p>\\u0456\\u043f\\u043a\\u0430\\u0456\\u0432\\u0430\\u043f\\u0456\\u0432\\u0430\\u043f\\u0444\\u0432\\u043a\\u043f\\u0444\\u0443\\u0432\\u043a\\u0440\\u0444\\u0443\\u043a\\u0430\\u0440\\u0432\\u0456\\u0444\\u0430\\u0440\\u0456\\u0432\\u0435\\u0440<\\/p>"\n		}\n	},\n	"b9bab2fd-a9cc-47ac-8473-71d232f2bfb6":  {\n		"votes": 0,\n		"value": 0\n	}\n}', ' {\n	"metadata.title": "",\n	"metadata.description": "",\n	"metadata.keywords": "",\n	"metadata.robots": "",\n	"metadata.author": "",\n	"config.enable_comments": "1",\n	"config.primary_category": "3"\n}'),
(7, 3, 'article-2', 'rgsefdgsdfgdf (Copy)', 'rgsefdgsdfgdf-copy-3', '2014-10-03 08:50:23', '2014-10-03 08:50:23', 445, '2014-09-16 11:30:03', '0000-00-00 00:00:00', 0, 0, 1, 1, 445, '', 1, ' {\n	"28f0c0d8-e8d9-4fa4-a3d1-b8979ff4263d":  {\n		"file": "images\\/logo.png",\n		"title": "",\n		"link": "",\n		"target": "0",\n		"rel": "",\n		"lightbox_image": "",\n		"spotlight_effect": "",\n		"caption": "",\n		"width": 227,\n		"height": 46\n	},\n	"89335a61-ea45-4fad-b16f-488154d4f8e2":  {\n		"0":  {\n			"value": "<p>\\u0456\\u043f\\u043a\\u0430\\u0456\\u0432\\u0430\\u043f\\u0456\\u0432\\u0430\\u043f\\u0444\\u0432\\u043a\\u043f\\u0444\\u0443\\u0432\\u043a\\u0440\\u0444\\u0443\\u043a\\u0430\\u0440\\u0432\\u0456\\u0444\\u0430\\u0440\\u0456\\u0432\\u0435\\u0440<\\/p>"\n		}\n	},\n	"b9bab2fd-a9cc-47ac-8473-71d232f2bfb6":  {\n		"votes": "1",\n		"value": "5.0000"\n	}\n}', ' {\n	"metadata.title": "",\n	"metadata.description": "",\n	"metadata.keywords": "",\n	"metadata.robots": "",\n	"metadata.author": "",\n	"config.enable_comments": "1",\n	"config.primary_category": "3"\n}');

-- --------------------------------------------------------

--
-- Структура таблицы `f8ad7_zoo_rating`
--

CREATE TABLE IF NOT EXISTS `f8ad7_zoo_rating` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` int(11) DEFAULT NULL,
  `element_id` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `value` tinyint(4) DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `f8ad7_zoo_rating`
--

INSERT INTO `f8ad7_zoo_rating` (`id`, `item_id`, `element_id`, `user_id`, `value`, `ip`, `created`) VALUES
(1, 3, 'b9bab2fd-a9cc-47ac-8473-71d232f2bfb6', 0, 5, '127.0.0.1', '2014-09-16 11:46:28');

-- --------------------------------------------------------

--
-- Структура таблицы `f8ad7_zoo_search_index`
--

CREATE TABLE IF NOT EXISTS `f8ad7_zoo_search_index` (
  `item_id` int(11) NOT NULL,
  `element_id` varchar(255) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`item_id`,`element_id`),
  FULLTEXT KEY `SEARCH_FULLTEXT` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `f8ad7_zoo_search_index`
--

INSERT INTO `f8ad7_zoo_search_index` (`item_id`, `element_id`, `value`) VALUES
(2, 'b96603c6-d06a-4d72-ac39-1e5b374d79ac', 'Научно-практический медицинский журнал «Фармакогенетика и фармакогеномика» издаётся с 2014 г.'),
(4, '89335a61-ea45-4fad-b16f-488154d4f8e2', 'іпкаівапівапфвкпфувкрфукарвіфарівер'),
(3, 'b9bab2fd-a9cc-47ac-8473-71d232f2bfb6', '5.0'),
(4, 'b9bab2fd-a9cc-47ac-8473-71d232f2bfb6', '0.0'),
(2, 'c4e7ae4e-ff94-4e71-8d5d-b1fec7599585', '«Фармакогенетика и фармакогеномика» публикует оригинальные статьи о проведённых клинических, клинико-экспериментальных и фундаментальных научных работах, обзоры, лекции, описания клинических случаев, а также вспомогательные материалы по всем актуальным проблемам персонаизированной медицины'),
(5, 'b9bab2fd-a9cc-47ac-8473-71d232f2bfb6', '0.0'),
(6, '89335a61-ea45-4fad-b16f-488154d4f8e2', 'іпкаівапівапфвкпфувкрфукарвіфарівер'),
(7, '89335a61-ea45-4fad-b16f-488154d4f8e2', 'іпкаівапівапфвкпфувкрфукарвіфарівер'),
(6, 'b9bab2fd-a9cc-47ac-8473-71d232f2bfb6', '0.0'),
(7, 'b9bab2fd-a9cc-47ac-8473-71d232f2bfb6', '5.0'),
(5, '89335a61-ea45-4fad-b16f-488154d4f8e2', 'іпкаівапівапфвкпфувкрфукарвіфарівер'),
(3, '89335a61-ea45-4fad-b16f-488154d4f8e2', 'іпкаівапівапфвкпфувкрфукарвіфарівер');

-- --------------------------------------------------------

--
-- Структура таблицы `f8ad7_zoo_submission`
--

CREATE TABLE IF NOT EXISTS `f8ad7_zoo_submission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `application_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `state` tinyint(3) NOT NULL,
  `access` int(11) NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ALIAS_INDEX` (`alias`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `f8ad7_zoo_tag`
--

CREATE TABLE IF NOT EXISTS `f8ad7_zoo_tag` (
  `item_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`item_id`,`name`),
  UNIQUE KEY `NAME_ITEMID_INDEX` (`name`,`item_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `f8ad7_zoo_tag`
--

INSERT INTO `f8ad7_zoo_tag` (`item_id`, `name`) VALUES
(3, 'Актуальные обзоры'),
(3, 'Новости'),
(3, 'Оригинальные исследования'),
(3, 'Фармакогенетические исследования'),
(3, 'Фармакогеномные исследования'),
(5, 'Новости'),
(7, 'Новости');

-- --------------------------------------------------------

--
-- Структура таблицы `f8ad7_zoo_version`
--

CREATE TABLE IF NOT EXISTS `f8ad7_zoo_version` (
  `version` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `f8ad7_zoo_version`
--

INSERT INTO `f8ad7_zoo_version` (`version`) VALUES
('3.2.2');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
