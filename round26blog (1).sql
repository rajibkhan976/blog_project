-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 24, 2016 at 06:58 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `round26blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
`id` int(3) NOT NULL,
  `cname` varchar(30) NOT NULL,
  `cdescription` varchar(80) NOT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `cname`, `cdescription`, `created`) VALUES
(1, 'মুভি রিভিউ', 'all film review', '2016-01-24 16:22:49'),
(2, 'গল্প', '', '2016-01-24 16:22:49'),
(3, 'কবিতা', '', '2016-01-24 16:25:01'),
(4, 'রাজনীতি', '', '2016-01-24 16:25:01'),
(5, 'ক্রিকেট', '', '2016-01-24 16:25:01'),
(6, 'রমজানে সংযম ও জীবনযাত্রা', '', '2016-01-24 16:25:01'),
(7, 'খাদ্যে রাসায়নিকের ব্যবহার', '', '2016-01-24 16:25:01'),
(8, 'ফুটবল বিশ্বকাপ', '', '2016-01-24 16:25:01'),
(9, 'উচ্চশিক্ষা', '', '2016-01-24 16:25:01'),
(10, 'ভ্রমণ ব্লগ', '', '2016-01-24 16:25:01'),
(11, 'ছবি ব্লগ', '', '2016-01-24 16:25:01'),
(12, 'ঈদ', '', '2016-01-24 16:25:01'),
(13, 'ইন্টারনেট', '', '2016-01-24 16:26:16'),
(14, 'ডায়াবেটিস', '', '2016-01-24 16:26:16'),
(15, 'ভূমিকম্প', '', '2016-01-24 16:26:16'),
(18, 'WEB DESIGN', '', '2016-01-24 16:26:54'),
(19, 'Android', '', '2016-01-24 16:26:54'),
(20, 'Others', '', '2016-01-24 16:28:50');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE IF NOT EXISTS `comments` (
`id` int(11) NOT NULL,
  `postsid` int(11) NOT NULL,
  `userid` int(5) NOT NULL,
  `username` varchar(80) NOT NULL,
  `useremail` varchar(80) NOT NULL,
  `usercomment` text NOT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `userip` varchar(16) NOT NULL,
  `useragent` varchar(200) NOT NULL,
  `approved` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE IF NOT EXISTS `posts` (
`id` int(11) NOT NULL,
  `posttitle` varchar(120) NOT NULL,
  `postdesc` text NOT NULL,
  `posttags` varchar(80) NOT NULL,
  `postimage` varchar(120) NOT NULL,
  `postcat` varchar(40) NOT NULL,
  `userid` int(5) NOT NULL,
  `userip` varchar(16) NOT NULL,
  `useragent` varchar(100) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `posttitle`, `postdesc`, `posttags`, `postimage`, `postcat`, `userid`, `userip`, `useragent`, `active`, `created`, `updated`) VALUES
(1, 'my first post', 'this is my post.this is my post.this is my post', 'PHP', '1452776163_HGimage.png', '1', 5, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.106 Safa', 1, '2016-01-14 18:56:03', '0000-00-00 00:00:00'),
(2, 'another blog title', 'some content about this blog', 'JavaScript', '1452776736_SAM_0195.JPG', '1', 1, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.106 Safa', 1, '2016-01-14 19:05:36', '0000-00-00 00:00:00'),
(3, '১৬০ কোটি ডলারের লটারি জয়', 'অবশেষে কপাল খুলে গেল যুক্তরাষ্ট্রের ক্যালিফোর্নিয়ার কোনো এক বাসিন্দার। নাম প্রকাশ না করা এই ব্যক্তি দেশটির ইতিহাসে সবচেয়ে বেশি মূল্যমানের লটারির ড্রতে জয়ী হয়েছেন। পেতে যাচ্ছেন প্রায় ১৬০ কোটি ডলার।\r\nকর্মকর্তাদের বরাত দিয়ে বার্তা সংস্থা এএফপি আজ বৃহস্পতিবার এ কথা জানিয়েছে। গতকাল বুধবার অনুষ্ঠিত এই লটারির ড্র টেলিভিশনের পর্দায় দেখেছেন লাখো মানুষ। এ থেকে বোঝা যায়, এই ড্র ঘিরে কী বিপুল উন্মাদনা ছিল দেশটিতে।\r\nপাওয়ারবল সংখ্যা ১০-সহ এবারের জয়ী নাম্বার ৮, ২৭, ৩৪, ৪ ও ১৯।\r\nক্যালিফোর্নিয়া লটারি টুইটে বলা হয়, &lsquo;ক্যালিফোর্নিয়ায় আমরা একজনকে বিজয়ী হিসেবে পেয়েছি। এই নম্বরের একটি টিকিট চিনো হিলসে বিক্রি হয়েছে। এখন অন্য অঙ্গরাজ্যগুলো থেকে ফল পাওয়ার অপেক্ষা করছি আমরা।&rsquo;\r\nগত ৭ নভেম্বর থেকে চার কোটি ডলার মূল্যমানের এই লটারির যাত্রা শুরু। এর মধ্যে ২০টির মতো ড্র হলেও কোনো জয়ী পাওয়া যায়নি। তাই যতই দিন যাচ্ছিল, এই লটারি ঘিরে মানুষের আগ্রহ বাড়ছিল। মানুষের আগ্রহের সঙ্গে পাল্লা দিয়ে বাড়ছিল বিক্রি। রীতিমতো লটারি-জ্বরে আক্রান্ত হয়েছিল মার্কিনিরা। লটারি জেতার আশায় ক্রেতারা হুমড়ি খেয়ে পড়েছিলেন দোকানগুলোতে। দোকানের বাইরে ছিল ক্রেতাদের দীর্ঘ সারি।\r\nগত শনিবারও এই লটারির ড্র হয়। তখন এর মূল্যমান ছিল ৯০ কোটি ডলার। সেদিন কোনো জয়ী না পাওয়ায় বুধবার আবার ড্রয়ের দিন নির্ধারণ করা হয়। এবার এর মূল্যমান বেড়ে প্রায় ১৬০ কোটি ডলার হয়ে যায়। যদিও তখন মনে করা হয়েছিল, লটারির মূল্যমান বেড়ে হয়তো ১৩০ কোটি ডলারের মতো হতে পারে। কিন্তু বিক্রি বেড়ে যাওয়ায় প্রত্যাশার চেয়েও বেশি মূল্যমান হয়ে যায় এই লটারির, যা যুক্তরাষ্ট্রের ইতিহাসে রেকর্ড সৃষ্টি করে।\r\n\r\nলটারিটি পাওয়ারবল গেম গ্রুপের। এর প্রধান গ্যারি গ্রিফ বলেন, &lsquo;আমাদের প্রত্যাশার চেয়ে অনেক বেশি বিক্রি হয়েছে এই লটারি।&rsquo;\r\n\r\nজয়ী ব্যক্তি কর পরিশোধের পর একবারে এই অর্থ তুলে নিতে পারবেন বা ২৯ বছর ধরে বার্ষিক কিস্তিতে এই অর্থ তুলতে পারবেন।\r\n\r\nযুক্তরাষ্ট্রের ৫০টি অঙ্গরাজ্যের মধ্যে ৪৪টিতে এবং তিনটি সীমানায় এই ড্র অনুষ্ঠিত হয়ে থাকে। প্রতি বুধ ও শনিবার স্থানীয় সময় রাত ১০টা ৫৯ মিনিটে এই ড্র অনুষ্ঠিত হয়।', 'MySQL', '1452776952_1.jpg', '1', 1, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.106 Safa', 1, '2016-01-14 19:09:12', '0000-00-00 00:00:00'),
(4, 'my first post', 'i am new to this site.', 'mamun, new, php', '1453627861_my first post.jpg', 'mamun, new, php', 0, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.82 Safar', 1, '2016-01-24 15:31:01', '2016-01-24 15:31:01'),
(5, 'my second post', 'this is my second post', 'heart', '1453628062_my second post.jpg', 'heart', 5, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.82 Safar', 1, '2016-01-24 15:34:22', '2016-01-24 15:34:22'),
(6, 'my second post', 'this is my second post', 'heart', '1453628111_my second post.jpg', 'heart', 5, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.82 Safar', 1, '2016-01-24 15:35:11', '2016-01-24 15:35:11'),
(7, 'my second post', 'this is my second post', 'heart', '1453628144_my second post.jpg', 'heart', 5, '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.82 Safar', 1, '2016-01-24 15:35:44', '2016-01-24 15:35:44');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE IF NOT EXISTS `tags` (
`id` int(3) NOT NULL,
  `tagname` varchar(30) NOT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `tagname`, `created`) VALUES
(1, 'PHP', '2016-01-20 19:02:57'),
(2, 'MYSQL', '2016-01-20 19:02:57');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
`id` int(5) NOT NULL,
  `useremail` varchar(60) NOT NULL,
  `password` varchar(40) NOT NULL,
  `screenname` varchar(60) NOT NULL,
  `hash` varchar(40) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `useremail`, `password`, `screenname`, `hash`, `status`, `created`) VALUES
(1, 'idbbisew@gmail.com', '9e8eb7bf8e25501946f21113045aa8807e3edc46', 'IDB BISEW', '941dc46a51943aefe608232668f15113dde77f68', 1, '2016-01-14 15:13:21'),
(4, 'manju@gmail.com', 'c3994a78c038aedd0d9bf62695d869b24eca00a1', 'manzu26068878', '1f29f1f5c7284689f8c8f6f7c1c8b3951d271a0b', 0, '2016-01-14 05:02:25'),
(5, 'asamamun@gmail.com', '8cb2237d0679ca88db6464eac60da96345513964', 'Abdullah Al-mamun', '73e6b33900d1b3e85702f4b00f59e9bf8c38d786', 4, '2016-01-24 15:20:22');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `useremail` (`useremail`), ADD UNIQUE KEY `screenname` (`screenname`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
MODIFY `id` int(3) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
MODIFY `id` int(3) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
MODIFY `id` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
