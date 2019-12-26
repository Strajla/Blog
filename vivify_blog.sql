-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 26, 2019 at 07:31 PM
-- Server version: 5.7.24
-- PHP Version: 7.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vivify_blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `Id` int(11) NOT NULL,
  `Author` varchar(20) COLLATE utf8_bin NOT NULL,
  `Text` text COLLATE utf8_bin NOT NULL,
  `Post_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`Id`, `Author`, `Text`, `Post_id`) VALUES
(1, 'Bill Gates', ' I ve paid over 10 billion dollars in taxes. I ve paid more than anyone in taxes, but I m glad to  if Id had to pay $20 billion, is fine. But when you say I should pay $100 billion, then I m starting to do a little math about what I have left over. I m just kidding.\r\nBill Gates', 1),
(2, 'Janis Joplin', 'Now eldest new tastes plenty mother called misery get. Longer excuse for county nor except met its things. Narrow enough sex moment desire are. Hold who what come that seen read age its. Contained or estimable earnestly so perceived. Imprudence he in sufficient cultivated. Delighted promotion improving acuteness an newspaper offending he. Misery in am secure theirs giving an. Design on longer thrown oppose am. ', 2),
(3, 'Jason Statham', 'An so vulgar to on points wanted. Not rapturous resolving continued household northward gay. He it otherwise supported instantly. Unfeeling agreeable suffering it on smallness newspaper be. So come must time no as. Do on unpleasing possession as of unreserved. Yet joy exquisite put sometimes enjoyment perpetual now. Behind lovers eat having length horses vanity say had its. ', 3),
(4, 'Dead Guy101', 'Needed feebly dining oh talked wisdom oppose at. Applauded use attempted strangers now are middleton concluded had. It is tried ﻿no added purse shall no on truth. Pleased anxious or as in by viewing forbade minutes prevent. Too leave had those get being led weeks blind. Had men rose from down lady able. Its son him ferrars proceed six parlors. Her say projection age announcing decisively men. Few gay sir those green men timed downs widow chief. Prevailed remainder may propriety can and. ', 3),
(5, 'Will Smith', 'Attended no do thoughts me on dissuade scarcely. Own are pretty spring suffer old denote his. By proposal speedily mr striking am. But attention sex questions applauded how happiness. To travelling occasional at oh sympathize prosperous. His merit end means widow songs linen known. Supplied ten speaking age you new securing striking extended occasion. Sang put paid away joy into six her. ', 1),
(6, 'HornyPapaya2033', 'I dont understand what is problem in here...', 4),
(7, 'Greta Thunberg', 'Shame on you!', 7);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `Title` text COLLATE utf8_bin NOT NULL,
  `Body` text COLLATE utf8_bin NOT NULL,
  `User_Id` int(11) NOT NULL,
  `Created_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `Title`, `Body`, `User_Id`, `Created_at`) VALUES
