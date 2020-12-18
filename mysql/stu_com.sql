-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- 主机： localhost
-- 生成日期： 2020-12-18 13:51:20
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
CREATE DATABASE IF NOT EXISTS `stu_com` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `stu_com`;

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
(3, '微信支付啊', '你好啊啊啊啊啊啊啊啊啊啊啊啊啊', '20201209\\86720fec95427a086b88aceaf5f92e60.jpg', '1', 14, 1, 0, 1607504553, 1607504553),
(4, '小程序开发', '<p>小程序开发小程序开发小程序开发小程序开发小程序开发小程序开发小程序开发小程序开发小程序开发小程序开发</p>', '20201217\\8e2b93a405a9f55cbf8288541c810ec6.png', '2', 0, 1, 0, 1607504742, 1607504742),
(5, '网站建设开发', '网站建设开发网站建设开发网站建设开发网站建设开发网站建设开发网站建设开发', '20201209\\1f8c2c113404173a09003af0c5a22f89.jpg', '2', 14, 1, 1, 1607504781, 1607504781),
(7, '小程序开发', '小程序开发小程序开发小程序开发小程序开发小程序开发小程序开发小程序开发小程序开发小程序开发小程序开发', '20201209\\a998c2acb8f0f7822f0cdb583decf9ea.png', '2', 14, 1, 0, 1607504742, 1607504742),
(8, '网站建设开发', '网站建设开发网站建设开发网站建设开发网站建设开发网站建设开发网站建设开发', '20201209\\1f8c2c113404173a09003af0c5a22f89.jpg', '2', 14, 1, 0, 1607504781, 1607504781),
(9, '微信支付啊', '你好啊啊啊啊啊啊啊啊啊啊啊啊啊', '20201209\\86720fec95427a086b88aceaf5f92e60.jpg', '1', 14, 1, 0, 1607504553, 1607504553),
(10, '微信支付啊', '你好啊啊啊啊啊啊啊啊啊啊啊啊啊', '20201209\\86720fec95427a086b88aceaf5f92e60.jpg', '1', 14, 1, 0, 1607504553, 1607504553),
(11, '小程序开发', '小程序开发小程序开发小程序开发小程序开发小程序开发小程序开发小程序开发小程序开发小程序开发小程序开发', '20201209\\a998c2acb8f0f7822f0cdb583decf9ea.png', '2', 14, 1, 0, 1607504742, 1607504742),
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
(27, 'php是世界上最好的语言吗', '<p>php是世界上最好的语言吗<img src=\"https://img.wwdz.top/images/2020/11/25/3.jpg\" style=\"max-width: 100%;\"><br></p><p>阿斯达</p>', '20201209\\01b941f99c04eed2f77ea7ae7f9c7ccf.jpg', '1', 13, 1, 92, 1607525638, 1607525638),
(28, '微信支付啊', '你好啊啊啊啊啊啊啊啊啊啊啊啊啊', '20201209\\86720fec95427a086b88aceaf5f92e60.jpg', '1', 14, 1, 0, 1607504553, 1607504553),
(29, '微信支付啊', '你好啊啊啊啊啊啊啊啊啊啊啊啊啊', '20201209\\86720fec95427a086b88aceaf5f92e60.jpg', '1', 14, 1, 0, 1607504553, 1607504553),
(30, '小程序开发', '小程序开发小程序开发小程序开发小程序开发小程序开发小程序开发小程序开发小程序开发小程序开发小程序开发', '20201209\\a998c2acb8f0f7822f0cdb583decf9ea.png', '2', 14, 1, 0, 1607504742, 1607504742),
(31, '网站建设开发', '网站建设开发网站建设开发网站建设开发网站建设开发网站建设开发网站建设开发', '20201209\\1f8c2c113404173a09003af0c5a22f89.jpg', '2', 14, 1, 1, 1607504781, 1607504781),
(32, '小程序开发', '小程序开发小程序开发小程序开发小程序开发小程序开发小程序开发小程序开发小程序开发小程序开发小程序开发', '20201209\\a998c2acb8f0f7822f0cdb583decf9ea.png', '2', 14, 1, 0, 1607504742, 1607504742),
(33, '网站建设开发', '网站建设开发网站建设开发网站建设开发网站建设开发网站建设开发网站建设开发', '20201209\\1f8c2c113404173a09003af0c5a22f89.jpg', '2', 14, 1, 0, 1607504781, 1607504781),
(34, '微信支付啊', '你好啊啊啊啊啊啊啊啊啊啊啊啊啊', '20201209\\86720fec95427a086b88aceaf5f92e60.jpg', '1', 14, 1, 0, 1607504553, 1607504553),
(35, '微信支付啊', '你好啊啊啊啊啊啊啊啊啊啊啊啊啊', '20201209\\86720fec95427a086b88aceaf5f92e60.jpg', '1', 14, 1, 0, 1607504553, 1607504553),
(36, '小程序开发', '小程序开发小程序开发小程序开发小程序开发小程序开发小程序开发小程序开发小程序开发小程序开发小程序开发', '20201209\\a998c2acb8f0f7822f0cdb583decf9ea.png', '2', 14, 1, 0, 1607504742, 1607504742),
(37, '网站建设开发', '网站建设开发网站建设开发网站建设开发网站建设开发网站建设开发网站建设开发', '20201209\\1f8c2c113404173a09003af0c5a22f89.jpg', '2', 14, 1, 0, 1607504781, 1607504781),
(38, '小程序开发', '小程序开发小程序开发小程序开发小程序开发小程序开发小程序开发小程序开发小程序开发小程序开发小程序开发', '20201209\\a998c2acb8f0f7822f0cdb583decf9ea.png', '2', 14, 1, 0, 1607504742, 1607504742),
(39, '网站建设开发', '网站建设开发网站建设开发网站建设开发网站建设开发网站建设开发网站建设开发', '20201209\\1f8c2c113404173a09003af0c5a22f89.jpg', '2', 14, 1, 0, 1607504781, 1607504781),
(40, '微信支付啊', '你好啊啊啊啊啊啊啊啊啊啊啊啊啊', '20201209\\86720fec95427a086b88aceaf5f92e60.jpg', '1', 14, 1, 0, 1607504553, 1607504553),
(41, '微信支付啊', '你好啊啊啊啊啊啊啊啊啊啊啊啊啊', '20201209\\86720fec95427a086b88aceaf5f92e60.jpg', '1', 14, 1, 0, 1607504553, 1607504553),
(42, '小程序开发', '小程序开发小程序开发小程序开发小程序开发小程序开发小程序开发小程序开发小程序开发小程序开发小程序开发', '20201209\\a998c2acb8f0f7822f0cdb583decf9ea.png', '2', 14, 1, 0, 1607504742, 1607504742),
(43, '网站建设开发0', '<p>网站建设开发网站建设开发网站建设开发网站建设开发网站建设开发网站建设开发啊实打实大啊啊啊啊阿</p>', '20201209\\1f8c2c113404173a09003af0c5a22f89.jpg', '2', 0, 1, 0, 1607504781, 1607504781),
(44, '小程序开发', '小程序开发小程序开发小程序开发小程序开发小程序开发小程序开发小程序开发小程序开发小程序开发小程序开发', '20201209\\a998c2acb8f0f7822f0cdb583decf9ea.png', '2', 14, 1, 0, 1607504742, 1607504742),
(45, '网站建设开发', '网站建设开发网站建设开发网站建设开发网站建设开发网站建设开发网站建设开发', '20201209\\1f8c2c113404173a09003af0c5a22f89.jpg', '2', 14, 1, 0, 1607504781, 1607504781),
(46, '微信支付啊', '你好啊啊啊啊啊啊啊啊啊啊啊啊啊', '20201209\\86720fec95427a086b88aceaf5f92e60.jpg', '1', 14, 1, 0, 1607504553, 1607504553),
(47, '微信支付啊', '你好啊啊啊啊啊啊啊啊啊啊啊啊啊', '20201209\\86720fec95427a086b88aceaf5f92e60.jpg', '1', 14, 1, 0, 1607504553, 1607504553);

