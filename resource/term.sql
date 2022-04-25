-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- 主机： 127.0.0.1
-- 生成日期： 2022-04-21 19:15:00
-- 服务器版本： 10.4.22-MariaDB
-- PHP 版本： 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 数据库： `term`
--

-- --------------------------------------------------------

--
-- 表的结构 `album`
--

CREATE TABLE `album` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `rank` int(100) NOT NULL,
  `cover` varchar(200) NOT NULL,
  `score` float UNSIGNED NOT NULL,
  `intro` varchar(2000) NOT NULL,
  `artist` varchar(50) NOT NULL,
  `date` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 转存表中的数据 `album`
--

INSERT INTO `album` (`id`, `name`, `rank`, `cover`, `score`, `intro`, `artist`, `date`) VALUES
(1, 'Fantasy', 1, 'https://i.kfs.io/album/global/987819,1v1/fit/500x500.jpg', 10, 'Fantaxi\" is an album released by Jay Chou on September 14, 2001, featuring 10 songs. The album was produced by Jay Chou. The album title \"Fantasy\" was used because Jay wanted to use music to bring people a whimsical imagination, and the name \"Fantasy\" also reflects Jay\'s consistent musical philosophy - music is fantasy, fantasy is happy!', 'Jay Chou', '2001-09-14'),
(2, 'That’s Why I Gave Up on Music', 2, 'https://e.snmc.io/i/1200/s/d951075710d7c7fe661bb695a86687ad/7627896', 9.8, '\"That\'s Why I Gave Up On Music\" serves as the title song to their first full-length release, serving as the closer and highlight of the whole release. The album itself is solid but leans towards a familiar Japanese rock format where gentle piano melodies wrap around driving guitar and drums. It’s fine, but pluck a random CD off the Tower Records “rock” shelf and you can probably find something that sounds the same. But \"That’s Why I Gave Up On Music\" stands out from the rest. That’s partially because of how the classical and rock touches come together to help give Suis\' vocals a little extra lift. And she makes the most of it, delivering the liveliest hook they’ve created yet and lets it all flow over in the finale, where she just lets her voice go. That ends the song — and the album — on a particularly cathartic note.', 'Yorushika', '2019-04-09'),
(3, '2014 Forest Hills Drive', 3, 'https://m.media-amazon.com/images/I/71v0b7YG+zL._SL1500_.jpg', 9.5, 'The album\'s title is the address of a home in Fayetteville, North Carolina, where Cole lived from his early youth, until 2003. Cole lived at the property with his mother, his brother and his stepfather, and was the location where Cole wrote some of his earliest songs, and decided to pursue a career as a musician. In 2014, Cole bought the house, and was the first home he had purchased. The album\'s title is used to recount Cole\'s upbringing, and the transition from leaving North Carolina to New York; it battles with the transitions that were taken in order to find his success and fame within the music industry. Cole soon put the home up for an \'extremely cheap\' renting price, in the hope that any struggling residents could use it to progress their lives, without having to worry about frequent moving, an experience Cole underwent due to frequent financial struggle', 'J.Cole', '2014-12-09'),
(4, 'Ups and Down', 4, 'https://y.qq.com/music/photo_new/T002R300x300M000000HXeIB1sUqTs.jpg?max_age=2592000', 9.4, 'Ups and Down was released after Spylent was attacked by unreasonable charge. In the album, he talked a lot about his recent depress experience but did not stick to it; Instead, he used tons of wordplay and punchline to improve this album\'s quality.', 'Spylent', '2021-01-30');

-- --------------------------------------------------------

--
-- 表的结构 `category`
--

