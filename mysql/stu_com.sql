-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- 主机： localhost
-- 生成日期： 2020-12-11 22:08:23
-- 服务器版本： 5.7.26
-- PHP 版本： 7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 数据库： `stu_com`
--

-- --------------------------------------------------------

--
-- 表的结构 `wb_article`
--

CREATE TABLE `wb_article` (
  `id` int(4) UNSIGNED NOT NULL,
  `title` varchar(25) NOT NULL,
  `content` varchar(255) NOT NULL,
  `title_img` varchar(255) NOT NULL,
  `cate_id` varchar(25) NOT NULL,
  `user_id` int(4) NOT NULL,
  `status` int(2) NOT NULL DEFAULT '1',
  `pv` int(4) NOT NULL,
  `create_time` int(10) NOT NULL,
  `update_time` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `wb_article`
--

INSERT INTO `wb_article` (`id`, `title`, `content`, `title_img`, `cate_id`, `user_id`, `status`, `pv`, `create_time`, `update_time`) VALUES
(6, '微信支付啊', '你好啊啊啊啊啊啊啊啊啊啊啊啊啊', '20201209\\86720fec95427a086b88aceaf5f92e60.jpg', '1', 14, 1, 0, 1607504553, 1607504553),
(3, '微信支付啊', '你好啊啊啊啊啊啊啊啊啊啊啊啊啊', '20201209\\86720fec95427a086b88aceaf5f92e60.jpg', '1', 14, 1, 0, 1607504553, 1607504553),
(4, '小程序开发', '小程序开发小程序开发小程序开发小程序开发小程序开发小程序开发小程序开发小程序开发小程序开发小程序开发', '20201209\\a998c2acb8f0f7822f0cdb583decf9ea.png', '2', 14, 1, 0, 1607504742, 1607504742),
(5, '网站建设开发', '网站建设开发网站建设开发网站建设开发网站建设开发网站建设开发网站建设开发', '20201209\\1f8c2c113404173a09003af0c5a22f89.jpg', '2', 14, 1, 1, 1607504781, 1607504781),
(7, '小程序开发', '小程序开发小程序开发小程序开发小程序开发小程序开发小程序开发小程序开发小程序开发小程序开发小程序开发', '20201209\\a998c2acb8f0f7822f0cdb583decf9ea.png', '2', 14, 1, 0, 1607504742, 1607504742),
(8, '网站建设开发', '网站建设开发网站建设开发网站建设开发网站建设开发网站建设开发网站建设开发', '20201209\\1f8c2c113404173a09003af0c5a22f89.jpg', '2', 14, 1, 0, 1607504781, 1607504781),
(9, '微信支付啊', '你好啊啊啊啊啊啊啊啊啊啊啊啊啊', '20201209\\86720fec95427a086b88aceaf5f92e60.jpg', '1', 14, 1, 0, 1607504553, 1607504553),
(10, '微信支付啊', '你好啊啊啊啊啊啊啊啊啊啊啊啊啊', '20201209\\86720fec95427a086b88aceaf5f92e60.jpg', '1', 14, 1, 0, 1607504553, 1607504553),
(11, '小程序开发', '小程序开发小程序开发小程序开发小程序开发小程序开发小程序开发小程序开发小程序开发小程序开发小程序开发', '20201209\\a998c2acb8f0f7822f0cdb583decf9ea.png', '2', 14, 1, 0, 1607504742, 1607504742),
(12, '网站建设开发', '网站建设开发网站建设开发网站建设开发网站建设开发网站建设开发网站建设开发', '20201209\\1f8c2c113404173a09003af0c5a22f89.jpg', '2', 14, 1, 0, 1607504781, 1607504781),
(13, '小程序开发', '小程序开发小程序开发小程序开发小程序开发小程序开发小程序开发小程序开发小程序开发小程序开发小程序开发', '20201209\\a998c2acb8f0f7822f0cdb583decf9ea.png', '2', 14, 1, 0, 1607504742, 1607504742),
(14, '网站建设开发', '网站建设开发网站建设开发网站建设开发网站建设开发网站建设开发网站建设开发', '20201209\\1f8c2c113404173a09003af0c5a22f89.jpg', '2', 14, 1, 0, 1607504781, 1607504781),
(15, '微信支付啊', '你好啊啊啊啊啊啊啊啊啊啊啊啊啊', '20201209\\86720fec95427a086b88aceaf5f92e60.jpg', '1', 14, 1, 0, 1607504553, 1607504553),
(16, '微信支付啊', '你好啊啊啊啊啊啊啊啊啊啊啊啊啊', '20201209\\86720fec95427a086b88aceaf5f92e60.jpg', '1', 14, 1, 0, 1607504553, 1607504553),
(17, '小程序开发', '小程序开发小程序开发小程序开发小程序开发小程序开发小程序开发小程序开发小程序开发小程序开发小程序开发', '20201209\\a998c2acb8f0f7822f0cdb583decf9ea.png', '2', 14, 1, 0, 1607504742, 1607504742),
(18, '网站建设开发', '网站建设开发网站建设开发网站建设开发网站建设开发网站建设开发网站建设开发', '20201209\\1f8c2c113404173a09003af0c5a22f89.jpg', '2', 14, 1, 0, 1607504781, 1607504781),
(19, '小程序开发', '小程序开发小程序开发小程序开发小程序开发小程序开发小程序开发小程序开发小程序开发小程序开发小程序开发', '20201209\\a998c2acb8f0f7822f0cdb583decf9ea.png', '2', 14, 1, 0, 1607504742, 1607504742),
(20, '网站建设开发', '网站建设开发网站建设开发网站建设开发网站建设开发网站建设开发网站建设开发', '20201209\\1f8c2c113404173a09003af0c5a22f89.jpg', '2', 14, 1, 0, 1607504781, 1607504781),
(21, '微信支付啊', '你好啊啊啊啊啊啊啊啊啊啊啊啊啊', '20201209\\86720fec95427a086b88aceaf5f92e60.jpg', '1', 14, 1, 0, 1607504553, 1607504553),
(22, '微信支付啊', '你好啊啊啊啊啊啊啊啊啊啊啊啊啊', '20201209\\86720fec95427a086b88aceaf5f92e60.jpg', '1', 14, 1, 0, 1607504553, 1607504553),
(23, '小程序开发', '小程序开发小程序开发小程序开发小程序开发小程序开发小程序开发小程序开发小程序开发小程序开发小程序开发', '20201209\\a998c2acb8f0f7822f0cdb583decf9ea.png', '2', 14, 1, 0, 1607504742, 1607504742),
(24, '网站建设开发', '网站建设开发网站建设开发网站建设开发网站建设开发网站建设开发网站建设开发', '20201209\\1f8c2c113404173a09003af0c5a22f89.jpg', '2', 14, 1, 0, 1607504781, 1607504781),
(25, '小程序开发', '小程序开发小程序开发小程序开发小程序开发小程序开发小程序开发小程序开发小程序开发小程序开发小程序开发', '20201209\\a998c2acb8f0f7822f0cdb583decf9ea.png', '2', 14, 1, 0, 1607504742, 1607504742),
(26, '网站建设开发', '网站建设开发网站建设开发网站建设开发网站建设开发网站建设开发网站建设开发', '20201209\\1f8c2c113404173a09003af0c5a22f89.jpg', '2', 14, 1, 0, 1607504781, 1607504781),
(27, 'php是世界上最好的语言吗', '<p>php是世界上最好的语言吗<img src=\"https://img.wwdz.top/images/2020/11/25/3.jpg\" style=\"max-width: 100%;\"><br></p><p>阿斯达</p>', '20201209\\01b941f99c04eed2f77ea7ae7f9c7ccf.jpg', '1', 13, 1, 41, 1607525638, 1607525638);

-- --------------------------------------------------------

--
-- 表的结构 `wb_cate`
--

CREATE TABLE `wb_cate` (
  `id` int(4) UNSIGNED NOT NULL,
  `name` varchar(25) NOT NULL,
  `status` int(2) NOT NULL DEFAULT '1',
  `sort` int(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `wb_cate`
--

INSERT INTO `wb_cate` (`id`, `name`, `status`, `sort`) VALUES
(1, 'PHP', 1, 1),
(2, 'JavaScript', 1, 2);

-- --------------------------------------------------------

--
-- 表的结构 `wb_fav`
--

CREATE TABLE `wb_fav` (
  `id` int(4) UNSIGNED NOT NULL,
  `user_id` int(4) NOT NULL,
  `article_id` int(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `wb_fav`
--

INSERT INTO `wb_fav` (`id`, `user_id`, `article_id`) VALUES
(7, 13, 27);

-- --------------------------------------------------------

--
-- 表的结构 `wb_user`
--

CREATE TABLE `wb_user` (
  `id` int(4) UNSIGNED NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(200) NOT NULL,
  `mobile` char(11) NOT NULL,
  `password` char(40) NOT NULL,
  `status` int(2) NOT NULL DEFAULT '1',
  `is_admin` int(2) NOT NULL DEFAULT '0',
  `create_time` int(10) NOT NULL,
  `update_time` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `wb_user`
--

INSERT INTO `wb_user` (`id`, `name`, `email`, `mobile`, `password`, `status`, `is_admin`, `create_time`, `update_time`) VALUES
(1, '朱老师', 'a@163.com', '13520146581', '7c4a8d09ca3762af61e59520943dc26494f8941b', 1, 0, 0, 0),
(2, 'chen', 'chen@qq.com', '18285859696', 'abc1234', 1, 0, 0, 0),
(3, '吴所畏', '987887117@qq.com', '17601532019', '7c4a8d09ca3762af61e59520943dc26494f8941b', 1, 1, 0, 0),
(4, '吴所畏', '987887117@qq.com', '17601532019', '0000', 1, 0, 0, 0),
(5, '吴所畏aa', '9878871s17@qq.com', '17601536019', '123456', 1, 0, 0, 0),
(6, '移动验房师', '9878a117@qq.com', '17601232019', '123456789', 1, 0, 0, 0),
(7, 'aaaaa', '9878s117@qq.com', '17623532019', 'aaaaaa', 1, 0, 0, 0),
(8, '吴所畏11', '9a87s87117@qq.com', '17621532019', 'a123456', 1, 0, 0, 0),
(9, '吴所畏aaa', '9s87117@qq.com', '17301532019', '123456', 1, 0, 1607415986, 1607415986),
(10, 'hhhhh', '123@qaq.com', '16751236542', '7c4a8d09ca3762af61e59520943dc26494f8941b', 1, 0, 1607417275, 1607417275),
(11, 'aaaaaa', '13@qq.com', '17601532048', '7c4a8d09ca3762af61e59520943dc26494f8941b', 1, 0, 1607419511, 1607419511),
(13, 'bbbbb', '4@qq.com', '17601532015', 'c984aed014aec7623a54f0591da07a85fd4b762d', 1, 0, 1607496075, 1607496075),
(14, 'ccccc', '5@qq.com', '17601532018', 'c984aed014aec7623a54f0591da07a85fd4b762d', 1, 0, 1607496247, 1607496247);

--
-- 转储表的索引
--

--
-- 表的索引 `wb_article`
--
ALTER TABLE `wb_article`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `wb_cate`
--
ALTER TABLE `wb_cate`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `wb_fav`
--
ALTER TABLE `wb_fav`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `wb_user`
--
ALTER TABLE `wb_user`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `wb_article`
--
ALTER TABLE `wb_article`
  MODIFY `id` int(4) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- 使用表AUTO_INCREMENT `wb_cate`
--
ALTER TABLE `wb_cate`
  MODIFY `id` int(4) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- 使用表AUTO_INCREMENT `wb_fav`
--
ALTER TABLE `wb_fav`
  MODIFY `id` int(4) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- 使用表AUTO_INCREMENT `wb_user`
--
ALTER TABLE `wb_user`
  MODIFY `id` int(4) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
