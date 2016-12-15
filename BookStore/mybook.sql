-- phpMyAdmin SQL Dump
-- version 4.5.0.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 2016-12-01 10:14:03
-- 服务器版本： 10.0.17-MariaDB
-- PHP Version: 5.6.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mybook`
--

-- --------------------------------------------------------

--
-- 表的结构 `addmore`
--

CREATE TABLE `addmore` (
  `id` int(11) NOT NULL COMMENT '唯一标示符',
  `book_name` varchar(255) DEFAULT NULL COMMENT '书名',
  `intro` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '简介',
  `author` varchar(255) DEFAULT NULL COMMENT '作者',
  `concern` varchar(255) DEFAULT NULL COMMENT '出版社',
  `date` varchar(11) DEFAULT NULL COMMENT '出版日期',
  `price` float DEFAULT NULL COMMENT '价格',
  `ISBN` varchar(255) DEFAULT NULL COMMENT 'ISBN',
  `url` varchar(255) DEFAULT NULL COMMENT '书籍图片'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `addmore`
--

INSERT INTO `addmore` (`id`, `book_name`, `intro`, `author`, `concern`, `date`, `price`, `ISBN`, `url`) VALUES
(30, '就喜欢你看不惯又干不掉我的样子', '该书集结了近年来白茶连载在微博上的彩色插图以及专门创作的最新爆笑短篇，讲述一只叫“吾皇”的胖猫、一只叫“巴扎黑”的萌狗以及少年主人的生活趣事。', '白茶', '长江文艺出版社', '2015-5-1', 46.1, '9787535479860', '../uploads/justlike.jpg'),
(34, '巨人的陨落', '在第一次世界大战的硝烟中，每一个迈向死亡的生命都在热烈地生长——威尔士的矿工少年、刚失恋的美国法律系大学生、穷困潦倒的俄国兄弟、富有英俊的英格兰伯爵，以及痴情的德国特工……从充满灰尘和危险的煤矿到闪闪发光的皇室宫殿，从代表着权力的走廊到爱恨纠缠的卧室，五个家族迥然不同又纠葛不断的命运逐渐揭晓，波澜壮阔地展现了一个我们自认为了解，但从未如此真切感受过的20世纪相关作品。', '肯·福莱特', '江苏凤凰文艺出版社', '2016-04-01', 129.8, '9787539989891', '../uploads/huge.jpg'),
(35, '嘱托', '众生流转轮回的主要因素有三种：一，是与无常相违的常执；二，是与痛苦相反的乐执；三，是与无我相抵触的我执。有了这三种执着，就会造作善恶之业。造了善业，就流转于人天等善趣；造了恶业，就投生于地狱等恶趣，始终无法超轮回而获得解脱。脱离轮回获取解脱的原因，并不在于外面，而是来自于我们自身。', '慈诚罗珠堪布', ' 中国社会科学出版社', '2015-07-01', 29.9, '9787516181591', '../uploads/zhutuo.jpg'),
(36, '聪明人用方格笔记本', '你的前途暗淡、人生迷茫是因为你在使用错误的笔记本，错误的记笔记方式。从现在开始使用方格笔记本，遵循空、雨、伞之道，开始新的笔记之路，开启新的人生模式。', '高桥政史', '湖南文艺出版社', '2015-6-1', 38, '9787540471644', '../uploads/smart.jpg'),
(37, '中国儿童地图百科全书 走遍世界', '地图是学习地理知识、认知世界最重要和最直观的工具。《中国儿童地图百科全书·走遍世界》就是一本通过地图来让孩子认识世界、探索未知的趣味百科全书。', '《中国儿童地图百科全书》编委会', '中国大百科全书出版社', '2015-1', 68, '9787500095040', '../uploads/boy_map.jpg'),
(38, '一年六个夏天', '写给孙女的成长绘本，在小老虎连过六个夏天的故事中启发孩子想象力、应变力和创造力。皮皮鲁绘本箱陪伴孩子健康快乐成长，皮皮鲁总动员出品', '郑渊洁', '天津人民出版社', '2016-05-28', 36, '9787201104591', '../uploads/oneyear.jpg'),
(39, '你不知道的JavaScript（上卷）', '“你不知道的JavaScript”系列就是要让不求甚解的JavaScript开发者迎难而上，深入语言内部，弄清楚JavaScript每一个零部件的用途。', 'Kyle Simpson ', '人民邮电出版社', '2015-4', 49, '9787115385734', '../uploads/javascript.jpg'),
(40, 'java从入门到一生黑', '本书适合作为软件开发入门者的自学用书，也适合作为高等院校相关专业的教学参考书，还可供开发人员查阅、参考。', '明日科技', '清华大学出版社', '2015-03-09', 69.8, '9787302444541', '../uploads/java.jpeg'),
(41, '百年孤独', '作品描写了布恩迪亚家族七代人的传奇故事，以及加勒比海沿岸小镇马孔多的百年兴衰，反映了拉丁美洲一个世纪以来风云变幻的历史。作品融入神话传说、民间故事、宗教典故等神秘因素，巧妙地糅合了现实与虚幻，展现出一个瑰丽的想象世界，成为20世纪最重要的经典文学巨著之一。', '加夫列尔·加西亚·马尔克斯', '', '1967-05', 46.5, '98754564251', '../uploads/100year.jpg'),
(42, '西游记', '《西游记》问世以来，受到历代读者的欢迎，它的故事和人物家喻户晓，老少皆知。建国后，仅人民文学出版社就印了近300万部。各种翻印本、删节本、改编本更是无法统计。历代评论家对《西游记》都有极高评价。', '吴承恩 ', '人民文学出版社', '2010-09-01', 47.2, '9787020008735', '../uploads/xiyouji.jpg'),
(43, '三国演义', '三国演义（套装共4卷）》以魏、蜀、吴三国兴亡为主线，以战争发展和人物活动为主要内容，描写了大大小小的战争，可以说，古今中外，都找不出一部能像《三国演义》那样描写战争如此丰富、如此精彩的小说。本书最擅长描写战争，并能写出每次战争的特点。', '小罗', '中国画报出版社', '2011-10-01', 45, '9787514602227', '../uploads/sanguo.jpg'),
(44, '水浒传', '《水浒传》，是中国四大名著之一，全书描写北宋末年以宋江为首的108位好汉在梁山聚义，以及聚义之后接受招安、四处征战的故事。', '施耐庵', '吉林出版集团', '2015-9', 30.8, '9787553484990', '../uploads/shuihu.jpg'),
(45, '红楼梦', '《红楼梦》以“大旨谈情，实录其事”自勉，只按自己的事体情理，按迹循踪，摆脱旧套，新鲜别致[1]  ，取得了非凡的艺术成就。“真事隐去，假语村言”的特殊笔法更是令后世读者脑洞大开，揣测之说久而遂多[3]  。围绕《红楼梦》的品读研究形成了一门显学——红学。', '曹雪芹', '西安出版社', '2008-5', 35, '954575121', '../uploads/hongloumeng.jpg');

-- --------------------------------------------------------

--
-- 表的结构 `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL COMMENT '唯一标示符',
  `username` varchar(255) DEFAULT NULL COMMENT '用户名',
  `pwd` varchar(255) DEFAULT NULL COMMENT '密码',
  `tel` varchar(15) DEFAULT NULL COMMENT '电话号码'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `login`