CREATE TABLE `category` (
  `id` int(10) UNSIGNED NOT NULL,
  `year` int(4) NOT NULL,
  `lang` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 转存表中的数据 `category`
--

INSERT INTO `category` (`id`, `year`, `lang`) VALUES
(1, 2002, 'Chinese'),
(2, 2019, 'Japanese'),
(3, 2014, 'English'),
(4, 2021, 'Chinese');

-- --------------------------------------------------------

--
-- 表的结构 `lyrics`
--

CREATE TABLE `lyrics` (
  `id` int(100) UNSIGNED NOT NULL,
  `album` int(100) UNSIGNED NOT NULL,
  `song` int(100) UNSIGNED NOT NULL,
  `sentence` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 转存表中的数据 `lyrics`
--

INSERT INTO `lyrics` (`id`, `album`, `song`, `sentence`) VALUES
(1, 2, 12, '変わらない風景 浅い正午'),
(2, 2, 12, '高架下、藍二乗、寝転ぶまま'),
(3, 2, 12, '白紙の人生に拍手の音が一つ鳴っている'),
(4, 2, 12, '空っぽな自分を今日も歌っていた'),
(5, 2, 12, '変わらないように'),
(6, 2, 12, '君が主役のプロットを書くノートの中'),
(7, 2, 12, '止まったガス水道 世間もニュースも所詮他人事'),
(8, 2, 12, 'この人生さえほら、インクみたいだ'),
(9, 2, 12, 'あの頃ずっと頭に描いた夢も大人になるほど時効になっていく'),
(10, 2, 12, 'ただ、ただ雲を見上げても'),
(11, 2, 12, '視界は今日も流れるまま'),
(12, 2, 12, '遠く仰いだ夜に花泳ぐ'),
(13, 2, 12, '春と見紛うほどに'),
(14, 2, 12, '君をただ見失うように'),
(15, 2, 12, '転ばないように下を向いた'),
(16, 2, 12, '人生はどうにも妥協で出来てる'),
(17, 2, 12, '心も運命もラブソングも人生も信じない'),
(18, 2, 12, '所詮売れないなら全部が無駄だ'),
(19, 2, 12, 'わざと零した夢で描いた今に寝そべったままで時効を待っている'),
(20, 2, 12, 'ただ、ただ目蓋の裏側'),
(21, 2, 12, '遠く描く君を見たまま'),
(22, 2, 12, 'ノート、薄い夜隅に花泳ぐ'),
(23, 2, 12, '僕の目にまた一つ'),
(24, 2, 12, '人生は妥協の連続なんだ'),
(25, 2, 12, 'そんなこと疾うにわかってたんだ'),
(26, 2, 12, 'エルマ、君なんだよ'),
(27, 2, 12, '君だけが僕の音楽なんだ'),
(28, 2, 12, 'この詩はあと八十字'),
(29, 2, 12, '人生の価値は、終わり方だろうから'),
(30, 2, 12, 'ただ、ただ君だけを描け'),
(31, 2, 12, '視界の藍も滲んだまま'),
(32, 2, 12, '遠く仰いだ空に花泳ぐ'),
(33, 2, 12, 'この目覆う藍二乗'),
(34, 2, 12, 'ただ、ただ'),
(35, 2, 12, '遠く仰いだ空、君が涼む'),
(36, 2, 12, 'ただ夜を泳ぐように'),
(37, 4, 38, '十月的天空像醉汉总喜欢black out'),
(38, 4, 38, '城市里的我在与它合照'),
(39, 4, 38, '回忆的碎片在脑海颠簸'),
(40, 4, 38, '我不是花落 但也想知多少'),
(41, 4, 38, '喜欢节奏 文字 喜欢押韵'),
(42, 4, 38, '年少的我开始用笔说话'),
(43, 4, 38, '一根一根像是装了马达'),
(44, 4, 38, '我的笔在纸上健身可它从不“拉胯”'),
(45, 4, 38, '让我注意脚下'),
(46, 4, 38, '可我只会抬头'),
(47, 4, 38, 'K歌发点remix'),
(48, 4, 38, '写了快一百首'),
(49, 4, 38, '等到时机成熟'),
(50, 4, 38, '上B站来rap咯'),
(51, 4, 38, '来了没有很久'),
(52, 4, 38, '可people把我认得'),
(53, 4, 38, '在起点起跑 但我的终点非终点线'),
(54, 4, 38, '橡胶般的弹性 我像是Mr.路'),
(55, 4, 38, '一杯可乐配上一根铅笔芯'),
(56, 4, 38, 'rubber rubber band like a 橡皮筋'),
(57, 4, 38, '雪都下得晚 来点summer味'),
(58, 4, 38, '前个后个晃得像个木马 木马'),
(59, 4, 38, '一杯可乐配上一根铅笔芯'),
(60, 4, 38, 'rubber rubber band like a 橡皮筋'),
(61, 4, 38, '雪都下得晚 来点summer味'),
(62, 4, 38, '前个后个晃得像个木马 木马'),
(63, 4, 38, '我特别盲目'),
(64, 4, 38, '名气的河流上天它扔给了我条船渡'),
(65, 4, 38, '我顺着水势加大马力沿着这条航路'),
(66, 4, 38, '警觉着水能载舟但它也能把这船覆'),
(67, 4, 38, '我的“Money”不够“Young”'),
(68, 4, 38, '“Records”也不够“Shady”'),
(69, 4, 38, '“After” regular “Math” 我也没有选很多的AP'),
(70, 4, 38, 'Spylent你够真实吗？我问我内心'),
(71, 4, 38, '得到化妆师一样的回答'),
(72, 4, 38, '它说“眉笔”'),
(73, 4, 38, '我不停pushing着myself 掐着腰 创造着新歌'),
(74, 4, 38, '树大嘛肯定会招风 我也收到些批评了'),
(75, 4, 38, '我说我是天花板之上 他们都气的不行了'),
(76, 4, 38, '我说地球是圆的 他们说 “不 是平的”'),
(77, 4, 38, '虽然我——'),
(78, 4, 38, '在起点起跑 但我的终点非终点线'),
(79, 4, 38, '橡胶般的弹性 我像是Mr.路'),
(80, 4, 38, '一杯可乐配上一根铅笔芯'),
(81, 4, 38, 'rubber rubber band like a 橡皮筋'),
(82, 4, 38, '雪都下得晚 来点summer味'),
(83, 4, 38, '前个后个晃得像个木马 木马'),
(84, 4, 38, '一杯可乐配上一根铅笔芯'),
(85, 4, 38, 'rubber rubber band like a 橡皮筋'),
(86, 4, 38, '雪都下得晚 来点summer味'),
(87, 4, 38, '前个后个晃得像个木马 木马'),
(88, 4, 38, '太阳下山 落下帷幕'),
(89, 4, 38, '几只苍蝇在夕阳下飞舞'),
(90, 4, 38, '回到现实 踏上归途'),
(91, 4, 38, '万家灯火像天空的泪珠'),
(92, 4, 38, '进了家门把虚伪的仪容撤下'),
(93, 4, 38, '忘记所有白天怕的东西'),
(94, 4, 38, '走进我的世界伴着霓虹作画'),
(95, 4, 38, '所有bullshit全部化作红泥'),
(96, 4, 38, '这边加点点缀 那边加点色'),
(97, 4, 38, '菜单没有固定 I’mma be the chef'),
(98, 4, 38, '夜幕里打开香槟'),
(99, 4, 38, '但是不喷王以太'),
(100, 4, 38, '把我双腿截肢'),
(101, 4, 38, '也不影响我走起来'),
(102, 4, 38, '生活对我拉扯 可我'),
(103, 4, 38, 'bouncing bouncing不会断'),
(104, 4, 38, '一杯可乐配上一根铅笔芯'),
(105, 4, 38, 'rubber rubber band like a 橡皮筋'),
(106, 4, 38, '雪都下得晚 来点summer味'),
(107, 4, 38, '前个后个晃得像个木马 木马'),
(108, 4, 38, '一杯可乐配上一根铅笔芯'),
(109, 4, 38, 'rubber rubber band like a 橡皮筋'),
(110, 4, 38, '雪都下得晚 来点summer味'),
(111, 4, 38, '前个后个晃得像个木马 木马'),
(112, 2, 24, '考えたってわからないし'),
(113, 2, 24, '青空の下、君を待った'),
(114, 2, 24, '風が吹いた正午、昼下がりを抜け出す想像'),
(115, 2, 24, 'ねぇ、これからどうなるんだろうね'),
(116, 2, 24, '進め方教わらないんだよ'),
(117, 2, 24, '君の目を見た　何も言えず僕は歩いた'),
(118, 2, 24, '考えたってわからないし'),
(119, 2, 24, '青春なんてつまらないし'),
(120, 2, 24, '辞めた筈のピアノ、机を弾く癖が抜けない'),
(121, 2, 24, 'ねぇ、将来何してるだろうね'),
(122, 2, 24, '音楽はしてないといいね'),
(123, 2, 24, '困らないでよ'),
(124, 2, 24, '心の中に一つ線を引いても'),
(125, 2, 24, 'どうしても消えなかった'),
(126, 2, 24, '今更なんだから'),
(127, 2, 24, 'なぁ、もう思い出すな'),
(128, 2, 24, '間違ってるんだよ'),
(129, 2, 24, 'わかってないよ、あんたら人間も'),
(130, 2, 24, '本当も愛も世界も苦しさも人生もどうでもいいよ'),
(131, 2, 24, '正しいかどうか知りたいのだって防衛本能だ'),
(132, 2, 24, '考えたんだ'),
(133, 2, 24, 'あんたのせいだ'),
(134, 2, 24, '考えたってわからないが、本当に年老いたくないんだ'),
(135, 2, 24, 'いつか死んだらって'),
(136, 2, 24, '思うだけで胸が空っぽになるんだ'),
(137, 2, 24, '将来何してるだろうって'),
(138, 2, 24, '大人になったらわかったよ'),
(139, 2, 24, '何もしてないさ'),
(140, 2, 24, '幸せな顔した人が憎いのは'),
(141, 2, 24, 'どう割り切ったらいいんだ'),
(142, 2, 24, '満たされない頭の奥の'),
(143, 2, 24, '化け物みたいな劣等感'),
(144, 2, 24, '間違ってないよ'),
(145, 2, 24, 'なぁ、何だかんだあんたら人間だ'),
(146, 2, 24, '愛も救いも優しさも根拠がないなんて'),
(147, 2, 24, '気味が悪いよ'),
(148, 2, 24, 'ラブソングなんかが痛いのだって防衛本能だ'),
(149, 2, 24, 'どうでもいいか'),
(150, 2, 24, 'あんたのせいだ'),
(151, 2, 24, '考えたってわからないし'),
(152, 2, 24, '生きてるだけでも苦しいし'),
(153, 2, 24, '音楽とか儲からないし'),
(154, 2, 24, '歌詞とか適当でもいいよ'),
(155, 2, 24, 'どうでもいいんだ'),
(156, 2, 24, '間違ってないだろ'),
(157, 2, 24, '間違ってないよな'),
(158, 2, 24, '間違ってないよな'),
(159, 2, 24, '間違ってるんだよ　わかってるんだ'),
(160, 2, 24, 'あんたら人間も'),
(161, 2, 24, '本当も愛も救いも優しさも人生も'),
(162, 2, 24, 'どうでもいいんだ'),
(163, 2, 24, '正しい答えが言えないのだって防衛本能だ'),
(164, 2, 24, 'どうでもいいや'),
(165, 2, 24, 'あんたのせいだ'),
(166, 2, 24, '僕だって信念があった'),
(167, 2, 24, '今じゃ塵みたいな想いだ'),
(168, 2, 24, '何度でも君を書いた'),
(169, 2, 24, '売れることこそがどうでもよかったんだ'),
(170, 2, 24, '本当だ　本当なんだ　昔はそうだった'),
(171, 2, 24, 'だから僕は'),
(172, 2, 24, 'だから僕は音楽を辞めた'),
(175, 1, 1, '古巴比伦王颁布了汉摩拉比法典，刻在黑色的玄武岩，距今已经三千七百多年。'),
(176, 1, 1, '你在橱窗前，凝视碑文的字眼，我却在旁静静欣赏你那张我深爱的脸。'),
(177, 1, 1, '祭司神殿征战弓箭是谁的从前，喜欢在人潮中你只属於我的那画面。'),
(178, 1, 1, '经过苏美女神身边，我以女神之名许愿，思念像底格里斯河般的漫延。'),
(179, 1, 1, '当古文明只剩下难解的语言，传说就成了永垂不朽的诗篇。'),
(180, 1, 1, '我给你的爱写在西元前，深埋在美索不达米亚平原。'),
(181, 1, 1, '几十个世纪后出土发现，泥板上的字迹依然清晰可见。'),
(182, 1, 1, '我给你的爱写在西元前，深埋在美索不达米亚平原。'),
(183, 1, 1, '用楔形文字刻下了永远，那已风化千年的誓言，一切又重演。'),
(184, 1, 1, '祭司神殿征战弓箭是谁的从前，喜欢在人潮中你只属於我的那画面。'),
(185, 1, 1, '经过苏美女神身边，我以女神之名许愿。'),
(186, 1, 1, '思念像底格里斯河般的漫延，当古文明只剩下难解的语言。'),
(187, 1, 1, '传说就成了永垂不朽的诗篇，我给你的爱写在西元前。'),
(188, 1, 1, '深埋在美索不达米亚平原，几十个世纪后出土发现，泥板上的字迹依然清晰可见。'),
(189, 1, 1, '我给你的爱写在西元前，深埋在美索不达米亚平原。'),
(190, 1, 1, '用楔形文字刻下了永远，那已风化千年的誓言，一切又重演。'),
(191, 1, 1, '我感到很疲倦离家乡还是很远，害怕再也不能回到你身边。'),
(192, 1, 1, '我给你的爱写在西元前，深埋在美索不达米亚平原。'),
(193, 1, 1, '几十个世纪后出土发现，泥板上的字迹依然清晰可见。'),
(194, 1, 1, '我给你的爱写在西元前，深埋在美索不达米亚平原。'),
(195, 1, 1, '用楔形文字刻下了永远，那已风化千年的誓言。'),
(196, 1, 1, '爱在西元前，爱在西元前。');

-- --------------------------------------------------------

--
-- 表的结构 `occasion`
--

CREATE TABLE `occasion` (
  `id` int(10) UNSIGNED NOT NULL,
  `number` int(10) NOT NULL,
  `place` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 转存表中的数据 `occasion`
--

INSERT INTO `occasion` (`id`, `number`, `place`) VALUES
(1, 1, 'morning'),
(2, 1, 'driving'),
(3, 1, 'travel'),
(4, 2, 'morning'),
(5, 2, 'school'),
(6, 2, 'romantic'),
(7, 2, 'sad'),
(8, 3, 'night'),
(9, 3, 'driving'),
(10, 3, 'night'),
(11, 3, 'uplifting'),
(12, 4, 'night'),
(13, 4, 'touching'),
(14, 4, 'uplifting'),
(15, 4, 'think');

-- --------------------------------------------------------

--
-- 表的结构 `songs`
--

CREATE TABLE `songs` (
  `id` int(100) UNSIGNED NOT NULL,
  `list_number` int(100) UNSIGNED NOT NULL,
  `song` varchar(100) NOT NULL,
  `song_in_album` int(100) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 转存表中的数据 `songs`
--

INSERT INTO `songs` (`id`, `list_number`, `song`, `song_in_album`) VALUES
(1, 1, '爱在西元前', 1),
(2, 1, '爸我回来了', 2),
(3, 1, '简单爱', 3),
(4, 1, '忍者', 4),
(5, 1, '开不了口', 5),
(6, 1, '上海一九四三', 6),
(7, 1, '对不起', 7),
(8, 1, '威廉古堡', 8),
(9, 1, '双截棍', 9),
(10, 1, '安静', 10),
(11, 2, '8/31', 1),
(12, 2, '藍二乗 (Deep Indigo)', 2),
(13, 2, '八月、某、月明かり (August, A Certain Person, Moonlight)', 3),
(14, 2, '詩書きとコーヒー (Songwriting and Coffee)', 4),
(15, 2, '7/13', 5),
(16, 2, '踊ろうぜ (Let\'s Dance)', 6),
(17, 2, '六月は雨上がりの街を書く', 7),
(18, 2, '五月は花緑青の窓辺から', 8),
(19, 2, '夜紛い', 9),
(20, 2, '5/6', 10),
(21, 2, 'パレード (Parade)', 11),
(22, 2, 'エルマ (Elma)', 12),
(23, 2, '4/10', 13),
(24, 2, 'だから僕は音楽を辞めた (That\'s Why I Gave Up on Music)', 14),
(25, 3, 'Intro', 1),
(26, 3, 'January 28th', 2),
(27, 3, 'Wet Dreamz', 3),
(28, 3, '03\' Adolescence', 4),
(29, 3, 'A Tale of 2 Citiez', 5),
(30, 3, 'Fire Squad', 6),
(31, 3, 'St. Tropez', 7),
(32, 3, 'G.O.M.D', 8),
(33, 3, 'No Role Modelz', 9),
(34, 3, 'Hello', 10),
(35, 3, 'Apparently', 11),
(36, 3, 'Love Yourz', 12),
(37, 3, 'Note to Self', 13),
(38, 4, '橡皮筋', 1),
(39, 4, '表达者', 2),
(40, 4, '沉浮', 3),
(41, 4, '咽喉药', 4);

-- --------------------------------------------------------

--
-- 表的结构 `style`
--

CREATE TABLE `style` (
  `id` int(10) UNSIGNED NOT NULL,
  `number` int(10) UNSIGNED NOT NULL,
  `class` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 转存表中的数据 `style`
--

INSERT INTO `style` (`id`, `number`, `class`) VALUES
(1, 1, 'Pop'),
(3, 1, 'Hip-hop'),
(4, 2, 'Pop'),
(5, 2, 'Rock'),
(6, 3, 'Hip-hop'),
(7, 3, 'Jazz'),
(8, 4, 'Hip-hop');

--
-- 转储表的索引
--

--
-- 表的索引 `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `lyrics`
--
ALTER TABLE `lyrics`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `occasion`
--
ALTER TABLE `occasion`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `songs`
--
ALTER TABLE `songs`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `style`
--
ALTER TABLE `style`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `album`
--
ALTER TABLE `album`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- 使用表AUTO_INCREMENT `category`
--
ALTER TABLE `category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- 使用表AUTO_INCREMENT `lyrics`
--
ALTER TABLE `lyrics`
  MODIFY `id` int(100) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=197;

--
-- 使用表AUTO_INCREMENT `occasion`
--
ALTER TABLE `occasion`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- 使用表AUTO_INCREMENT `songs`
--
ALTER TABLE `songs`
  MODIFY `id` int(100) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- 使用表AUTO_INCREMENT `style`
--
ALTER TABLE `style`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