-- --------------------------------------------------------

--
-- 表的结构 `wb_cate`
--

CREATE TABLE `wb_cate` (
  `id` int(4) UNSIGNED NOT NULL COMMENT '主键',
  `name` varchar(25) NOT NULL COMMENT '分类名称',
  `status` int(2) NOT NULL DEFAULT '1' COMMENT '状态1启动0禁用',
  `sort` int(4) NOT NULL COMMENT '排序',
  `create_time` int(10) NOT NULL COMMENT '创建时间',
  `update_time` int(10) NOT NULL COMMENT '更新时间'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `wb_cate`
--

INSERT INTO `wb_cate` (`id`, `name`, `status`, `sort`, `create_time`, `update_time`) VALUES
(1, 'PHP', 1, 1, 0, 0),
(2, 'JavaScript', 1, 2, 0, 0),
(3, 'Html', 1, 0, 1608191769, 1608191769);

-- --------------------------------------------------------

--
-- 表的结构 `wb_comment`
--

CREATE TABLE `wb_comment` (
  `id` int(2) UNSIGNED NOT NULL,
  `user_id` int(4) NOT NULL,
  `article_id` int(4) NOT NULL,
  `content` varchar(255) NOT NULL,
  `create_time` int(10) NOT NULL,
  `update_time` int(10) NOT NULL,
  `status` int(2) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `wb_comment`
--

INSERT INTO `wb_comment` (`id`, `user_id`, `article_id`, `content`, `create_time`, `update_time`, `status`) VALUES
(1, 13, 27, 'aaaaaaaaaaa', 1608264974, 1608264974, 1),
(2, 13, 27, 'hhhhhhhhhh', 1608264981, 1608264981, 1),
(3, 13, 27, 'hhasdasd', 1608264987, 1608264987, 1);

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
(10, 13, 27);

-- --------------------------------------------------------

--
-- 表的结构 `wb_site`
--

CREATE TABLE `wb_site` (
  `id` int(4) UNSIGNED NOT NULL,
  `name` varchar(25) NOT NULL,
  `keywords` varchar(50) NOT NULL,
  `content` varchar(255) NOT NULL,
  `status` int(2) NOT NULL DEFAULT '1',
  `is_open` int(2) NOT NULL,
  `is_comp` int(2) NOT NULL DEFAULT '1',
  `is_reg` int(2) NOT NULL DEFAULT '1',
  `create_time` int(10) NOT NULL,
  `update_time` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `wb_site`
--

INSERT INTO `wb_site` (`id`, `name`, `keywords`, `content`, `status`, `is_open`, `is_comp`, `is_reg`, `create_time`, `update_time`) VALUES
(1, 'wb文章管理系统', '文章，建站', 'wb文章管理系统文章，建站', 1, 1, 1, 1, 0, 1608263533);

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
(2, 'chen哈哈', 'chen@qq.com', '18285859696', 'c9b359951c09c5d04de4f852746671ab2b2d0994', 1, 0, 0, 0),
(13, '吴所畏', '987887117@qq.com', '17601532019', '7c4a8d09ca3762af61e59520943dc26494f8941b', 1, 1, 0, 0),
(15, 'a123456', '0@qq.com', '17601532016', '7c4a8d09ca3762af61e59520943dc26494f8941b', 1, 0, 1608181413, 1608181413);

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
-- 表的索引 `wb_comment`
--
ALTER TABLE `wb_comment`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `wb_fav`
--
ALTER TABLE `wb_fav`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `wb_site`
--
ALTER TABLE `wb_site`
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
  MODIFY `id` int(4) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- 使用表AUTO_INCREMENT `wb_cate`
--
ALTER TABLE `wb_cate`
  MODIFY `id` int(4) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键', AUTO_INCREMENT=4;

--
-- 使用表AUTO_INCREMENT `wb_comment`
--
ALTER TABLE `wb_comment`
  MODIFY `id` int(2) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- 使用表AUTO_INCREMENT `wb_fav`
--
ALTER TABLE `wb_fav`
  MODIFY `id` int(4) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- 使用表AUTO_INCREMENT `wb_site`
--
ALTER TABLE `wb_site`
  MODIFY `id` int(4) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用表AUTO_INCREMENT `wb_user`
--
ALTER TABLE `wb_user`
  MODIFY `id` int(4) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