--

INSERT INTO `login` (`id`, `username`, `pwd`, `tel`) VALUES
(12, '张南南', '123', '13135503394');

-- --------------------------------------------------------

--
-- 表的结构 `shop`
--

CREATE TABLE `shop` (
  `index` int(11) NOT NULL COMMENT '自增',
  `id` varchar(255) DEFAULT NULL COMMENT '唯一标示符',
  `url` varchar(255) DEFAULT NULL COMMENT '缩略图',
  `book_name` varchar(255) DEFAULT NULL COMMENT '书名',
  `count` int(11) DEFAULT NULL COMMENT '数量',
  `price` float DEFAULT NULL COMMENT '价格'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `shop`
--

INSERT INTO `shop` (`index`, `id`, `url`, `book_name`, `count`, `price`) VALUES
(9, '37', '../uploads/boy_map.jpg', '中国儿童地图百科全书 走遍世界', 2, 68),
(10, '38', '../uploads/oneyear.jpg', '一年六个夏天', 1, 36),
(11, '40', '../uploads/java.jpeg', 'java从入门到一生黑', 1, 69.8),
(12, '45', '../uploads/hongloumeng.jpg', '红楼梦', 1, 35);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addmore`
--
ALTER TABLE `addmore`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shop`
--
ALTER TABLE `shop`
  ADD PRIMARY KEY (`index`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addmore`
--
ALTER TABLE `addmore`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '唯一标示符', AUTO_INCREMENT=46;
--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '唯一标示符', AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `shop`
--
ALTER TABLE `shop`
  MODIFY `index` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增', AUTO_INCREMENT=13;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