(1, 'Dad leaves daughter hilarious instructions to feed fox while he\'s on holiday', 'A dad who has been feeding a wild fox extravagant meals when it visits his garden each night left his daughter a brilliant to-do list while he was away.\r\n\r\nAmy MacMillan was given instructions while she was left alone in the family home, but was surprised to see that her responsibilities included fixing dinner for an unexpected guest.\r\n\r\nThe well-fed fox has been visiting the family home for several months, where Amy\'s dad treats the furry friend two courses in the front garden, as reported by the Daily Record .\r\n\r\nTo ensure the fox wouldn\'t be left disappointed, he instructed his daughter to continue the evening feeds, which involves serving dinner at 6pm, before putting out a supper at 10pm.\r\n\r\nThe note read: \"Foxes dinner 6pm. 3 bigger bits of chicken or 4 chicken drumsticks.\r\n\r\n\"Supper 10pm. 4 dog stick chews. Handful of biscuits.\"', 1, '2019-12-24'),
(2, 'Blind mystic Baba Vanga\'s predictions for 2020 - after foreseeing 9/11 and Brexit', 'A blind mystic who is said to have predicted 9/11 and Brexit has foretold trouble and darkness for the year ahead.\r\n\r\nBulgarian born Baba Vanga has been dubbed the \'Nostradamus of the Balkans\' for her predictions.\r\n\r\nDespite dying 23 years ago, those with a keen interest in mysticism continue to revere Baba\'s work, which some claim looks forward to 5079 - the year she believed the universe will end.\r\n\r\nRight before her death at the age of 85 she made a series of predictions for the year 2020.\r\n\r\nThe most startling revelation is that Vladamir Putin and Donald Trump\'s lives are in danger.', 2, '2019-12-23'),
(3, 'Cute cat divides internet as people can\'t decide if she looks like Dobby or Yoda', 'If you love animals that look a little unique, then you\'re going to fall head over heels for this stray cat that\'s on the hunt for a home.\r\n\r\nKnown only as Yoda cat, the cute kitty has gone viral on social media after a woman shared several sweet photos of her.\r\n\r\nVeterinary Assistant, Jana Aviles from North Carolina met the cat at work and instantly became smitten with her and there\'s a good reason why.\r\n\r\nInstead of being on top of her head, the cat\'s ears seem to stick out to the side, which is why she\'s become known as Yoda cat.\r\n\r\nHowever some people couldn\'t help but notice that she also looks a little like another pop culture character - Dobby the house elf from Harry Potter.', 3, '2019-10-16'),
(4, 'Woman takes dog to the groomer - but doesn\'t recognise him when he comes out', 'A dog owner was left unable to recognise her own pet after a groomer gave him a very drastic hair cut.\r\n\r\nCarley Coca from Florida took her seven-year-old Samoyed, named Nanuk, to her local groomer for a \"trim\" but there was a mix-up in communication along the way.\r\n\r\nWhen the 28-year-old arrived to pick up her fluffy white dog she was surprised to discover he was completely bald - and would have to wear sun cream until his fur grew back.\r\n\r\nNanuk ended up looking more like a British Bull Terrier than a Samoyed - but luckily Carley saw the funny side of the situation.', 4, '2019-12-24'),
(5, 'Mum\'s incredible Grinchmas tree is so realistic it\'s freaking people out', 'A mum who has included a life-sized Grinch as part of her Christmas tree decorations has left people both impressed and terrified with the incredible creation.\r\n\r\nThe competition for the best decorated tree is over for another year after the \'Grinchmas\' tree was posted to Facebook , leading to almost 6,000 comments by others blown away by the \'fantastic\' DIY job.\r\n\r\nThe perfectly decorated tree includes red, green and white baubles, striped candy canes, a gingerbread man and lights, with fake snow around the base to really give it a festive feel.\r\n\r\nInstead of finding a star at the top, the mum created a huge Grinch with his arms and legs wrapped around the tree, and the Dr. Seuss character\'s iconic green face peering over the top.', 5, '2019-12-24'),
(6, 'Tupac - Thugz Mansion- Lyrics', 'Shit, tired of gettin\' shot at\r\nTired of gettin\' chased by the police and arrested\r\nniggas need a spot where we can kick it\r\nA spot where we belong, that\'s just for us\r\nniggas ain\'t gotta get all dressed up and be Hollywood\r\nY\'knahmean? Where do niggas go when we die?\r\nAin\'t no heaven for a thug nigga\r\nThat\'s why we go to thug mansion\r\nThat\'s the only place where thugs get in free and you gotta be a G\r\nAt thug mansion\r\nA place to spend my quiet nights, time to unwind\r\nSo much pressure in this life of mine,\r\nI cry at times I once contemplated suicide,\r\nand woulda\' tried but when I held that 9, all I could see was my momma\'s eyes\r\nNo one knows my struggle, they only see the trouble\r\nNot knowin\' it\'s hard to carry on when no one loves you\r\nPicture me inside the misery of poverty\r\nNo man alive has ever witnessed struggles I survived\r\nPrayin\' hard for better days, promise to hold on\r\nMe and my dawgs ain\'t have a choice but to roll on\r\nWe found a family spot to kick it\r\nWhere we can drink liquor store and no one bickers over trick shit\r\nA spot where we can smoke in peace, and even though we G\'s\r\nWe still visualize places, that we can roll in peace\r\nAnd in my mind\'s eye I see this place, the players go in fast\r\nI got a spot for us all, so we can ball, at thug\'s mansion\r\nAin\'t no place I\'d rather be\r\nChil\'ren, dead homies and family\r\nSky high, iced out paradise, in the sky\r\nAin\'t no place I\'d rather be\r\nOnly place that\'s right for me\r\nChromed out mansion in paradise, in the sky\r\nWill I survive all the fights and the darkness?\r\nTrouble sparks, they tell me home is where the heart is, dear departed\r\nI shed tattooed tears and couldn\'t sleep good\r\nFor multiple years, witness peers catch gunshots\r\nNobody cares, seen the politicians ban us\r\nThey\'d rather see us locked in chains, please explain\r\nWhy they can\'t stand us, is there a way for me to change?\r\nOr am I just a victim of things I did to maintain?\r\nI need a place to rest my head\r\nWith the little bit of homeboys that remains, \'cause all the rest dead\r\nIs there a spot for us to roll, if you find it\r\nI\'ll be right behind ya, show me and I\'ll go\r\nHow can I be peaceful? I\'m comin\' from the bottom\r\nWatch my daddy scream peace while the other man shot him\r\nI need a house that\'s full of love when I need to escape\r\nThe deadly places slingin\' drugs, in thug\'s mansion\r\nAin\'t no place I\'d rather be\r\nChil\'ren, dead homies and family\r\nSky high, iced out paradise, in the sky\r\nAin\'t no place I\'d rather be\r\nOnly place that\'s right for me\r\nChromed out mansion in paradise, in the sky\r\nDear momma don\'t cry, your baby boy\'s doin\' good\r\nTell the homies I\'m in heaven and they ain\'t got hoods\r\nSeen a show with Marvin Gaye last night,\r\nit had me shook drippin\' peppermint Schnapps, with Jackie Wilson, and Sam Cooke\r\nThen some lady named Billie Holiday sang sittin\' there kickin\' it with Malcolm, \'til the day came\r\nLittle LaTasha sho\' grown tell the lady in the liquor that she\'s forgiven, so come home\r\nMaybe in time you\'ll understand only God can save us\r\nWhen Miles Davis cuttin\' lose with the band\r\nJust think of all the people that you knew in the past\r\nThat passed on, they in heaven, found peace at last\r\nPicture a place that they exist, together\r\nThere has to be a place better than this, in heaven\r\nSo right before I sleep, dear God, what I\'m askin\'\r\nRemember this face, save me a place, in thug\'s mansion\r\nAin\'t no place I\'d rather be\r\nChil\'ren, dead homies and family\r\nSky high, iced out paradise, in the sky\r\nAin\'t no place I\'d rather be\r\nOnly place that\'s right for me\r\nChromed out mansion in paradise, in the sky\r\nAin\'t no place I\'d rather be\r\nChil\'ren, dead homies and family\r\nSky high, iced out paradise, in the sky\r\nAin\'t no place I\'d rather be\r\nOnly place that\'s right for me\r\nChromed out mansion in paradise, in the sky', 6, '2019-12-24'),
(7, 'Big problems according to Greta Thunberg', 'A Fox News spokesperson provided the following statement to The Daily Beast on Knowles remarks: The comment made by Michael Knowles who was a guest on The Story tonight was disgracefulâ€”we apologize to Greta Thunberg and to our viewers.\r\n\r\nFox News also told The Hollywood Reporterâ€™s Jeremy Barr that it has no plans to book Knowles again as a guest.\r\n\r\nThroughout the day on Monday, conservatives on television and social media mocked and belittled the young climate activist.\r\n\r\nRELATED IN ARTS AND CULTURE', 12, '2019-12-26');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `Id` int(11) NOT NULL,
  `First_Name` text COLLATE utf8_bin NOT NULL,
  `Last_Name` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`Id`, `First_Name`, `Last_Name`) VALUES
(1, 'Janis', 'Joplin'),
(2, 'Tupac', 'Amaru Shakur'),
(3, 'Avan', 'Guardian'),
(4, 'Freddie ', 'Mercury'),
(5, 'Rami', 'Malek'),
(6, 'Jason', 'Statham'),
(11, 'Elton', 'Jhon'),
(12, 'In', 'Wiesel');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `User_Id` (`User_Id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`User_Id`) REFERENCES `users` (`Id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
