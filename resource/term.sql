-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- 主机： 127.0.0.1
-- 生成日期： 2022-04-25 21:13:06
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
-- 表的结构 `comments`
--

CREATE TABLE `comments` (
  `id` int(100) UNSIGNED NOT NULL,
  `comment` varchar(500) DEFAULT NULL,
  `lyric` int(200) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 转存表中的数据 `comments`
--

INSERT INTO `comments` (`id`, `comment`, `lyric`) VALUES
(8, '&quot;蓝二乘&quot; can be translated directly to the square of blue. The reason why it is square is that the main character looks at the sky with tears, which created a double image', 2),
(9, 'blue in Japanese pronunciation is &quot;i i&quot;. i^2, that is why it is &quot;square of blue&quot;!', 2),
(10, 'translating &quot;蓝二乘&quot; in Japanese pronunciation directly into English is &quot;I need you&quot;', 2),
(11, 'プロット means &quot;plot&quot;. In this album&#039;s background story, the main character has a note that he used to keep inspiration', 6),
(12, 'according to the background story, 03/14, Eimy, the main character, lost his job and his house&#039;s landowner stopped providing electricity and water because he cannot pay.', 7),
(13, 'In &quot;Hitchcock&quot;, another song that was included in Yorushika&#039;s previous album, there is a similar sentence that said, &quot;The only thing I want to do in my all life is only want to watch the sky.&quot;', 10),
(14, '&quot;目蓋の裏側&quot; means eye&#039;s inside. When we close our eyes, we can only see black. This sentence means that &quot;every time I close my eyes, I would see your face&quot;', 20),
(15, 'In the album&#039;s background story, Eimy, the main character, likes to use blue ink to write songs. So &quot;square of blue&quot; can also means the blue of ink times the blue of sky he saw during creation', 2),
(16, 'Before J. Cole gets into the topic of not having any role models to look up to when he was growing up, he discusses the role models he did have.', 197),
(17, 'Cole’s role model as a child was a fictional character from TV.', 197),
(18, 'the character of Uncle Phil from the TV series ‘The Fresh Prince of Bel-Air’ (1990 – 1996).', 197),
(19, 'Cole pays tribute to the actor who played Uncle Phil – James Avery, who passed away on December 13, 2013', 197),
(20, 'Most likely MLK was not an influential figure in Cole&#039;s life during his childhood, but he was most likely an influence when Cole was a teenager.', 201),
(21, 'Cole recognizes that there are respectable women as well as golddiggers in this city, especially because of the city&#039;s notorious reputation for the limelight.', 205),
(22, 'Cole adds that the ideologies of MLK Jr. fit perfectly with what his record label, Dreamville, stands for.', 201),
(23, 'The hook is an interpolation of Project Pat’s 2001 single “Don’t Save Her.”', 207),
(24, 'In the context of the song, ‘saving’ someone refers to taking them under your love and care in hopes that they will stop sacrificing themselves for fame and fortune.', 207),
(25, 'The Trina mentioned here is a reference to the singer Trina, who claimed herself to be the baddest b*tch in her debut studio album titled the same.', 213),
(26, 'He looks to the TV series &#039;Fresh Prince of Bel-Air&#039; again for inspiration. In the TV show, Aunt Vivian was played by two actresses.', 231),
(27, 'Cole says she prefers the former, who is generally acclaimed to have portrayed a stronger role on the show.', 231),
(28, 'Cole also looks to the power couple of Hollywood, Will Smith and Jada Smith as the kind of relationship he wants for himself.', 232),
(29, 'wdhoiawdldwknd', 175);

-- --------------------------------------------------------

--
-- 表的结构 `lyrics`
--

CREATE TABLE `lyrics` (
  `id` int(100) UNSIGNED NOT NULL,
  `album` int(100) UNSIGNED NOT NULL,
  `song` int(100) UNSIGNED NOT NULL,
  `sentence` varchar(500) DEFAULT NULL,
  `like_num` int(100) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 转存表中的数据 `lyrics`
--

INSERT INTO `lyrics` (`id`, `album`, `song`, `sentence`, `like_num`) VALUES
(1, 2, 12, '変わらない風景 浅い正午', 0),
(2, 2, 12, '高架下、藍二乗、寝転ぶまま', 12),
(3, 2, 12, '白紙の人生に拍手の音が一つ鳴っている', 1),
(4, 2, 12, '空っぽな自分を今日も歌っていた', 0),
(5, 2, 12, '変わらないように', 0),
(6, 2, 12, '君が主役のプロットを書くノートの中', 0),
(7, 2, 12, '止まったガス水道 世間もニュースも所詮他人事', 0),
(8, 2, 12, 'この人生さえほら、インクみたいだ', 0),
(9, 2, 12, 'あの頃ずっと頭に描いた夢も大人になるほど時効になっていく', 0),
(10, 2, 12, 'ただ、ただ雲を見上げても', 0),
(11, 2, 12, '視界は今日も流れるまま', 0),
(12, 2, 12, '遠く仰いだ夜に花泳ぐ', 0),
(13, 2, 12, '春と見紛うほどに', 0),
(14, 2, 12, '君をただ見失うように', 0),
(15, 2, 12, '転ばないように下を向いた', 0),
(16, 2, 12, '人生はどうにも妥協で出来てる', 0),
(17, 2, 12, '心も運命もラブソングも人生も信じない', 0),
(18, 2, 12, '所詮売れないなら全部が無駄だ', 0),
(19, 2, 12, 'わざと零した夢で描いた今に寝そべったままで時効を待っている', 0),
(20, 2, 12, 'ただ、ただ目蓋の裏側', 0),
(21, 2, 12, '遠く描く君を見たまま', 0),
(22, 2, 12, 'ノート、薄い夜隅に花泳ぐ', 0),
(23, 2, 12, '僕の目にまた一つ', 0),
(24, 2, 12, '人生は妥協の連続なんだ', 0),
(25, 2, 12, 'そんなこと疾うにわかってたんだ', 0),
(26, 2, 12, 'エルマ、君なんだよ', 0),
(27, 2, 12, '君だけが僕の音楽なんだ', 0),
(28, 2, 12, 'この詩はあと八十字', 0),
(29, 2, 12, '人生の価値は、終わり方だろうから', 0),
(30, 2, 12, 'ただ、ただ君だけを描け', 0),
(31, 2, 12, '視界の藍も滲んだまま', 0),
(32, 2, 12, '遠く仰いだ空に花泳ぐ', 0),
(33, 2, 12, 'この目覆う藍二乗', 0),
(34, 2, 12, 'ただ、ただ', 0),
(35, 2, 12, '遠く仰いだ空、君が涼む', 0),
(36, 2, 12, 'ただ夜を泳ぐように', 0),
(37, 4, 38, '十月的天空像醉汉总喜欢black out', 0),
(38, 4, 38, '城市里的我在与它合照', 0),
(39, 4, 38, '回忆的碎片在脑海颠簸', 0),
(40, 4, 38, '我不是花落 但也想知多少', 0),
(41, 4, 38, '喜欢节奏 文字 喜欢押韵', 0),
(42, 4, 38, '年少的我开始用笔说话', 0),
(43, 4, 38, '一根一根像是装了马达', 0),
(44, 4, 38, '我的笔在纸上健身可它从不“拉胯”', 0),
(45, 4, 38, '让我注意脚下', 0),
(46, 4, 38, '可我只会抬头', 0),
(47, 4, 38, 'K歌发点remix', 0),
(48, 4, 38, '写了快一百首', 0),
(49, 4, 38, '等到时机成熟', 0),
(50, 4, 38, '上B站来rap咯', 0),
(51, 4, 38, '来了没有很久', 0),
(52, 4, 38, '可people把我认得', 0),
(53, 4, 38, '在起点起跑 但我的终点非终点线', 0),
(54, 4, 38, '橡胶般的弹性 我像是Mr.路', 0),
(55, 4, 38, '一杯可乐配上一根铅笔芯', 0),
(56, 4, 38, 'rubber rubber band like a 橡皮筋', 0),
(57, 4, 38, '雪都下得晚 来点summer味', 0),
(58, 4, 38, '前个后个晃得像个木马 木马', 0),
(59, 4, 38, '一杯可乐配上一根铅笔芯', 0),
(60, 4, 38, 'rubber rubber band like a 橡皮筋', 0),
(61, 4, 38, '雪都下得晚 来点summer味', 0),
(62, 4, 38, '前个后个晃得像个木马 木马', 0),
(63, 4, 38, '我特别盲目', 0),
(64, 4, 38, '名气的河流上天它扔给了我条船渡', 0),
(65, 4, 38, '我顺着水势加大马力沿着这条航路', 0),
(66, 4, 38, '警觉着水能载舟但它也能把这船覆', 0),
(67, 4, 38, '我的“Money”不够“Young”', 0),
(68, 4, 38, '“Records”也不够“Shady”', 0),
(69, 4, 38, '“After” regular “Math” 我也没有选很多的AP', 0),
(70, 4, 38, 'Spylent你够真实吗？我问我内心', 0),
(71, 4, 38, '得到化妆师一样的回答', 0),
(72, 4, 38, '它说“眉笔”', 0),
(73, 4, 38, '我不停pushing着myself 掐着腰 创造着新歌', 0),
(74, 4, 38, '树大嘛肯定会招风 我也收到些批评了', 0),
(75, 4, 38, '我说我是天花板之上 他们都气的不行了', 0),
(76, 4, 38, '我说地球是圆的 他们说 “不 是平的”', 0),
(77, 4, 38, '虽然我——', 0),
(78, 4, 38, '在起点起跑 但我的终点非终点线', 0),
(79, 4, 38, '橡胶般的弹性 我像是Mr.路', 0),
(80, 4, 38, '一杯可乐配上一根铅笔芯', 0),
(81, 4, 38, 'rubber rubber band like a 橡皮筋', 0),
(82, 4, 38, '雪都下得晚 来点summer味', 0),
(83, 4, 38, '前个后个晃得像个木马 木马', 0),
(84, 4, 38, '一杯可乐配上一根铅笔芯', 0),
(85, 4, 38, 'rubber rubber band like a 橡皮筋', 0),
(86, 4, 38, '雪都下得晚 来点summer味', 0),
(87, 4, 38, '前个后个晃得像个木马 木马', 0),
(88, 4, 38, '太阳下山 落下帷幕', 0),
(89, 4, 38, '几只苍蝇在夕阳下飞舞', 0),
(90, 4, 38, '回到现实 踏上归途', 0),
(91, 4, 38, '万家灯火像天空的泪珠', 0),
(92, 4, 38, '进了家门把虚伪的仪容撤下', 0),
(93, 4, 38, '忘记所有白天怕的东西', 0),
(94, 4, 38, '走进我的世界伴着霓虹作画', 0),
(95, 4, 38, '所有bullshit全部化作红泥', 0),
(96, 4, 38, '这边加点点缀 那边加点色', 0),
(97, 4, 38, '菜单没有固定 I’mma be the chef', 0),
(98, 4, 38, '夜幕里打开香槟', 0),
(99, 4, 38, '但是不喷王以太', 0),
(100, 4, 38, '把我双腿截肢', 0),
(101, 4, 38, '也不影响我走起来', 0),
(102, 4, 38, '生活对我拉扯 可我', 0),
(103, 4, 38, 'bouncing bouncing不会断', 0),
(104, 4, 38, '一杯可乐配上一根铅笔芯', 0),
(105, 4, 38, 'rubber rubber band like a 橡皮筋', 0),
(106, 4, 38, '雪都下得晚 来点summer味', 0),
(107, 4, 38, '前个后个晃得像个木马 木马', 0),
(108, 4, 38, '一杯可乐配上一根铅笔芯', 0),
(109, 4, 38, 'rubber rubber band like a 橡皮筋', 0),
(110, 4, 38, '雪都下得晚 来点summer味', 0),
(111, 4, 38, '前个后个晃得像个木马 木马', 0),
(112, 2, 24, '考えたってわからないし', 0),
(113, 2, 24, '青空の下、君を待った', 0),
(114, 2, 24, '風が吹いた正午、昼下がりを抜け出す想像', 0),
(115, 2, 24, 'ねぇ、これからどうなるんだろうね', 0),
(116, 2, 24, '進め方教わらないんだよ', 0),
(117, 2, 24, '君の目を見た　何も言えず僕は歩いた', 0),
(118, 2, 24, '考えたってわからないし', 0),
(119, 2, 24, '青春なんてつまらないし', 0),
(120, 2, 24, '辞めた筈のピアノ、机を弾く癖が抜けない', 0),
(121, 2, 24, 'ねぇ、将来何してるだろうね', 0),
(122, 2, 24, '音楽はしてないといいね', 0),
(123, 2, 24, '困らないでよ', 0),
(124, 2, 24, '心の中に一つ線を引いても', 0),
(125, 2, 24, 'どうしても消えなかった', 0),
(126, 2, 24, '今更なんだから', 0),
(127, 2, 24, 'なぁ、もう思い出すな', 0),
(128, 2, 24, '間違ってるんだよ', 0),
(129, 2, 24, 'わかってないよ、あんたら人間も', 0),
(130, 2, 24, '本当も愛も世界も苦しさも人生もどうでもいいよ', 0),
(131, 2, 24, '正しいかどうか知りたいのだって防衛本能だ', 0),
(132, 2, 24, '考えたんだ', 0),
(133, 2, 24, 'あんたのせいだ', 0),
(134, 2, 24, '考えたってわからないが、本当に年老いたくないんだ', 0),
(135, 2, 24, 'いつか死んだらって', 0),
(136, 2, 24, '思うだけで胸が空っぽになるんだ', 0),
(137, 2, 24, '将来何してるだろうって', 0),
(138, 2, 24, '大人になったらわかったよ', 0),
(139, 2, 24, '何もしてないさ', 0),
(140, 2, 24, '幸せな顔した人が憎いのは', 0),
(141, 2, 24, 'どう割り切ったらいいんだ', 0),
(142, 2, 24, '満たされない頭の奥の', 0),
(143, 2, 24, '化け物みたいな劣等感', 0),
(144, 2, 24, '間違ってないよ', 0),
(145, 2, 24, 'なぁ、何だかんだあんたら人間だ', 0),
(146, 2, 24, '愛も救いも優しさも根拠がないなんて', 0),
(147, 2, 24, '気味が悪いよ', 0),
(148, 2, 24, 'ラブソングなんかが痛いのだって防衛本能だ', 0),
(149, 2, 24, 'どうでもいいか', 0),
(150, 2, 24, 'あんたのせいだ', 0),
(151, 2, 24, '考えたってわからないし', 0),
(152, 2, 24, '生きてるだけでも苦しいし', 0),
(153, 2, 24, '音楽とか儲からないし', 0),
(154, 2, 24, '歌詞とか適当でもいいよ', 0),
(155, 2, 24, 'どうでもいいんだ', 0),
(156, 2, 24, '間違ってないだろ', 0),
(157, 2, 24, '間違ってないよな', 0),
(158, 2, 24, '間違ってないよな', 0),
(159, 2, 24, '間違ってるんだよ　わかってるんだ', 0),
(160, 2, 24, 'あんたら人間も', 0),
(161, 2, 24, '本当も愛も救いも優しさも人生も', 0),
(162, 2, 24, 'どうでもいいんだ', 0),
(163, 2, 24, '正しい答えが言えないのだって防衛本能だ', 0),
(164, 2, 24, 'どうでもいいや', 0),
(165, 2, 24, 'あんたのせいだ', 0),
(166, 2, 24, '僕だって信念があった', 0),
(167, 2, 24, '今じゃ塵みたいな想いだ', 0),
(168, 2, 24, '何度でも君を書いた', 0),
(169, 2, 24, '売れることこそがどうでもよかったんだ', 0),
(170, 2, 24, '本当だ　本当なんだ　昔はそうだった', 0),
(171, 2, 24, 'だから僕は', 0),
(172, 2, 24, 'だから僕は音楽を辞めた', 0),
(175, 1, 1, '古巴比伦王颁布了汉摩拉比法典，刻在黑色的玄武岩，距今已经三千七百多年。', 9),
(176, 1, 1, '你在橱窗前，凝视碑文的字眼，我却在旁静静欣赏你那张我深爱的脸。', 2),
(177, 1, 1, '祭司神殿征战弓箭是谁的从前，喜欢在人潮中你只属於我的那画面。', 5),
(178, 1, 1, '经过苏美女神身边，我以女神之名许愿，思念像底格里斯河般的漫延。', 3),
(179, 1, 1, '当古文明只剩下难解的语言，传说就成了永垂不朽的诗篇。', 4),
(180, 1, 1, '我给你的爱写在西元前，深埋在美索不达米亚平原。', 2),
(181, 1, 1, '几十个世纪后出土发现，泥板上的字迹依然清晰可见。', 3),
(182, 1, 1, '我给你的爱写在西元前，深埋在美索不达米亚平原。', 2),
(183, 1, 1, '用楔形文字刻下了永远，那已风化千年的誓言，一切又重演。', 2),
(184, 1, 1, '祭司神殿征战弓箭是谁的从前，喜欢在人潮中你只属於我的那画面。', 2),
(185, 1, 1, '经过苏美女神身边，我以女神之名许愿。', 2),
(186, 1, 1, '思念像底格里斯河般的漫延，当古文明只剩下难解的语言。', 2),
(187, 1, 1, '传说就成了永垂不朽的诗篇，我给你的爱写在西元前。', 2),
(188, 1, 1, '深埋在美索不达米亚平原，几十个世纪后出土发现，泥板上的字迹依然清晰可见。', 2),
(189, 1, 1, '我给你的爱写在西元前，深埋在美索不达米亚平原。', 2),
(190, 1, 1, '用楔形文字刻下了永远，那已风化千年的誓言，一切又重演。', 2),
(191, 1, 1, '我感到很疲倦离家乡还是很远，害怕再也不能回到你身边。', 2),
(192, 1, 1, '我给你的爱写在西元前，深埋在美索不达米亚平原。', 2),
(193, 1, 1, '几十个世纪后出土发现，泥板上的字迹依然清晰可见。', 2),
(194, 1, 1, '我给你的爱写在西元前，深埋在美索不达米亚平原。', 2),
(195, 1, 1, '用楔形文字刻下了永远，那已风化千年的誓言。', 2),
(196, 1, 1, '爱在西元前，爱在西元前。', 2),
(197, 3, 33, 'First things first rest in peace Uncle Phil', 2),
(198, 3, 33, 'For real, you the only father that I ever knew', 0),
(199, 3, 33, 'I get my bitch pregnant I\'ma be a better you', 0),
(200, 3, 33, 'Fulfilled, listen even back when we was broke my team ill', 0),
(201, 3, 33, 'Martin Luther King would have been on Dreamville', 1),
(202, 3, 33, 'Talk to a nigga', 0),
(203, 3, 33, 'One time for my LA sisters', 0),
(204, 3, 33, 'One time for my LA hoes', 0),
(205, 3, 33, 'Lame niggas can\'t tell the difference', 0),
(206, 3, 33, 'One time for a nigga who knows', 0),
(207, 3, 33, 'Don\'t save her, she don\'t wanna be saved', 1),
(208, 3, 33, 'No role models and I\'m here right now', 0),
(209, 3, 33, 'No role models to speak of', 0),
(210, 3, 33, 'Searchin\' through my memory, my memory', 0),
(211, 3, 33, 'I couldn\'t find one', 0),
(212, 3, 33, 'Last night I was gettin\' my feet rubbed', 0),
(213, 3, 33, 'By the baddest bitch, not Trina, but I swear to God', 1),
(214, 3, 33, 'This bitch will make you call your girl up and tell her \'Hey, what\'s good?\'', 0),
(215, 3, 33, 'Sorry I\'m never comin\' home I\'ma stay for good', 0),
(216, 3, 33, 'Then hang the phone up, and proceed to lay the wood', 0),
(217, 3, 33, 'I came fast like 9-1-1 in white neighborhoods', 0),
(218, 3, 33, 'Ain\'t got no shame bout it', 0),
(219, 3, 33, 'She think I\'m spoiled and I\'m rich cause I can have any bitch', 0),
(220, 3, 33, 'I got defensive and said \'Nah, I was the same without it\'', 0),
(221, 3, 33, 'But then I thought back, back to a better me', 0),
(222, 3, 33, 'Before I was a B-list celebrity', 0),
(223, 3, 33, 'Before I started callin\' bitches bitches so heavily', 0),
(224, 3, 33, 'Back when you could get a platinum plaque without no melody', 0),
(225, 3, 33, 'You wasn\'t sweatin\' me', 0),
(226, 3, 33, 'One time for my LA sisters', 0),
(227, 3, 33, 'One time for my LA hoes', 0),
(228, 3, 33, 'Lame niggas can\'t tell the difference', 0),
(229, 3, 33, 'One time for a nigga who knows', 0),
(230, 3, 33, 'Don\'t save her, she don\'t wanna be saved', 0),
(231, 3, 33, 'I want a real love, dark skinned and Aunt Viv love', 2),
(232, 3, 33, 'That Jada and that Will love', 15),
(233, 3, 33, 'That leave a toothbrush at your crib love', 0),
(234, 3, 33, 'And you ain\'t gotta wonder whether that\'s your kid love', 0),
(235, 3, 33, 'Nigga I don\'t want no bitch from reality shows', 0),
(236, 3, 33, 'Out of touch with reality hoes', 0),
(237, 3, 33, 'Out in Hollywood bringin\' back 5 or 6 hoes', 0),
(238, 3, 33, 'Fuck em\' then we kick em\' to the door', 0),
(239, 3, 33, 'Nigga you know how it go', 0),
(240, 3, 33, 'She deserved that, she a bird, it\'s a bird trap', 0),
(241, 3, 33, 'You think if I didn\'t rap she would flirt back', 0),
(242, 3, 33, 'Takin\' off her skirt, let her wear my shirt before she leave', 0),
(243, 3, 33, 'I\'ma need my shirt back', 0),
(244, 3, 33, 'Nigga you know how it go', 0),
(245, 3, 33, 'One time for my LA sisters', 0),
(246, 3, 33, 'One time for my LA hoes', 0),
(247, 3, 33, 'Lame niggas can\'t tell the difference', 0),
(248, 3, 33, 'One time for a nigga who knows', 0),
(249, 3, 33, 'Don\'t save her, she don\'t wanna be saved', 0),
(250, 3, 33, 'Fool me one time shame on you', 0),
(251, 3, 33, 'Fool me twice, can\'t put the blame on you', 0),
(252, 3, 33, 'Fool me three times, fuck the peace signs', 0),
(253, 3, 33, 'Load the chopper, let it rain on you', 0),
(254, 3, 33, 'Fool me one time shame on you', 0),
(255, 3, 33, 'Fool me twice, can\'t put the blame on you', 0),
(256, 3, 33, 'Fool me three times, fuck the peace signs', 0),
(257, 3, 33, 'Load the chopper, let it rain on you', 0),
(258, 3, 33, 'My only regret was too young for Lisa Bonet', 0),
(259, 3, 33, 'My only regret was too young for Nia Long', 0),
(260, 3, 33, 'Now all I\'m left with is hoes from reality shows', 0),
(261, 3, 33, 'Hand her a script the bitch probably couldn\'t read along', 0),
(262, 3, 33, 'My only regret was too young for Sade Adu', 0),
(263, 3, 33, 'My only regret could never take Aaliyah home', 0),
(264, 3, 33, 'Now all I\'m left with is hoes up in Greystone', 0),
(265, 3, 33, 'With the stale face cause they know it\'s they song', 0),
(266, 3, 33, 'She shallow but the pussy deep (she shallow, she shallow)', 0),
(267, 3, 33, 'Don\'t save her, she don\'t wanna be saved', 0);

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

-- --------------------------------------------------------

--
-- 表的结构 `users`
--

CREATE TABLE `users` (
  `id` int(100) UNSIGNED NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `create_datetime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 转存表中的数据 `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `create_datetime`) VALUES
(1, 'Rui', '2948931691@qq.com', '8b728572fbbeab2e9d1440a64b43b9f7', '2022-04-24 01:51:14'),
(12, 'another', 'wuk9@rpi.edu', '6d1ce7aa0a1d988dc96a2abcd187b45a', '2022-04-24 23:03:29'),
(13, 'whdwoid', 'wuk9@rpi.edu', '8b728572fbbeab2e9d1440a64b43b9f7', '2022-04-25 18:14:51');

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
-- 表的索引 `comments`
--
ALTER TABLE `comments`
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
-- 表的索引 `users`
--
ALTER TABLE `users`
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
-- 使用表AUTO_INCREMENT `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(100) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- 使用表AUTO_INCREMENT `lyrics`
--
ALTER TABLE `lyrics`
  MODIFY `id` int(100) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=268;

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

--
-- 使用表AUTO_INCREMENT `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
