-- phpMyAdmin SQL Dump
-- version 3.2.0.1
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2019-12-17 23:20:05
-- 服务器版本: 5.5.8
-- PHP 版本: 5.3.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `cube`
--

-- --------------------------------------------------------

--
-- 表的结构 `quiz`
--

CREATE TABLE IF NOT EXISTS `quiz` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question` varchar(100) NOT NULL,
  `answer` varchar(500) NOT NULL,
  `correct` tinyint(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- 转存表中的数据 `quiz`
--

INSERT INTO `quiz` (`id`, `question`, `answer`, `correct`) VALUES
(1, '以下哪个是CUBE公司发行的歌曲:', 'A．Double Maker ###B．Trouble Faker ###C．Trouble Maker ###D．Double Tigers', 3),
(2, '以下哪个是CUBE的创办人：', 'A.洪胜成 ###B.洪秀贤 ###C.洪负败 ###D.金秀贤', 1),
(3, '以下哪位明星在刚哥课上出现次数最多', 'A.高晓松###B.TARA###C.金泫雅###D.崔智娜', 2),
(4, '以下哪种粉丝行为值得被提倡', 'A.为买偶像周边应援变卖家产###B.理智追星理性消费###C.在网络上跟别家粉丝对骂###D.废寝忘食刷资讯做数据', 2),
(5, '中国广电局的”禁韩令“是在什么时间发布的？', 'A.2016年###B.2017年###C.2008年###D.9102年', 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
