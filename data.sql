-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- 主机: 127.0.0.1
-- 生成日期: 2013 年 08 月 23 日 09:04
-- 服务器版本: 5.5.32
-- PHP 版本: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `lightinblog`
--
CREATE DATABASE IF NOT EXISTS `lightinblog` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `lightinblog`;

-- --------------------------------------------------------

--
-- 表的结构 `article`
--

CREATE TABLE IF NOT EXISTS `article` (
  `id` int(15) NOT NULL,
  `author` char(30) DEFAULT NULL,
  `title` char(50) DEFAULT NULL,
  `category` int(5) DEFAULT NULL,
  `address` char(30) DEFAULT NULL,
  `introduction` char(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `article`
--

INSERT INTO `article` (`id`, `author`, `title`, `category`, `address`, `introduction`) VALUES
(0, 'sam', 'two world807', 4, '../../articles/jaievcrthv.txt', 'This is a reproduction of a book published before 1923. This book may have occasional imperfections such as missing or blurred pages'),
(1, 'peter', 'one world529', 3, '../../articles/pgxjisauzs.txt', 'Too short to be a novel, too long to be a short story, the novella is generally unrecognized by academics and publishers'),
(2, 'peter', 'two world869', 2, '../../articles/scqatykasn.txt', 'ANY one who loves simplicity or respects sincerity, any one who feels the tie binding us all together in the helplessness of our common human life'),
(3, 'sky', 'three world606', 4, '../../articles/gzksrvgflq.txt', 'Too short to be a novel, too long to be a short story, the novella is generally unrecognized by academics and publishers'),
(4, 'star', 'two world353', 4, '../../articles/hhsttbuljl.txt', 'Too short to be a novel, too long to be a short story, the novella is generally unrecognized by academics and publishers'),
(5, 'andy', 'two world769', 2, '../../articles/qqlgkakxwc.txt', 'This is a reproduction of a book published before 1923. This book may have occasional imperfections such as missing or blurred pages'),
(6, 'peter', 'one world109', 2, '../../articles/bbbzvqsakr.txt', 'This is a reproduction of a book published before 1923. This book may have occasional imperfections such as missing or blurred pages'),
(7, 'andy', 'two world506', 4, '../../articles/arkvdrqdco.txt', 'Too short to be a novel, too long to be a short story, the novella is generally unrecognized by academics and publishers'),
(8, 'sam', 'three world828', 2, '../../articles/qnkxedasny.txt', 'ANY one who loves simplicity or respects sincerity, any one who feels the tie binding us all together in the helplessness of our common human life'),
(9, 'sam', 'three world523', 2, '../../articles/qzgnwjgecd.txt', 'ANY one who loves simplicity or respects sincerity, any one who feels the tie binding us all together in the helplessness of our common human life'),
(10, 'sky', 'two world293', 1, '../../articles/mubmhnqtia.txt', 'Too short to be a novel, too long to be a short story, the novella is generally unrecognized by academics and publishers'),
(11, 'andy', 'three world997', 2, '../../articles/ylzblzbgwt.txt', 'ANY one who loves simplicity or respects sincerity, any one who feels the tie binding us all together in the helplessness of our common human life'),
(12, 'peter', 'two world636', 3, '../../articles/cefmhkuvlv.txt', 'ANY one who loves simplicity or respects sincerity, any one who feels the tie binding us all together in the helplessness of our common human life'),
(13, 'Adam', 'three world822', 2, '../../articles/vzuanypazm.txt', 'ANY one who loves simplicity or respects sincerity, any one who feels the tie binding us all together in the helplessness of our common human life'),
(14, 'Adam', 'one world578', 3, '../../articles/infabkihxv.txt', 'Too short to be a novel, too long to be a short story, the novella is generally unrecognized by academics and publishers'),
(15, 'Simms', 'one world862', 4, '../../articles/zujadqissr.txt', 'This is a reproduction of a book published before 1923. This book may have occasional imperfections such as missing or blurred pages'),
(16, 'peter', 'three world685', 1, '../../articles/siqrrjzngd.txt', 'ANY one who loves simplicity or respects sincerity, any one who feels the tie binding us all together in the helplessness of our common human life'),
(17, 'Adam', 'one world197', 3, '../../articles/atddrkyjih.txt', 'This is a reproduction of a book published before 1923. This book may have occasional imperfections such as missing or blurred pages'),
(18, 'sam', 'three world617', 3, '../../articles/obssnomdax.txt', 'This is a reproduction of a book published before 1923. This book may have occasional imperfections such as missing or blurred pages'),
(19, 'Simms', 'one world380', 3, '../../articles/uokxgbqefe.txt', 'Too short to be a novel, too long to be a short story, the novella is generally unrecognized by academics and publishers'),
(20, 'Simon', 'three world379', 3, '../../articles/gmoiobaerk.txt', 'This is a reproduction of a book published before 1923. This book may have occasional imperfections such as missing or blurred pages'),
(21, 'sam', 'three world680', 3, '../../articles/nzvvayipjg.txt', 'This is a reproduction of a book published before 1923. This book may have occasional imperfections such as missing or blurred pages'),
(22, 'Simms', 'one world569', 1, '../../articles/osgaqugjcm.txt', 'This is a reproduction of a book published before 1923. This book may have occasional imperfections such as missing or blurred pages'),
(23, 'Simms', 'three world334', 1, '../../articles/hdjjiewujs.txt', 'Too short to be a novel, too long to be a short story, the novella is generally unrecognized by academics and publishers'),
(24, 'star', 'two world627', 2, '../../articles/vrjrpaumuq.txt', 'ANY one who loves simplicity or respects sincerity, any one who feels the tie binding us all together in the helplessness of our common human life'),
(25, 'sam', 'two world801', 1, '../../articles/buvmydhqxm.txt', 'ANY one who loves simplicity or respects sincerity, any one who feels the tie binding us all together in the helplessness of our common human life'),
(26, 'peter', 'two world89', 3, '../../articles/ggyzsjgmaj.txt', 'ANY one who loves simplicity or respects sincerity, any one who feels the tie binding us all together in the helplessness of our common human life'),
(27, 'Simms', 'one world5', 3, '../../articles/bmzojkfftf.txt', 'Too short to be a novel, too long to be a short story, the novella is generally unrecognized by academics and publishers'),
(28, 'peter', 'one world834', 2, '../../articles/cmynxgsthk.txt', 'This is a reproduction of a book published before 1923. This book may have occasional imperfections such as missing or blurred pages'),
(29, 'andy', 'one world592', 2, '../../articles/ywtzdewxfr.txt', 'Too short to be a novel, too long to be a short story, the novella is generally unrecognized by academics and publishers'),
(30, 'Simon', 'two world334', 1, '../../articles/axletbrmgw.txt', 'ANY one who loves simplicity or respects sincerity, any one who feels the tie binding us all together in the helplessness of our common human life'),
(31, 'andy', 'one world174', 1, '../../articles/cypdyonqja.txt', 'ANY one who loves simplicity or respects sincerity, any one who feels the tie binding us all together in the helplessness of our common human life'),
(32, 'star', 'one world906', 3, '../../articles/fwuediruis.txt', 'Too short to be a novel, too long to be a short story, the novella is generally unrecognized by academics and publishers'),
(33, 'andy', 'two world584', 3, '../../articles/yiptytphcy.txt', 'ANY one who loves simplicity or respects sincerity, any one who feels the tie binding us all together in the helplessness of our common human life'),
(34, 'Simon', 'two world960', 4, '../../articles/tnxpddezqt.txt', 'This is a reproduction of a book published before 1923. This book may have occasional imperfections such as missing or blurred pages'),
(35, 'sam', 'two world122', 1, '../../articles/amxfbearsb.txt', 'This is a reproduction of a book published before 1923. This book may have occasional imperfections such as missing or blurred pages'),
(36, 'Adam', 'three world249', 4, '../../articles/vksjmgcvob.txt', 'ANY one who loves simplicity or respects sincerity, any one who feels the tie binding us all together in the helplessness of our common human life'),
(37, 'sky', 'one world809', 4, '../../articles/jwxsdymevz.txt', 'ANY one who loves simplicity or respects sincerity, any one who feels the tie binding us all together in the helplessness of our common human life'),
(38, 'peter', 'one world122', 3, '../../articles/xjattlwyqg.txt', 'This is a reproduction of a book published before 1923. This book may have occasional imperfections such as missing or blurred pages'),
(39, 'Simon', 'one world632', 4, '../../articles/tlhngbonwt.txt', 'ANY one who loves simplicity or respects sincerity, any one who feels the tie binding us all together in the helplessness of our common human life'),
(40, 'andy', 'three world770', 3, '../../articles/ccekppwsdo.txt', 'This is a reproduction of a book published before 1923. This book may have occasional imperfections such as missing or blurred pages'),
(41, 'alan', 'two world798', 3, '../../articles/yrrgymbmey.txt', 'This is a reproduction of a book published before 1923. This book may have occasional imperfections such as missing or blurred pages'),
(42, 'sam', 'three world478', 1, '../../articles/jeysaemxcf.txt', 'This is a reproduction of a book published before 1923. This book may have occasional imperfections such as missing or blurred pages'),
(43, 'alan', 'one world983', 2, '../../articles/xvmenqiuja.txt', 'ANY one who loves simplicity or respects sincerity, any one who feels the tie binding us all together in the helplessness of our common human life'),
(44, 'star', 'two world876', 2, '../../articles/smabpilrsr.txt', 'This is a reproduction of a book published before 1923. This book may have occasional imperfections such as missing or blurred pages'),
(45, 'sam', 'one world581', 3, '../../articles/ailhfmjqlm.txt', 'ANY one who loves simplicity or respects sincerity, any one who feels the tie binding us all together in the helplessness of our common human life'),
(46, 'alan', 'one world184', 1, '../../articles/nhgavecxmw.txt', 'This is a reproduction of a book published before 1923. This book may have occasional imperfections such as missing or blurred pages'),
(47, 'Adam', 'two world956', 4, '../../articles/lytumwerff.txt', 'ANY one who loves simplicity or respects sincerity, any one who feels the tie binding us all together in the helplessness of our common human life'),
(48, 'Simon', 'three world471', 4, '../../articles/uptqearnmm.txt', 'ANY one who loves simplicity or respects sincerity, any one who feels the tie binding us all together in the helplessness of our common human life'),
(49, 'peter', 'three world690', 2, '../../articles/iahffqznjs.txt', 'This is a reproduction of a book published before 1923. This book may have occasional imperfections such as missing or blurred pages'),
(50, 'star', 'three world896', 3, '../../articles/hlfrpslnqb.txt', 'ANY one who loves simplicity or respects sincerity, any one who feels the tie binding us all together in the helplessness of our common human life'),
(51, 'sam', 'three world834', 1, '../../articles/ytxqbcjvyh.txt', 'Too short to be a novel, too long to be a short story, the novella is generally unrecognized by academics and publishers'),
(52, 'Adam', 'two world963', 2, '../../articles/zafxmsamal.txt', 'This is a reproduction of a book published before 1923. This book may have occasional imperfections such as missing or blurred pages'),
(53, 'alan', 'three world157', 3, '../../articles/dkryrbvohi.txt', 'Too short to be a novel, too long to be a short story, the novella is generally unrecognized by academics and publishers'),
(54, 'sam', 'one world769', 4, '../../articles/cykffopsaz.txt', 'Too short to be a novel, too long to be a short story, the novella is generally unrecognized by academics and publishers'),
(55, 'Simms', 'three world398', 2, '../../articles/lqegwgsjpq.txt', 'ANY one who loves simplicity or respects sincerity, any one who feels the tie binding us all together in the helplessness of our common human life'),
(56, 'star', 'three world257', 3, '../../articles/msucexikor.txt', 'ANY one who loves simplicity or respects sincerity, any one who feels the tie binding us all together in the helplessness of our common human life'),
(57, 'sky', 'three world513', 1, '../../articles/hqsxyloqym.txt', 'ANY one who loves simplicity or respects sincerity, any one who feels the tie binding us all together in the helplessness of our common human life'),
(58, 'peter', 'three world461', 1, '../../articles/vpardzhbnn.txt', 'ANY one who loves simplicity or respects sincerity, any one who feels the tie binding us all together in the helplessness of our common human life'),
(59, 'sky', 'one world928', 4, '../../articles/lmlwxtkzrd.txt', 'ANY one who loves simplicity or respects sincerity, any one who feels the tie binding us all together in the helplessness of our common human life'),
(60, 'andy', 'three world761', 1, '../../articles/xflbkqaotr.txt', 'Too short to be a novel, too long to be a short story, the novella is generally unrecognized by academics and publishers'),
(61, 'sky', 'two world788', 2, '../../articles/bjvytxcfqw.txt', 'This is a reproduction of a book published before 1923. This book may have occasional imperfections such as missing or blurred pages'),
(62, 'alan', 'two world127', 4, '../../articles/wqrpfuqonw.txt', 'ANY one who loves simplicity or respects sincerity, any one who feels the tie binding us all together in the helplessness of our common human life'),
(63, 'sam', 'one world206', 2, '../../articles/zuwcsmivgg.txt', 'ANY one who loves simplicity or respects sincerity, any one who feels the tie binding us all together in the helplessness of our common human life'),
(64, 'sky', 'two world379', 1, '../../articles/lpobvlbrsl.txt', 'ANY one who loves simplicity or respects sincerity, any one who feels the tie binding us all together in the helplessness of our common human life'),
(65, 'sam', 'two world515', 4, '../../articles/euenldbdco.txt', 'ANY one who loves simplicity or respects sincerity, any one who feels the tie binding us all together in the helplessness of our common human life'),
(66, 'sky', 'one world425', 2, '../../articles/evpzwfhuzv.txt', 'Too short to be a novel, too long to be a short story, the novella is generally unrecognized by academics and publishers'),
(67, 'Simms', 'three world514', 4, '../../articles/qjiciwsnwv.txt', 'Too short to be a novel, too long to be a short story, the novella is generally unrecognized by academics and publishers'),
(68, 'Adam', 'three world520', 3, '../../articles/sjbwpjtcco.txt', 'ANY one who loves simplicity or respects sincerity, any one who feels the tie binding us all together in the helplessness of our common human life'),
(69, 'star', 'two world724', 4, '../../articles/ynenshkush.txt', 'This is a reproduction of a book published before 1923. This book may have occasional imperfections such as missing or blurred pages'),
(70, 'andy', 'three world510', 4, '../../articles/cnjkadlsgs.txt', 'ANY one who loves simplicity or respects sincerity, any one who feels the tie binding us all together in the helplessness of our common human life'),
(71, 'andy', 'three world633', 2, '../../articles/jqboguihni.txt', 'This is a reproduction of a book published before 1923. This book may have occasional imperfections such as missing or blurred pages'),
(72, 'alan', 'two world87', 3, '../../articles/ynhtjycpca.txt', 'This is a reproduction of a book published before 1923. This book may have occasional imperfections such as missing or blurred pages'),
(73, 'star', 'one world947', 2, '../../articles/dsyjxztedd.txt', 'ANY one who loves simplicity or respects sincerity, any one who feels the tie binding us all together in the helplessness of our common human life'),
(74, 'sky', 'one world37', 2, '../../articles/pmewcssygh.txt', 'Too short to be a novel, too long to be a short story, the novella is generally unrecognized by academics and publishers'),
(75, 'andy', 'three world843', 3, '../../articles/snwqnsmtsq.txt', 'This is a reproduction of a book published before 1923. This book may have occasional imperfections such as missing or blurred pages'),
(76, 'Adam', 'one world489', 1, '../../articles/srfohelkjk.txt', 'ANY one who loves simplicity or respects sincerity, any one who feels the tie binding us all together in the helplessness of our common human life'),
(77, 'andy', 'one world214', 2, '../../articles/bazyukbqtv.txt', 'Too short to be a novel, too long to be a short story, the novella is generally unrecognized by academics and publishers'),
(78, 'Adam', 'one world165', 3, '../../articles/bysxyvgllu.txt', 'Too short to be a novel, too long to be a short story, the novella is generally unrecognized by academics and publishers'),
(79, 'andy', 'one world926', 2, '../../articles/tlzyrlyaod.txt', 'This is a reproduction of a book published before 1923. This book may have occasional imperfections such as missing or blurred pages'),
(80, 'star', 'one world632', 2, '../../articles/fugmbptjbr.txt', 'ANY one who loves simplicity or respects sincerity, any one who feels the tie binding us all together in the helplessness of our common human life'),
(81, 'star', 'three world58', 2, '../../articles/mqhrqfwbin.txt', 'ANY one who loves simplicity or respects sincerity, any one who feels the tie binding us all together in the helplessness of our common human life'),
(82, 'sky', 'two world549', 2, '../../articles/ksbnasttqc.txt', 'Too short to be a novel, too long to be a short story, the novella is generally unrecognized by academics and publishers'),
(83, 'sky', 'three world163', 4, '../../articles/ahgrtmzvnt.txt', 'ANY one who loves simplicity or respects sincerity, any one who feels the tie binding us all together in the helplessness of our common human life'),
(84, 'Simms', 'one world921', 1, '../../articles/bkgiugjsuk.txt', 'This is a reproduction of a book published before 1923. This book may have occasional imperfections such as missing or blurred pages'),
(85, 'sky', 'one world510', 2, '../../articles/rfklfpfxcu.txt', 'Too short to be a novel, too long to be a short story, the novella is generally unrecognized by academics and publishers'),
(86, 'sam', 'one world344', 2, '../../articles/zbyheeiyik.txt', 'Too short to be a novel, too long to be a short story, the novella is generally unrecognized by academics and publishers'),
(87, 'Adam', 'two world336', 4, '../../articles/mmxmiskiqx.txt', 'ANY one who loves simplicity or respects sincerity, any one who feels the tie binding us all together in the helplessness of our common human life'),
(88, 'alan', 'one world262', 3, '../../articles/mpqkdrfftp.txt', 'This is a reproduction of a book published before 1923. This book may have occasional imperfections such as missing or blurred pages'),
(89, 'Simon', 'one world99', 2, '../../articles/lwkrvdravx.txt', 'This is a reproduction of a book published before 1923. This book may have occasional imperfections such as missing or blurred pages'),
(90, 'andy', 'one world208', 3, '../../articles/tumgxlrnjn.txt', 'ANY one who loves simplicity or respects sincerity, any one who feels the tie binding us all together in the helplessness of our common human life'),
(91, 'Adam', 'two world726', 2, '../../articles/sxtnimncmm.txt', 'This is a reproduction of a book published before 1923. This book may have occasional imperfections such as missing or blurred pages'),
(92, 'star', 'three world62', 3, '../../articles/cvimhxtfpv.txt', 'ANY one who loves simplicity or respects sincerity, any one who feels the tie binding us all together in the helplessness of our common human life'),
(93, 'Simon', 'two world860', 4, '../../articles/ahuhgafwwk.txt', 'Too short to be a novel, too long to be a short story, the novella is generally unrecognized by academics and publishers'),
(94, 'andy', 'one world296', 4, '../../articles/cfixajynes.txt', 'ANY one who loves simplicity or respects sincerity, any one who feels the tie binding us all together in the helplessness of our common human life'),
(95, 'Adam', 'two world113', 1, '../../articles/tzbljuajbw.txt', 'Too short to be a novel, too long to be a short story, the novella is generally unrecognized by academics and publishers'),
(96, 'sam', 'one world228', 3, '../../articles/betvwlummc.txt', 'ANY one who loves simplicity or respects sincerity, any one who feels the tie binding us all together in the helplessness of our common human life'),
(97, 'Adam', 'two world320', 3, '../../articles/gppruxkizo.txt', 'This is a reproduction of a book published before 1923. This book may have occasional imperfections such as missing or blurred pages'),
(98, 'peter', 'three world266', 3, '../../articles/yaqhzeulru.txt', 'Too short to be a novel, too long to be a short story, the novella is generally unrecognized by academics and publishers'),
(99, 'Simon', 'two world781', 1, '../../articles/cppjlygtxa.txt', 'This is a reproduction of a book published before 1923. This book may have occasional imperfections such as missing or blurred pages');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
